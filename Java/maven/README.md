# <p align="center">Setting Up Maven Project Directory Structure</p>
---

## Create maven project from scratch 
To set up the basic directory structure for a Maven project, follow these steps

### 1. Create the main source directory structure
```
mkdir -p src/main/java,src/test/java,src/main/resources,src/test/resources
```
### 2. Create the Maven-specific directory structure
```
mkdir -p src/main/resources/META-INF
```

> [!TIP]
> Use mvm archetype:generate for creating maven project from terminal
> ```
> mvn archetype:generate "-DgroupId=com.academy" "-DartifactId=JMAcademy" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DarchetypeVersion=1.4" "-DinteractiveMode=false"
> ```

### 3. Create a `pom.xml` file in the root directory of your project
The standard Maven directory structure will now be set up with:
* `src/main/java` - For your main application source code
* `src/test/java` - For your test source code
* `src/main/resources` - For any resource files needed by your application
* `src/test/resources` - For test-specific resource files
* `src/main/resources/META-INF` - For Maven-specific metadata files
You can now proceed to initialize your Maven project by creating the `pom.xml` file

#### Correct Folder Structure
There are two main things that are important here:
* your project has a main folder and a test in the src folder
* Inside both these folders you should have the same folder structure.
```
> tree.
├── pom.xml
└── src
    ├── main
    │   └── java
    │       └── com
    │           └── subpack
    │               └── subsubpack
    │                   └── App.java
    └── test
        └── java
            └── com
                └── subpack
                    └── subsubpack
                        └── AppTest.java
```

### A basic POM file looks like this:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
  
	<!-- project output info -->
	<groupId>com.example</groupId>
	<artifactId>my-app</artifactId>
	<version>1.0.0-SNAPSHOT</version>
	<packaging>jar</packaging>

	<!-- Project Metadata about project -->
	<name>Example App</name>
    	<description>A simple example Maven project</description>

	<!-- metadata of project tools -->
	<properties>
		<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
		<java.version>21</java.version>
		<maven.compiler.source>21</maven.compiler.source>
		<maven.compiler.target>21</maven.compiler.target>
	</properties>

	<dependencyManagement>
        <dependencies>
            <dependency>
                <groupId>org.junit</groupId>
                <artifactId>junit-bom</artifactId>
                <version>5.11.0</version>
                <type>pom</type>
                <scope>import</scope>
            </dependency>
        </dependencies>
    </dependencyManagement>

	<!--  This is joda-time dependency -->
	<dependencies>
		<dependency>
			<groupId>org.junit.jupiter</groupId>
            <artifactId>junit-jupiter-api</artifactId>
            <scope>test</scope>
		</dependency>

		<dependency>
			<groupId>org.junit.jupiter</groupId>
            <artifactId>junit-jupiter-params</artifactId>
            <scope>test</scope>
		</dependency>
	</dependencies>
	
	<!-- Build configuration -->
	<build>
		<pluginManagement>
			<plugins>
                <!-- clean lifecycle, see https://maven.apache.org/ref/current/maven-core/lifecycles.html#clean_Lifecycle -->
                <plugin>
                    <artifactId>maven-clean-plugin</artifactId>
                    <version>3.4.0</version>
                </plugin>
                <!-- default lifecycle, jar packaging: see https://maven.apache.org/ref/current/maven-core/default-bindings.html#Plugin_bindings_for_jar_packaging -->
                <plugin>
                    <artifactId>maven-resources-plugin</artifactId>
                    <version>3.3.1</version>
                </plugin>
                <plugin>
                    <artifactId>maven-compiler-plugin</artifactId>
                    <version>3.13.0</version>
					<configuration>
			    		<source>${java.version}</source>
			    		<target>${java.version}</target>
					</configuration>
                </plugin>

                <plugin>
                    <artifactId>maven-surefire-plugin</artifactId>
                    <version>3.3.0</version>
					<configuration>
	                    <suiteXmlFiles>
	                        <suiteXmlFile>testng.xml</suiteXmlFile>
	                    </suiteXmlFiles>
	                    <skipTests>true</skipTests>
	                </configuration>
                </plugin>

                <plugin>
                    <artifactId>maven-jar-plugin</artifactId>
                    <version>3.4.2</version>
                </plugin>

                <plugin>
                    <artifactId>maven-install-plugin</artifactId>
                    <version>3.1.2</version>
                </plugin>

                <plugin>
                    <artifactId>maven-deploy-plugin</artifactId>
                    <version>3.1.2</version>
                </plugin>

                <!-- site lifecycle, see https://maven.apache.org/ref/current/maven-core/lifecycles.html#site_Lifecycle -->
                <plugin>
                    <artifactId>maven-site-plugin</artifactId>
                    <version>3.12.1</version>
                </plugin>

                <plugin>
                    <artifactId>maven-project-info-reports-plugin</artifactId>
                    <version>3.6.1</version>
                </plugin>
			</plugins>
		</pluginManagement>
	</build>
