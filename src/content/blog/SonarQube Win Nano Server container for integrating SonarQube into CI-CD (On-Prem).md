---
title: SonarQube Win Nano Server container for integrating SonarQube into CI-CD (On-Prem
description: Exporting Intune Configuration from a dev tenant and deploying agreed upon standards in the client tenant. Also allows a manual backup of Intune env.
pubDate: May 08 2024
heroImage: /blog-placeholder-3.jpg
---
This tutorial covers creating a windows server nano container that is setup with SonarQube. It covers the configuration of the docker container for the windows nano server. Downloading the SonarQube installer, configuration of environment variables and even licensing it to an extent. Below is the table of contents:

0. **Prerequisites**
1. Creating a Dockerfile
2. Setting up configuration files
3. Building the Docker image
4. Running the container
5. Configuring for CI/CD use

----------------------------

**Prerequisites**

+ Windows machine with Docker Desktop installed
+ Access to Windows Server Nano container image
+ SonarQube Data Center license (or community - this part is only relevant to your context)
+ Basic knowledge of Docker and Windows Server administration

Here is probably what I'd do from an elevated pwsh (*assuming no docker, assuming using community edition, DC license does differ heavily*).

You do not really need to download the SQ binary on your host given that it is containerized windows nano server, this is just for clarity. I am sorry mom but this is a one-liner.

```powershell
try { docker pull mcr.microsoft.com/windows/nanoserver/insider } catch { if ("$PSItem.ExceptionDetails" -like "is not recognized as a") { winget install -e --id Docker.DockerDesktop } else {[console]::writeline('Unknown exception not caught when either installing docker or pulling the nanoserver image, please install/pull manually.')}} ; $uri="https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.6.0.92116.zip"; set-executionpolicy bypass -scope process; cd ; iwr -Url $uri -OutPath (pwd).path ; Expand-Archive ".\sonarqube-10.6.0.92116.zip" ; cd "sonarqube-10.6.0.92116"
# License in text file or in email
```

------------------------------------------------------------------------
## Steps

### 1. Create a Dockerfile

First, create a Dockerfile to build your custom Windows Server Nano container with SonarQube:

```DOCKERFILE
# Use Windows Server Nano as the base image FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019 

# Set working directory WORKDIR C:\sonarqube 

# Download and install Java17 (required for SonarQube) 
RUN powershell -Command \     
	$ProgressPreference = 'SilentlyContinue'; \
	Invoke-WebRequest -Uri https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip -OutFile jdk.zip; \
	Expand-Archive jdk.zip -DestinationPath C:\Java; \
	Remove-Item jdk.zip; 

# Set Java environment variables 
ENV JAVA_HOME C:\Java\jdk-11.0.2 
ENV PATH ${PATH};${JAVA_HOME}\bin 

# Boilerplate for anything windows based (even nano)
RUN powershell -Command \
	#winget install the .NET frameworks and vcredistAIO;
	Winget install vcredistaio;

# Download and install SonarQube Data Center

RUN powershell -Command \
	$ProgressPreference = 'SilentlyContinue';\
	Invoke-WebRequest -Uri "https://binaries.sonarsource.com/CommercialDistribution/sonarqube-datacenter/sonarqube-datacenter-9.9.0.65466.zip" -OutFile "sonarqube.zip"; \
	Expand-Archive "sonarqube-datacenter-9.9.0.65466.zip" -DestinationPath ~ ; \
	Remove-Item sonarqube.zip;
	
# Copy configuration files (you'll need to create these) 
COPY sonar.properties ~\sonar.properties 
COPY wrapper.conf 
~ \conf\wrapper.conf 

# Expose the SonarQube port 
EXPOSE 9000 

# Set the entry point to start SonarQube 
ENTRYPOINT ["~\\bin\\windows-x86-64\\StartSonar.bat"]
```
### 2. Create Configuration Files

Create `sonar.properties` and `wrapper.conf` files with your SonarQube Data Center configuration. Example Configurations:

**sonar.properties:**
`sonar.jdbc.username=sonar sonar.jdbc.password=sonar123 sonar.jdbc.url=jdbc:postgresql://db:5432/sonar sonar.web.host=0.0.0.0 sonar.web.port=9000 sonar.search.javaAdditionalOpts=-Dnode.store.allow_mmap=false sonar.cluster.enabled=true sonar.cluster.node.type=application sonar.cluster.node.host=<your-node-ip> sonar.cluster.node.port=9003 sonar.cluster.hosts=<node1-ip>,<node2-ip>,<node3-ip>`

**wrapper.conf:**
`wrapper.java.command=${JAVA_HOME}/bin/java wrapper.java.additional.1=-Xmx2G wrapper.java.additional.2=-Xms512m wrapper.java.additional.3=-XX:+HeapDumpOnOutOfMemoryError`



### 3. Build the Docker Image

Run the following command in the directory containing your Dockerfile and configuration files:

```powershell
docker build -t sonarqube-datacenter-nano .
```

### 4. Run the Container

Start your SonarQube Data Center container:

`docker run -d --name sonarqube-datacenter -p 9000:9000 sonarqube-datacenter-nano`

### 5. Configure for CI/CD

To use this SonarQube Data Center container in your CI/CD pipeline:

1. Ensure your CI/CD runner can access the SonarQube container.
2. Install the SonarScanner on your CI/CD runner.
3. Configure your pipeline to run SonarScanner and point it to your SonarQube Data Center instance.

Example for a Jenkins pipeline:

groovy
```groovy
pipeline {     
	agent any    
	stages {        
		stage('SonarQube Analysis') {            
			steps {                
				script {                    
					def scannerHome = tool 'SonarScanner' withSonarQubeEnv('SonarQube Server') {
		sh "${scannerHome}/bin/sonar-scanner \                            
		-Dsonar.projectKey=my-project \                            
		-Dsonar.sources=. \                            
		-Dsonar.host.url="http://your-sonarqube-datacenter:9000" \
		-Dsonar.login=your-token"
					}                
				}            
			}        
		}    
	} 
}
```


Remember to replace placeholders like `<your-node-ip>`, `<node1-ip>`, etc., with your actual values.

## Conclusion

You now have a Windows Server Nano container running SonarQube Data Center edition, ready for use in your CI/CD pipeline. Remember to properly secure your container and SonarQube instance, and to regularly update both the base image and SonarQube to the latest versions.