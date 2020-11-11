# How-to get started with BDD test framework

**IMPORTANT** Before you start watch this [How to Design Tests in OutSystems](https://www.outsystems.com/events/tech-talks/designing-application-testing/) in depth tech talk.

## Setup the BDD framework

1. You **must read** the [BDD framework documentation](https://www.outsystems.com/forge/Component_Documentation.aspx?ProjectId=1201&ProjectName=bddframework) and **do the exercises** in your personal environment.
2. Install the [BDD framework](https://www.outsystems.com/forge/component-overview/1201/bddframework) from the Forge
3. Install the [BDD framework reporting tool](#) TBD new forge component
    - Set the BDD framework rest api effective url to your environment base url e.g. https://synobsys.outsystemscloud.com/
    - Set the Timer_ExecuteNewRoundOfTestSuites schedule and activate the timer


## Writing test scenarios
Refer to the OutSystems [Top-Notch Acceptance Criteria](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Test_Automation_in_the_Delivery_Lifecycle#Top-Notch_Acceptance_Criteria) section for guidance on writing acceptance criteria.

We create thest scenaios base on the acceptance criteria written in the [Given When Then](https://www.agilealliance.org/glossary/gwt) format.

## Creating a new test suite

In LifeTime create a new application using the bddframework template.
1. Open your LifeTime environment users module <yourlifetimeserver>/lifetime/Users_List.aspx
2. Open the Teams tab
3. Open the Team where you want to create the application for ![Team](images\TeamCreateApplication.png)
4. Create a new application ![Create application screen](images\LifeTimeCreateApplication.png) parameters:
    - environment: Development
    - What are you building : BDDFramework
    - Give the app a name following the [naming convention](OutSystemsNamingConventions.md)
    - Fill the description
    - Upload an icon. (We recommend to use the same icon as the application with a test watermark added)

5. Open the new application in ServiceStudio and create a new BDDFramework module
6. In the MainTestFlow add a new BDDFramework Scenario screen and name it TestSuite. Please note that you *must* name the screen TestSuite for the reporting tool to work.
![Create TestSuite Screen](images\CreateTestSuiteScreen.png)
7. This action also adds a webblock sample_test we will move that to a separate ui flow
8. Create a new ui flow an name it TestScenarios
9. Move the sample_test webblock to the TestScenarios flow
10.  


## Building a test scenarios

## Adding test suites to the BDD framework reporting tool
To add a test suite to the BDD framework reporting tool you must add your module name to the ModuleListCSV site property.  

# Example

_As a Store Manager I should be able to manage my
products and categories_

**Scenario:** Search shop products

**Given** that my shop has multiple wine products **and** one of those is an Altos de Luzon (Red)

**When** I search for the keywords "altos de"

**Then** I should get 1 single result containing Altos de Luzon (Red)


_As a Store Manager I should be able to manage my products and
categories_

**Scenario Outline:** Search shop products

**Given** that my shop has multiple wine products

**When** I search for the keywords “<Keywords>”

**Then** I should get <Number of Results>

Examples:

| Keywords | Number of Results |
| -------- | -- |
| Altos de | 1 |
| Altos | 3 |
| Hormigas | 2 |

## Reference
- [Given When Then](https://www.agilealliance.org/glossary/gwt)
- [Test Automation in the Delivery Lifecycle](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Test_Automation_in_the_Delivery_Lifecycle)
