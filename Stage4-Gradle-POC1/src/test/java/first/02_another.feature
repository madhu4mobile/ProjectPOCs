Feature: another feature to add to the directory

  Scenario: anther feature trying to execute
    * print "In first folder and ran another.feature"
    Given print 'This is given'
    When print 'when this happens'
    Then print 'then this happens'
    And call read('01_test.feature')