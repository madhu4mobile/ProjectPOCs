Feature: to report issue with multipart read

  Scenario: lets try reading a file for multipart upload
    Given url 'https://www.4shared.com/'
    #* string myVar = "\'"+"/src/test/java/E2E/common/data/"+"AutoTestFile_1113_413"+".dat"+"\'"
      And def myVar1 = read(karate.properties['user.dir'] + "/src/test/java/E2E/common/data/"+"AutoTestFile_1113_413"+".dat")
      #And def BodyOfRequest = read('/src/test/java/first/03_myJson.json')
      #And def BodyOfRequest = call read(karate.properties['user.dir'] + '/src/test/java/temp/01_test.feature')
      #And def BodyOfRequest = call read('/src/test/java/first/01_test.feature')
      #And def BodyOfRequest = call ('classpath:first/01_test.feature')

    * print myVar1
    #And multipart file myFile = { read: '../E2E/common/data/AutoTestFile_1113_413.dat', filename: 'my-Test.dat', contentType: 'text/plain' }
    And multipart file myFile = { read: #(myVar1), filename: 'my-Test.dat', contentType: 'text/plain' }
    And multipart field message = 'hello world'
    When method post
    Then status 200
    And def BodyOfRequest = call read('../first/01_test.feature')