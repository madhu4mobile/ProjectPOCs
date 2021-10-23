#Karate-gatling/Scala project with Gradle


##Important instructions :
###To run the scripts

> gradlew test -Dtest=ReqResLevelRunner --console=plain
>
> gradlew test -Dtest=TotalDemoRunner --console=plain

> gradle test-compile gatling:test
> 
###With the selection of different environments during run time
> gradlew test -Dkarate.options"--tags @smoke" -Dkarate.env="e2e"

###To check the execution reports html
> build/reports/tests/test/index.html

>target/gatling/testuserssimulation-xxxxxxxxx/index.html



### Useful reference links:

https://www.tabnine.com/code/java/classes/com.intuit.karate.FileUtils
https://github.com/intuit/karate/wiki/IDE-Support

Checkout here for the runner in gatling : https://www.kloia.com/blog/step-5-karate-gatling-performance-tests