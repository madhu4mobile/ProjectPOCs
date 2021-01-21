@ignore
Feature: to login portal

  Background:
    * def loginLocators = read('auto_UI_CustApp/projOR/loginPg_locators.json')
    * print 'test1 :',loginLocators.test1
    * print 'loginLocators.portalJpmalogonPg.test1 :',loginLocators.portalJpmalogonPg.test1
    * print 'test2 :',loginLocators.portalJpmalogonPg.test2
    * print 'leftNav.test2 :',leftNav.test2
    * def myUserIdBox = portalJpmalogonPg.txtBox_userId
    * print 'portalJpmalogonPg.txtBox_userId :',myUserIdBox
    * print 'leftNav.transactions :',leftNav.transactions

  Scenario: CustApp loginPage

    Given driver 'https://access.jpmorgan.com/jpmalogon'
    When waitForUrl('https://access.jpmorgan.com/jpmalogon')
    And maximize()
    #And waitFor('input#userId')
    And retry().input(myUserIdBox, 'autochecks1')
    And retry().click(portalJpmalogonPg.button_continue)
    And retry().click(portalJpmalogonPg.chkBox_sitePhrase)

    #And input('input#userId','autochecks1')
    * delay(25000)