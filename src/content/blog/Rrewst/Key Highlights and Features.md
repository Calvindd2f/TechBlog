# Key Highlights and Features

**Actions:** Discover and utilize various actions for designing and automating workflows.
**Tasks:** Learn how to place and configure actions on the canvas for personalized automation.
**Form Triggers:** Leverage triggers to associate multiple forms with a workflow.
**Inputs and Outputs:** Manage workflow actions, inputs, outputs, and transitions efficiently.
**Types of Workflows:** Understand the diverse workflow types, including standard, sub-workflows, and option generators.
**Workflow Generated** Options: Enhance form dynamics through workflow-generated options.
**Workflow Listeners:** Use listeners to add additional functionalities for workflow executions.
**Reviewing Results:** Navigate through workflow results for detailed insights.

**Simplicity:** Create workflows that are user-friendly and easy to understand.
**Modularity:** Break down workflows into smaller, reusable components.
**Maintainability:** Build workflows that are straightforward to update and maintain.

## Automation Build Standards

When building workflows in Rewst, consider the following standards:

**Consistency:** Standardized practices lead to a consistent experience across different workflows.
**Quality Assurance:** Adhering to standards makes quality checks more efficient.
**Reusability:** Modular design enables the reuse of components, speeding up development.
**Maintainability:** Following standards ensures easy maintenance.
**Scalability:** Design your workflows to handle increased complexity as your needs grow.
**Efficiency:** Avoid redundancy by following a standardized approach.
**Knowledge Transfer:** Standards foster collaboration and knowledge sharing within your team.
**Flexibility:** Rewst's standards allow easy integration of new features without major rework.

**Utilize Templates:** Start with pre-defined templates to speed up development and ensure adherence to best practices.
**Testing and Iteration:** Develop and test your workflows in a sandbox or development environment. Make necessary amendments, test, and sync to your live environment.

## Naming Conventions

Adhering to a consistent naming convention helps in understanding the purpose and function of each automation:

**Example:** List Disabled User Accounts

### Input Configuration

Name:
label:
type:
default value:
description:
required:
multiline:

### Setting Your Output Variables

In Rewst, every automation can function as either an executing workflow or a module. For example, a Create New User workflow might primarily serve as a Main workflow, but some people might want to add a wrapper to enable bulk user addition, transforming it into a Function of another workflow.

To maintain consistency across various implementations, it's useful to ensure that every automation have one or more output variables. By doing so, you can achieve uniformity in your builds, regardless of whether the automation is used as a main workflow or a module.

**Separation:** Separate complex data alias creation or modification into Set Variable tasks rather than creating them on the actual task doing the API call.

**Debugging Consideration:** Separating the data aliases makes debugging easier, allowing you to test your code with real data.

### Working with Transitions

Transitions are essential for controlling the flow of your automations. Here are some tips:
**SUCCEEDED, FAILED Conditions:** Use conditions like {{ SUCCEEDED and CTX.list_of_things|d }} to control the flow based on task success or failure.

**Transition Order:** Transitions are evaluated from left to right, so order them carefully.
**Follow All/Follow First:**

**Follow All:** The task will follow every path that meets the criteria.

**Follow First:** The task will follow the first criteria that it matches and then stop. Use this when you expect only one condition to be met or when, as soon as a condition is met, you do not want the process to use other workflow branches.

**Initial Exploration:** If you're unsure about the fields you need, consider running the query without any filtering initially. This approach lets you explore the available fields and understand what information is at your disposal.

**Selecting Specific Fields:** Once you've identified the necessary fields, be sure to limit the response to include only those. For instance, if you're listing users in Microsoft Graph and only require the UPN (User Principal Name) and User's ID, you should select the userPrincipalName and id fields.

`{{ ORG.VARIABLES.<variable_name> }}`
