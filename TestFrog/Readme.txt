# Pre-requisite:

1. Maven - Apache Maven 3.5.0
2. JDK - jdk 1.8.0_151
3. TestNG - org.testng.eclipse.maven_6.12.0.201709050550

## Java setup:

1. Install JDK 1.8.
2. Add the installation loaction of jdk to JAVA_HOME environment variable. 

## Maven setup:

1. Download Maven binay to your systema nd unzip the folder.
2. Add the location to bin inside the extracted folder to your Path environment variable.

Test:

1. On command prompt execute the command: "mvn -v"

Expected Result: Result should look like this :-

Apache Maven 3.5.0 (ff8f5e7444045639af65f6095c62210b5713f426; 2017-04-04T01:09:06+05:30)
Maven home: C:\Users\E6430\Desktop\Maven\apache-maven-3.5.0\bin\..
Java version: 1.8.0_151, vendor: Oracle Corporation
Java home: C:\Program Files\Java\jdk1.8.0_151\jre
Default locale: en_US, platform encoding: Cp1252
OS name: "windows 10", version: "10.0", arch: "amd64", family: "windows"

# Setup:

1. Download and extract testforg project (driver, bin(test dependency), test-configuration.xlsx, Testfrog_Install.bat)
2. Run Testfrog_Install.bat

# Test project configuration:

1. Create a Maven project

2. Add testfrog dependency(in pom.xml file) in the test project and perform "mvn install".

		<dependency>
			<groupId>com.infrrd</groupId>
			<artifactId>testfrog</artifactId>
			<version>0.0.1-SNAPSHOT</version>
		</dependency>
		
3. Add main function inside test project and use this method to run test.

	public static void main(String[] args){
		TestFrog testFrog = new TestFrog(args);
		testFrog.run();
	}

4. Extend the following parent classes into test project:
	
	a. BaseTest for Test class.
	b. BasePageObjectRepository for Page Object Repository class.
	c. BasePageLibrary<BasePageObjectRepository> for Page Library class.

5. Use the following keywords to initialize and teardown drivers:

	a. Initialize driver: initializeDriver()
	b. Go to URL: gotoTestURL()
	c. Kill driver: killdriver()

6. Configure test-configuration.xlsx

============================================================

Excel(test-configuration.xlsx) explaination:

keyword explaination
f = test-configuration.xlsx
b = browser
r = run
i = included
e = excluded

Environment sheet Explanation:

TestSuite : Name of current Test Suite
Browser : Browser name on which test Cases will be executed
Test URL : Url Link for test case execution
Loader path : Xpath of loader animation webelement
Wait duration : wait time for test case execution
Run : (All, Selected, Pass, Fail, Skip)- Filter and Run test cases according to selected options
Include : Testcases inside include option will only executed(according to group specified)
Exclude : All the test cases will execute except Testcases inside exclude option(according to group specified)

Testcase Sheet explanation:

Testcase description : Description of testcase
Testcase Classpath : Path of testcase in our local system
Method name : Name of method present in respective Testcases
Group : (Smoke, sanity) Testcases are grouped according to execution status
Run : Y - Execute , N - Skip
Status : (Pass , Fail) Execution Result status
Screenshot : Screenshots of Test Results

============================================================