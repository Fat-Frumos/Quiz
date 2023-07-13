# CI/CD
## Jenkins
#### admin/admin, developer/developer

Clean, install, and generate report

`mvn clean install site -P test`

Test report

`mvn surefire-report:report`

Show dependency tree

`mvn dependency:tree`

Compile the code v.11 and package in file, skip the tests

`mvn clean package -DskipTests -Dmaven.compiler.target=11`

Build the project with Maven Tool

`mvn -B package --file pom.xml`

Run Tomcat server, show debug information

`mvn tomcat7:run -X`

Run Tomcat server, show debug information

`java -jar ./web-app/target/web-app-1.0.0.jar --thin.dryrun`

Build the project with Maven Tool without Tests
`mvn clean install -e -DskipTests`

Maven will perform the necessary build tasks, such as compiling the code, 
creating the project's artifacts, and verifying their correctness. 
`mvn verify -e`
