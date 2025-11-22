# <p align="center"> Introduction to Gradle </p>
---

```groovy
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

## Referrence
* [Building Java Applications with libraries Sample]https://docs.gradle.org/current/samples/sample_building_java_applications_multi_project.html)