</project>
```

```
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
  
	<!-- Project Information -->
	<groupId>com.core.example</groupId>
	<artifactId>project-name</artifactId>
	<packaging>jar</packaging>
	<version>1.0-SNAPSHOT</version>
  
	<name>project-name</name>
	<url>http://maven.apache.org</url>
  
	<properties>
		<project.build.sourceEncoding>UTF-8</project.build.sourceEncoding> 
		<maven.compiler.source>21</maven.compiler.source>
		<maven.compiler.target>21</maven.compiler.target>
	</properties>
  
	<!-- Project Dependencies -->
	<dependencies>
		<!-- JUnit4 -->
		<dependency>		
			<groupId>junit</groupId>
			<artifactId>junit</artifactId>
			<version>4.12</version>
			<scope>test</scope>
		</dependency>
		<!-- https://mvnrepository.com/artifact/org.junit.jupiter/junit-jupiter -->
		<dependency>
		    <groupId>org.junit.jupiter</groupId>
		    <artifactId>junit-jupiter</artifactId>
		    <version>5.11.0</version>
		    <scope>test</scope>
		</dependency>
	</dependencies>
  
	<!-- Project Plugins -->
	<build>
		<plugins>
			
			<!-- Set a JDK compiler level -->
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-compiler-plugin</artifactId>
				<version>2.3.2</version>
				<configuration>
					<source>${maven.compiler.source}</source>
					<target>${maven.compiler.target}</target>
				</configuration>
			</plugin>
			
		</plugins>
	</build>
</project>
```

#### Key Elements of a POM
Here are some important POM elements:
* `<project>`: This is the root element of the `pom.xml` file. It contains all project-specific information, dependencies, and build configurations.
* `<modelVersion>`: This tag specifies the version of the POM model you’re using. The 4.0.0 version is the standard and the most commonly used in Maven projects today.
* `<groupId>`: A unique identifier for your project's group or organization. It follows a reverse domain name convention (e.g., "com.example").
* `<artifactId>`: A unique identifier for your project within the group. It is usually a simple, descriptive name (e.g., "my-app").
* `<version>`: The version of your project. Maven supports versioning schemes like "1.0.0", "1.0-SNAPSHOT", etc.
* `<packaging>`: The packaging type of your project. Common values are `jar`, `war`, `ear` or `pom`.
* `<dependencies>`: A list of dependencies your project relies on. Maven will automatically download and manage these dependencies.
* `<build>`: The build configuration for your project, including plugins and other settings.

## Maven Commands

```
# Compile
$ mvn clean compile

# Test
$ mvn clean test

# Run
$ mvn clean compile && mvn -q exec:java "-Dexec.mainClass=com.example.app.AppDriver" "-Djava.util.logging.config.file=src/main/resources/logging.properties"

# Package
$ mvn assembly:single

