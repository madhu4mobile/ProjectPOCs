Feature: to login portal

  Background:
    * call read('trail/loginPg_locators.json')
    * print 'test1 :',test1
    * print 'portalJpmalogonPg.test1 :',portalJpmalogonPg.test1
    * print 'test2 :',test2
    * print 'leftNav.test2 :',leftNav.test2
    #* def myUserIdBox = portalJpmalogonPg.txtBox_userId
    * print 'portalJpmalogonPg.txtBox_userId :',portalJpmalogonPg.txtBox_userId
    * print 'leftNav.transactions :',leftNav.transactions

  Scenario: CustApp login page

    Given driver 'https://access.jpmorgan.com/jpmalogon'
    When waitForUrl('https://access.jpmorgan.com/jpmalogon')
    And maximize()
    #And waitFor('input#userId')
    And  input(portalJpmalogonPg.myUserIdBox, 'autochecks1')
    And retry().click(portalJpmalogonPg.button_continue)
    And retry().click(portalJpmalogonPg.chkBox_sitePhrase)

    #And input('input#userId','autochecks1')
    * delay(25000)