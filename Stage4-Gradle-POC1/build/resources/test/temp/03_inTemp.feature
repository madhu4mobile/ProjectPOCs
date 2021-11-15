Feature: to call other features

  Background: here are the backgrounds

    Scenario: lets call a file
      * print "In temp folder and calling  03_myJson.json from /first "
      #And def BodyOfRequest = read(karate.properties['user.dir'] + '/src/test/java/temp/03_myJson.json')
      #And def BodyOfRequest = read('/src/test/java/first/03_myJson.json')
      * def myFile = "../first/02_another.feature"
      #And def myContent = read('classpath:'+myFile)
      And def myContent = read(myFile)
      #And def myContent = read('../first/02_another.feature')
      * print myContent

    Scenario: lets try calling a feature
      * print "In temp folder and calling  01_test.feature from /first "
      #And def BodyOfRequest = call read(karate.properties['user.dir'] + '/src/test/java/temp/01_test.feature')
      #And def BodyOfRequest = call read('/src/test/java/first/01_test.feature')
      #And def BodyOfRequest = call ('classpath:first/01_test.feature')
      And def BodyOfRequest = call read('../first/01_test.feature')
      * print "BodyOfRequest title from first request  ----->",BodyOfRequest.response[0].title

  Scenario: lets try reading a file for multipart upload
    Given url 'https://www.4shared.com/'
    And multipart file myFile = { read: '../data/AutoTestFile_1113_413.dat', filename: 'upload-name.dat', contentType: 'text/plain' }
    And multipart field message = 'hello world'
    When method post
    Then status 200
      #And def BodyOfRequest = call read(karate.properties['user.dir'] + '/src/test/java/temp/01_test.feature')
      #And def BodyOfRequest = call read('/src/test/java/first/01_test.feature')
      #And def BodyOfRequest = call ('classpath:first/01_test.feature')
    And def BodyOfRequest = call read('../first/01_test.feature')
    * print "BodyOfRequest title from first request  ----->",BodyOfRequest.response[0].title