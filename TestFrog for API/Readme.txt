# Pre-requisite:

1. Maven - Apache Maven 3.5.0
2. JDK - jdk 1.8.0_151
3. TestNG - org.testng.eclipse.maven_6.12.0.201709050550

# Setup:

1. Download and extract testforg project (driver, bin(test dependency), test-configuration.xlsx, Testfrog_Install.bat)
2. Run Testfrog_Install.bat

# Test project configuration:

1. Create a Maven project

2. Add testfrog dependency(in pom.xml file) in the test project and perform "mvn install".

		<dependency>
			<groupId>com.infrrd</groupId>
			<artifactId>testfrogforapi</artifactId>
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


============================================================