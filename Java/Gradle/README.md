# <p align="center"> Introduction to Gradle </p>
---

* **Structuring and Organizing Gradle Projects**
```
root-project/     
├── settings.gradle
├── build.gradle 
├── app/                
│   ├── build.gradle        
│   └── src/
├── core/               
│   ├── build.gradle        
│   └── src/
└── util/               
    ├── build.gradle        
    └── src/
```
* **Create the main source directory structure**
```sh
mkdir -p src/main/java,src/test/java,src/main/resources,src/test/resources
```

> [!TIP]
> Use gradle init for creating gradle project from terminal
> ```
> gradle init --type java-application --dsl groovy --test-framework junit-jupiter --package grd.fs --project-name grd-basic --no-split-project --java-version 17
> ```

* `settings.gradle` file
```groovy
rootProject.name = 'my-project'
include('app', 'core', 'util')
```

* `build.gradle` file
```groovy
// build.gradle
plugins {
    id 'java' 
}

repositories {
    mavenCentral() 
}

dependencies {
    constraints {
        implementation 'org.apache.commons:commons-text:1.13.0' 
    }

    testImplementation 'org.junit.jupiter:junit-jupiter:5.12.1' 

    testRuntimeOnly 'org.junit.platform:junit-platform-launcher'
}

tasks.named('test') {
    useJUnitPlatform() 
}
```
* (1) we have java plugin to have all functionality for building Java projects available.
* (2) We declare a repository - `mavenCentral()` as source for external dependencies
* (3) We define dependency contraints as well as standard dependencies that are shared by all subprojects and set JUnit 5 as testing framework (4)

### Declaring Dependencies
Let’s look at an example of adding some dependencies (Spring and Hibernate) using several different ways:
```groovy
dependencies {
    implementation group: 
      'org.springframework', name: 'spring-core', version: '4.3.5.RELEASE'
    implementation 'org.springframework:spring-core:4.3.5.RELEASE',
            'org.springframework:spring-aop:4.3.5.RELEASE'
    implementation(
        [group: 'org.springframework', name: 'spring-core', version: '4.3.5.RELEASE'],
        [group: 'org.springframework', name: 'spring-aop', version: '4.3.5.RELEASE']
    )
    testImplementation('org.hibernate:hibernate-core:5.2.12.Final') {
        transitive = true
    }
    runtimeOnly(group: 'org.hibernate', name: 'hibernate-core', version: '5.2.12.Final') {
        transitive = false
    }
}
```
```groovy
implementation files('libs/joda-time-2.2.jar', 'libs/junit-4.12.jar')
implementation fileTree(dir: 'libs', include: '*.jar')
```

To add dependencies to any local files, we can use something like this:
```groovy
implementation files('libs/joda-time-2.2.jar', 'libs/junit-4.12.jar')
implementation fileTree(dir: 'libs', include: '*.jar')
```

*You can run the application by executing the run task from the Application plugin in the project root:
```sh
gradle -q run
```


## Referrence
* [Building Java Applications with libraries Sample](https://docs.gradle.org/current/samples/sample_building_java_applications_multi_project.html)