# Generate javadoc
$ mvn javadoc:javadoc

# Generate javadoc without Maven
$ javaDoc -version -author -private -classpath src -d target/javadoc src/main/java/com/example/**/*.java

# FindBugs
$ mvn findbugs:check
$ mvn findbugs:gui

# Checkstyle
$ mvn checkstyle:check

# Generate Reports
$ mvn clean compile site
```
## Maven Build Lifecycle
* **mvn validate** - This command checks if the project is correct and all necessary information is available
* **mvn compile** - This command compiles the source code of the project
* **mvn test** - This command runs the unit tests for the project
* **mvn package** - This command packages the compiled code into a `JAR` or `WAR` file
* **mvn verify** - This command runs any checks to verify the quality of the package
* **mvn install** - This command installs the package into the local repository for use as a dependency in other projects locally
* **mvn deploy** - This command deploys the package to a remote repository for sharing with other developers

## Unit Testing
### Upgrade to JUnit5
Open up your pom.xml file and in the <dependencies> section and replace

This:
```xml
<dependency>
    <groupId>junit</groupId>
    <artifactId>junit</artifactId>
    <version>4.11</version>
    <scope>test</scope>
</dependency>
```
With this:
```xml
<dependency>
    <groupId>org.junit.jupiter</groupId>
    <artifactId>junit-jupiter-api</artifactId>
    <version>5.4.2</version>
    <scope>test</scope>
</dependency>
<dependency>
    <groupId>org.junit.jupiter</groupId>
    <artifactId>junit-jupiter-engine</artifactId>
    <version>5.4.2</version>
    <scope>test</scope>
</dependency>
```
Finally, change the import statements in AppTest.java to the new JUnit5:
```java
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;
```
or
```java
import static org.junit.Assert.assertEquals;
import org.junit.Test;

```
### Testing Maven Plugins
The **Effective POM** contains all the plugins that will be run when a specific phase is executed, the phases are backed by plugins, like the **maven-clean-plugin**, **maven-compiler-plugin** and the **maven-surefire-plugin** for example that is executing any tests.

#### Question - How to run multiple test classes using maven?
We can also run multiple classes as well. The below command would help us achieve this functionality.
```
mvn -Dtest=AppTest,App2Test test
```
The above command will execute the unit test cases of the **AppTest** and **App2Test** classes.

Same can also be achieved by using the `pom.xml` file.
```xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
    [...]
 
    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>3.0.0-M7</version>
 
                <configuration>
                    <includes>
                        <include>App2Test.java</include>
                        <include>AppTest.java</include>
                    </includes>
                </configuration>
 
            </plugin>
        </plugins>
    </build>
 
   [...]
