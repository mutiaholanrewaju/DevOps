## Jenkins CI/CD for Todo Application

This project demonstrates how to set up a Continuous Integration/Continuous Deployment (CI/CD) pipeline using Jenkins to build and automate the deployment of a simple JavaScript-based To-do application hosted on GitHub.

### Jenkins Setup
Jenkins was installed locally and accessed via port `8080`. A **Freestyle Project** was created to automate the build process of the application. The freestyle configuration allows for flexibility in executing different types of tasks, such as pulling code from a GitHub repository and running build commands.

### Project Configuration
The freestyle project was configured to pull the To-do application code from a GitHub repository. Below are the screenshots that show the job configuration steps:

![Job Configuration - Step 1](../jenkins-assignment/images/job%20configuration1.png)

![Job Configuration - Step 2](../jenkins-assignment/images/job%20configuration2.png)

### Build Process
After configuring the job, Jenkins successfully built the project, as indicated in the screenshot below:

![Successful Build](../jenkins-assignment/images/successful%20build.png)

You can view the full console output of the [successful build here](../jenkins-assignment/build%20console%20output.txt).










