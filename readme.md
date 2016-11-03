# stub-fhir-ws

A stub end-point to serve up JSON FHIR documents.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
com.csra.fhir library containing the HL7 FHIR objects.
Maven 3
Java 8 JDK
```

### Installing


```
git clone <project>
```


## Running
 
### Starting the Application


```
mvn package && java -jar target/fhir-ws-0.0.1-SNAPSHOT.jar
```


### Accessing the End-points

Default URL: http://localhost:8080/{objectType}

```
[Patient](http://localhost:8080/patient)
[Medication](http://localhost:8080/medication)
[Prescription](http://localhost:8080/prescription)
```

### Secuity

The default AuthenticationManager has a single user (‘user’ username and random password, printed at INFO level when the application starts up)

```
Using default security password: 78fa095d-3f4c-48b1-ad50-e24c31d5cf35
```

## Built With

* [Spring Boot](http://docs.spring.io/spring-boot/docs/1.4.1.RELEASE/reference/htmlsingle/) - The web framework used

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Steffen Kory** - *Initial work* - [Stekodyne](https://github.com/Stekodyne)
