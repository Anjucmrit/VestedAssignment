Project Description:
The project is based on Robot Framework to automate the Vested Web automation text scenario.

The following Test Scenario is covered:
    1. Open web page and signup a new user. 
    2. Sign up with a new account with the OTP verification(To-Do)
    3. Search stock using the json file
    4. Cross verify the name of the stock in the json
    5. Create a pass/fail report of the project.


Prerequisite:
    1. Install Robot Framework
    2. Install Python3, pyCharm, Pip3, SeleniumLibrary



Running the Project:
Go to the home directory of the project
```
cd VestedTask
```
Run the below command in the terminal

```
robot -d Reports TestCases/VestedAssignment.robot
```

The reports will be generated under:
The reports can be generated under Project Folder  ./Reports/report.html 



Future Improvements:
```
    1. Modularization of the code.
    2. Running Multiple browsers with parallel execution using pabot
    3. Running the test in Selenium Grid
    4. CI/CD integration with Jenkins.
```


