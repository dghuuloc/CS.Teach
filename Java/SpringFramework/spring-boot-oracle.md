# <p align="center">HOW TO PROPERLY CONFIGURE: SPRING BOOT / JPA / HIBERNATE AND ORACLE 19C-ORACLE</p>

## application.properties (Oracle19c)

```
# create and drop tables and sequences, loads import.sql
#spring.jpa.hibernate.ddl-auto=create-drop
#spring.h2.console.enabled=true

spring.jpa.show-sql=true
spring.jpa.database-platform=org.hibernate.dialect.OracleDialect
spring.jpa.hibernate.ddl-auto= update
spring.jpa.properties.hibernate.show_sql=true
spring.jpa.properties.hibernate.use_sql_comments=true
spring.jpa.properties.hibernate.format_sql=true

# Oracle settings
spring.datasource.url=jdbc:oracle:thin:@localhost:1521/pdborcl
spring.datasource.username=simpledb
spring.datasource.password=orcl1234
spring.datasource.driver-class-name=oracle.jdbc.driver.OracleDriver

# logging
logging.pattern.console=%d{yyyy-MM-dd HH:mm:ss} %-5level %logger{36} - %msg%n
logging.level.org.hibernate.SQL=debug

#logging.level.org.hibernate.type.descriptor.sql=trace
logging.level.org.hibernate.type=trace
logging.level.=error

# JDBC properties
#spring.datasource.url=jdbc:mysql://localhost:3306/employee_directory?useSSL=false&serverTimezone=UTC
#spring.datasource.username=springstudent
#spring.datasource.password=springstudent

#spring.datasource.max-idle=10
#spring.datasource.max-wait=10000
#spring.datasource.min-idle=5
#spring.datasource.initial-size=5

server.port=8080
```

## pom.xml (Oracle19c)

``` xml
<dependency>
	<groupId>com.oracle.database.jdbc</groupId>
	<artifactId>ojdbc8</artifactId>
	<scope>runtime</scope>
</dependency>
```

Here, I use ojdbc8 for JDK 8 with Oracle database 11g and 12c. For Oracle Database 18c and 19c, use the artifactId ojdbc10.



```
// application-dev
server.port=8088
spring.datasource.url=jdbc:oracle:thin:@localhost:1521:orcl


// application.yml
spring:
  profiles:
    active: @spring.profiles.active@
```

```
// application-uat
server.port=9000
spring.datasource.url=jdbc:oracle:thin:@210.11.111.111:1521:orcl


// application-uat.yml
server: 
  port: 9000
spring:
	datasource:
		url: jdbc:oracle:thin:@210.11.111.111:1521:orcl
```

```
// application.production
server.port=8888
spring.datasource.url=jdbc:oracle:thin:@210.11.111.111:1521:orcl


// application-production.yml
server: 
  port: 8888
spring:
	datasource:
		url: jdbc:oracle:thin:@210.11.111.111:1521:orcl

```

```
spring:
  datasource:
    url: 'jdbc:oracle:thin:@localhost:1521:orcl'
    username: data_integration
    password: secret
  jpa.hibernate.ddl‑auto: validate
  mvc.view:
    prefix: /WEB‑INF/pages/
    suffix: .jsp
```
