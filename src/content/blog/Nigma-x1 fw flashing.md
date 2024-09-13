---
title: Firmware Information on DMA cards
description: Firmware
pubDate: Sept 11 2024
heroImage: /ap_heatmap_irrelevant.png
tags: ['DMA','PCI','Config Space','bin','Xlinx']
categories: ['Hardware']
---

+ https://github.com/ekknod/drvscan
+ https://s3.lone-eft.com/public/lone-downloads/lone-dma-tools.zip
+ https://enigma-x1.com/applications/core/interface/file/attachment.php?id=111&key=9e4461516b05cd514e78301aeee6ca8b


**Testing your DMA board from enigma-x1.com**

- Turn off your Main-PC  
- Plug-in your board into your Main-PC  
- Connect the USB-C cable with the Data Port on Enigma-x1 with your 2nd PC  
- Start your Main-PC and boot into BIOS  
    - Make sure the red/orange PWR-LED and the green/blue LED is on  
   
- Disable/Adjust the following Settings:  
    Disable Virtualization (INTEL)  
    Disable VT-d

    Disable Virtualization (AMD)  
    Disable IQMMU (AMD CBS > NBIO Common Options > NB Configuration > IOMMU)

    Disable NX-Bit (Only if available, CPU Settings Secure Virtual Machine)

    Disable Secure Boot (If the option is greyed out -> clear all keys)

    If needed set PCI Slot of Enigma-x1 from Auto to Gen1 (Advanced > PCI Settings)

- Save your BIOS settings and boot your Main-PC into Windows

- Boot your 2nd PC into Windows  
    - You should see "FTDI FT601 USB 3.0 Bridge Device" at Device Manager -> Universal Serial Bus controllers of 2nd PC

- To test your Enigma-x1 just run the test.bat and/or speedtest in the Enigma-x1 folder  
    - The output for test.bat should be DEVICE: FPGA: Enigma X1 PCIe gen2 x1 [250,10,500] [v4.10,0300] [ASYNC,NORM] followed by numbers and letters.  
    - To run the Speedtest use  \Enigma-x1\dma\TestFiles\dump.bat. The output for speedtest should be "Dumping Memory" followed by a speedtest

- The testing was completed successfully.