</project>
```
Now, run the mvn test command, and maven will execute test cases of **App2Test** and **AppTest** classes.

#### Question- How to run multiple methods of a class using maven?
Syntax of running the multiple test cases of a class in maven –
```
mvn -Dtest=className#method1+method2 test
```
We can use the below command to execute the test1() and test2() methods of AppTest class.
```
mvn -Dtest=AppTest#test1+test2 test
```

## References
* [A Look at the Maven Project Object Model (POM)](https://medium.com/@AlexanderObregon/an-in-depth-look-at-the-maven-project-object-model-pom-3eeab0ad0b38)
* [Maven Getting Started](https://maven.apache.org/guides/getting-started/index.html)
* [Maven Build Lifecycle](https://www.geeksforgeeks.org/maven-build-lifecycle/)
* [Understanding pom.xml in Maven: A Beginner-Friendly Guide](https://anju-chaurasiya2012.medium.com/understanding-pom-xml-in-maven-a-beginner-friendly-guide-7f2e23232d4a)
* [What is Maven, and the importance of pom.xml](https://medium.com/@gaganjain9319/what-is-maven-and-the-importance-of-pom-xml-8273f5cd6fd6)
* [A Simple HelloWorld Java Project With Maven](https://ujwal5ghare.medium.com/a-simple-helloworld-java-project-with-maven-e2e2103ea30b)
* [Maven for a beginner](https://faun.pub/maven-for-a-beginner-9cc2dc04a8da)
* [Implementing Test-Driven Development in Java Projects with Maven and JUnit](https://medium.com/@AlexanderObregon/implementing-test-driven-development-in-java-projects-with-maven-and-junit-c50e8d62f3a8)
* [Test Driven Development (TDD) in Java](https://www.browserstack.com/guide/tdd-in-java)
* [Maven: Simplifying Java Build Automation for Developers](https://medium.com/@dineshrajdhanapathy/maven-simplifying-java-build-automation-for-developers-c996597dd306)
* [Mastering Test-Driven Development (TDD) in Java: A Comprehensive Guide with Examples](https://medium.com/@ahmettemelkundupoglu/mastering-test-driven-development-tdd-in-java-a-comprehensive-guide-with-examples-bc350597e6c9)
* [Mastering Test-Driven Development (TDD)- A Step-by-Step Guide to Building a Product CRUD API](https://medium.com/@sharmapraveen91/mastering-test-driven-development-tdd-a-step-by-step-guide-to-building-a-product-crud-api-c46e0a5fedce)
* [Maven Best Practices — Tips and Tricks for Java Developers](https://medium.com/@AlexanderObregon/maven-best-practices-tips-and-tricks-for-java-developers-438eca03f72b)
* [Setting Up Unit Testing For Java In VS Code (with Maven)](https://medium.com/@karlrombauts/setting-up-unit-testing-for-java-in-vs-code-with-maven-3dc75579122f)
* [Running Unit and Integration Test Separately in Maven](https://medium.com/@vandernobrel/running-unit-and-integration-test-separately-in-maven-a3e82d25cb7d)
* [How to execute unit test cases using Maven?](https://www.codekru.com/maven/how-to-execute-unit-test-cases-using-maven)
* [Testing with Maven - Organizing unit and integration tests](https://dev.to/rodnan-sol/testing-with-maven-organizing-unit-and-integration-tests-35oh)
* [Java Unit Testing: JUnit 5](https://medium.com/@KavishaMathur/java-unit-testing-junit-5-dedc31014308)
* [The Ultimate Guide to Unit Testing: Benefits, Challenges, and Best Practices](https://www.testdevlab.com/blog/the-ultimate-guide-to-unit-testing)
* [The 5 Java Testing Libraries Every Developer Should Know](https://dreamix.eu/insights/the-5-java-testing-libraries-every-developer-should-know-2/)
* [What is Test Case: Examples With Best Practices](https://www.lambdatest.com/learning-hub/test-case)
* [Introduction to testing](https://java-programming.mooc.fi/part-6/3-introduction-to-testing)
* [Reaping the Benefits of JUnit 5](https://www.parasoft.com/blog/reaping-the-benefits-of-junit-5/)
* [JUnit 5 Architecture or What's Jupiter?](https://nipafx.dev/junit-5-architecture-jupiter/)
* [What is main Deference between Junit4 and junit5 ?](https://medium.com/@vyashimanshu1198/what-is-main-deference-between-junit4-and-junit5-a54efe81fb52)
* [How to migrate from JUnit 4 to JUnit 5: a step-by-step guide](https://symflower.com/en/company/blog/2023/migrating-from-junit-4-to-5/)
* [JUnit4 vs. JUnit5: Which is better for Android development?](https://medium.com/@anna972606/junit4-vs-junit5-which-is-better-for-android-development-a6753c1441e2)
* [Difference between JUnit 5 an JUnit 4](https://howtodoinjava.com/junit5/junit-5-vs-junit-4/)
* [Class Assertions](https://junit.org/junit5/docs/current/api/org.junit.jupiter.api/org/junit/jupiter/api/Assertions.html)
