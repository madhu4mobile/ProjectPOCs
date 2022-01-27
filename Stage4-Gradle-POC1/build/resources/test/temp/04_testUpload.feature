Feature: to test file upload

  Background: here are the backgrounds

  Scenario: lets call a file
    * print "In temp folder and calling  03_myJson.json from /first "
    * def myFile = "../first/03_myJson.json"
    #And def myContent = read('../first/03_myJson.json')  --> this is successful too
    And def myContent = read(myFile)
    * print myContent

  Scenario: lets try calling a feature
    * print "In temp folder and calling  01_test.feature from /first "
    And def BodyOfRequest = call read('../first/01_test.feature')
    * print "BodyOfRequest title from first request  ----->",BodyOfRequest.response[0].title

  Scenario: lets try reading a file for multipart upload
    Given url 'https://www.4shared.com/'
      #And def BodyOfRequest = read(karate.properties['user.dir'] + '/src/test/java/temp/03_myJson.json')
      #And def BodyOfRequest = read('/src/test/java/first/03_myJson.json')
      #And def BodyOfRequest = call read(karate.properties['user.dir'] + '/src/test/java/temp/01_test.feature')
      #And def BodyOfRequest = call read('/src/test/java/first/01_test.feature')
      #And def BodyOfRequest = call ('classpath:first/01_test.feature')
    And def myVar1 = read(karate.properties['user.dir'] + "/src/test/java/E2E/common/data/"+"AutoTestFile_1113_504"+".dat")
    * print myVar1
    #And multipart file myFile = { read: '../E2E/common/data/AutoTestFile_1113_413.dat', filename: 'my-Test.dat', contentType: 'text/plain' }
    And multipart file myFile = { read: #(myVar1), filename: 'my-Test.dat', contentType: 'text/plain' }
    #And multipart field message = 'hello world'
    When method post
    Then status 200
    And def BodyOfRequest = call read('../first/01_test.feature')
    * print "BodyOfRequest title from first request  ----->",BodyOfRequest.response[0].title