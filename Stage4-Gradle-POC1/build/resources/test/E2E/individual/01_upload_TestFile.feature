Feature: To upload a test file and then validate the upload

  Background :
  * def CalledJavaFn = Java.type('E2E.common.utilities.JavaFunctionUtils')
  * def MMdd = CalledJavaFn.getDateInCustomFormat("MMdd")
  * def RndNum = CalledJavaFn.randomDigitsBetweenMinMax(100,999)
  #* def fileName = "FixedTestFile"
  * def fileName = "AutoTest_"+MMdd+"_"+RndNum
  * print "File Name :	---> "+fileName
    ## function to generate the TestFile
  * def genFile = Java.type('E2E.common.utilities.CaptureTestFileCreator')
  * genFile.createFile(10, fileName )
  * def myFIleWithPath = 'src/test/java/E2E/common/data/'+fileName
  * print myFIleWithPath

  Scenario: CHK-3092-GENERATE-FILE-UPLOAO , LIST and validate response for file name
    Given url 'https://ftscat2a.mfts.jpmchase.net'
    And path '/api/v1.4/files/CDS01//'
    And param showdots = 'false'
    And param transferMode = 'BINARY'
    And multipart file myFile = { read: 'file: "src/test/java/E2E/common/data/"+fileName+". dat" ' }
  # And multipart file myFile = { read: 'file:"src/test/java/E2E/common/data/AutoTest_1113_200.dat"'
  * header Authorization = call read('basic-auth.js') { username: 'xxxxx', password: 'yyyyy'}
    When method POST
    Then status 200
    And print "=============== After upload ================================"
### Now to list out the files
    Given url CaptureApiUrl
    And path 'list'
    When method get
    Then status 200
    And match response[0]..key contains "#regex (?i).*" + fileName + ".*"



