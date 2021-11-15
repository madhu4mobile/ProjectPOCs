Feature: to call other features

  Background: here are the backgrounds

    Scenario: lets call a file
      * print "In temp folder and calling  03_myJson.json from /first "
      #And def BodyOfRequest = read(karate.properties['user.dir'] + '/src/test/java/temp/03_myJson.json')
      #And def BodyOfRequest = read('/src/test/java/first/03_myJson.json')
      And def BodyOfRequest = read('classpath:first/03_myJson.json')
      * print BodyOfRequest.email

    Scenario: lets try calling a feature
      * print "In temp folder and calling  01_test.feature from /first "
      #And def BodyOfRequest = call read(karate.properties['user.dir'] + '/src/test/java/temp/01_test.feature')
      #And def BodyOfRequest = call read('/src/test/java/first/01_test.feature')
      #And def BodyOfRequest = call ('classpath:first/01_test.feature')
      And def BodyOfRequest = call read('../first/01_test.feature')
      * print "BodyOfRequest title from first request  ----->",BodyOfRequest.response[0].title