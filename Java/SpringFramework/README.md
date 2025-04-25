# <p align="center"> How to use Spring Boot through Maven comman line </p>
---

## Error in `pom.xml` file
Only appears in Eclipse (Scheduled to be fixed in future versions of Eclipse)
``` xml
<properities>
  <java.version>1.8</java.version>
  <maven-jar-plugin.version>3.1.1</maven-jar-plugin.version>
</properties>
```

## Spring Boot Project Architecture
```
🗀 <project_name>
├─ 🗀 src/main/java
   └─ 🗀 <package_name>
      └─ 🗎 <project_name>Aplication.java
├─ 🗀 src/main/resources
   ├─ 🗀 static
      └─ 🗀 css
         └─ 🗎 app.css
      └─ 🗀 img
	 └─ 🗎 image.jpg
      └─ 🗀 js
	 └─ 🗎 app.js
   ├─ 🗀 templates
      └─ 🗎 index.htm
   └─ 🗎 application.properties
├─ 🗀 src/test/java
   └─ 🗀 <package_name>
      └─ 🗎 <project_name>AplicationTests.java
├─ 🗀 JRE System Library [JavaSE-1.8]
├─ 🗀 Maven Dependencies
├─ 🗀 src
├─ 🗀 target
├─ 🗎 HELP.md
├─ 🗎 mvnw
├─ 🗎 mvnw.cmd
└─ 🗎 pom.xml
```

### Bootstrap the spring app
``` java
package <package_name>;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class <Project_name>Application {

	public static void main(String[] args) {
		SpringApplication.run(<Project_name>Application.class, args);
	}

}
```

## Spring Boot Dev Tool
- Automatically restarts your application when code is updated
- Simply add `spring-boot-devtools` dependency to your POM file
- No need to write additional code
``` xml
<!-- ADD SUPPORT FOR AUTOMATIC RELOADING -->
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-devtools</artifactId>
</dependency>
```

## Pring Boot Actuator
- Adding the dependency to your POM file
``` xml
<!-- ADD SUPPORT FOR SPRING BOOT ACTUATOR -->
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-actuator</artifactId>
</dependency>
```
- By default, only __/health__ are exposed. To expose all actuator endpoints over HTTP
```
# File: src/main/resources/application.properties

# Use wildcard "*" to expose all endpoints
# Can also expose individual endpoints with a comma-delimited list
#
management.endpoints.web.exposure.include=* 
```

## Spring Boot Actuator Security
- Adding the dependency to your POM file
```xml
<!-- ADD SUPPORT FOR SPRING BOOT SECURITY -->
<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-security</artifactId>
</dependency>
```
- You can override default user name and generated password
```
# File: src/main/resources/application.properties

spring.security.user.name=scott
spring.security.user.password=tiger
```
- To exclude __/health__ and __/info__
```
# File: src/main/resources/application.properties

# Exclude individual endpoints with a commna-delimited list

management.endpoints.web.exclude=health,info 
```

## Spring Boot and ReactJS Folder Structure
```
🗀 project_folder
├─ 🗀 node_modules
├─ 🗀 src
   ├─ 🗀 main
      ├─ 🗀 java
      └─ 🗀 js
   └─ 🗀 test
      ├─ 🗀 java
      └─ 🗀 js
├─ 🗀 target
├─ 🗎 package.json
├─ 🗎 pom.xml
└─ ...
```

## Basic Comman Line
### How to generate a maven project from archetype
```
mvn archetype:generate -DgroupId=com.spring.boot.starter -DartifactId=java-spring-boot-demo-mvn -Dpackage=com.spring.boot.demoapp -Dversion=0.0.1-SNAPSHOT -DinteractiveMode=false -DarchetypeArtifactId=maven-archetype-quickstart

```

``` xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <groupId>com.spring.boot.starter</groupId>
  <artifactId>java-spring-boot-demo-mvn</artifactId>
  <packaging>jar</packaging>
  <version>0.0.1-SNAPSHOT</version>

  <name>java-spring-boot-demo-mvn</name>
  <description>Demo project for Spring Boot</description>

<parent>
	<groupId>org.springframework.boot</groupId>
	<artifactId>spring-boot-starter-parent</artifactId>
	<version>2.7.7</version>
	<relativePath/> <!-- lookup parent from repository -->
</parent>

  <properties>
    <project.build.soureEncoding>UTF-8</project.build.soureEncoding>
    <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
		<java.version>11</java.version>
  </properties>

  <dependencies>			
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-web</artifactId>
		</dependency>

		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-devtools</artifactId>
			<scope>runtime</scope>
		</dependency>

		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-test</artifactId>
			<scope>test</scope>
		</dependency>

    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
  </dependencies>

  <build>
		<plugins>
			<plugin>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-maven-plugin</artifactId>
			</plugin>
		</plugins>
	</build>

</project>
```

```
mvn clean spring-boot:run
mvn clean install
```

### Build and Compile
This will download all the dependencies and build the jar file:
```
mvn clean package
```

## pom.xml
``` xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	
	<parent>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-parent</artifactId>
		<version>2.7.7</version>
		<relativePath/> <!-- lookup parent from repository -->
	</parent>
	
	<groupId>com.spring.boot.demo</groupId>
	<artifactId>spring-boot-starter</artifactId>
	<version>0.0.1-SNAPSHOT</version>
	<packaging>jar</packaging>
	<name>spring-boot-starter</name>
	<description>Demo project for Spring Boot</description>
	
	<properties>
		<java.version>11</java.version>
	</properties>
	
	
	<dependencies>
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-web</artifactId>
		</dependency>
		
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-security</artifactId>
			<scope>test</scope>
		</dependency>
		
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-data-jpa</artifactId>
			<exclusions>
				<exclusion>
					groupId>org.apache.tomcat</groupId>
					<artifactId>tomcat-jdbc</artifactId>
				</exclusion>
			</exclusions>
		</dependency>
		
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-devtools</artifactId>
			<scope>runtime</scope>
			<optional>true</optional>
		</dependency>
		
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-test</artifactId>
			<scope>test</scope>
		</dependency>
	</dependencies>

	<build>
		<plugins>
			<plugin>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-maven-plugin</artifactId>
			</plugin>
		</plugins>
	</build>

</project>

```

## Maven Dependencies
- `spring-boot-starter-parent`: It provides useful Maven defaults. It also provides a dependency-management section so that you can omit version tags for existing dependencies.
- `spring-boot-starter-web`: It includes all the dependencies required to create a web app. This will avoid lining up different spring common project versions.
- `spring-boot-starter-tomcat`: It enable an embedded Apache Tomcat 7 instance, by default.
- `spring-boot-starter-data-jpa`: It provides key dependencies for Hibernate, Spring Data JPA and Spring ORM.
 
 ``` java
@OneToOne  //Default fetch type is EAGER.
@OneToMany //Default fetch type is LAZY.
@ManyToOne //Default fetch type is EAGER.
@ManyToMany //Default fetch type is LAZY.
 ```
