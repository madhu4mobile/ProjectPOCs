
@ignore
Feature: portal login using json locators

    Background:
      * def loginLocator = read('projOR/loginPg_locators.json')
      * call read('projOR/locators.js')
      * def userRes = read('../resources/myUsers.json')


    Scenario: play with user1 response and Json
#    * print user1Res
#    * print URL
      Given driver accessQAUrl
      And path 'jpmalogon'
      * print "--------------------------------------------"
      And print 'loginLocator.portalLogonPg.txtBox_userId:',loginLocator.portalLogonPg.txtBox_userId
      And print 'URL taken from locator.js :',accessURL
      And print 'data from ../resources/myUsers.json as support :',userRes.support
      * print "--------------------------------------------"
      When retry().input(loginLocator.portalLogonPg.txtBox_userId, 'jkuser1')
      And retry().click(loginLocator.portalLogonPg.button_continue)
      * delay(1000)
      And waitFor(loginLocator.portalLogonPg.chkBox_sitePhrase)
      And click(loginLocator.portalLogonPg.chkBox_sitePhrase)
      And waitForEnabled(loginLocator.portalLogonPg.txtBox_password)
      And input(loginLocator.portalLogonPg.txtBox_password, 'Pwsuser1')
      And input(txtBox_token, '206871')
      # the above element from locators.js
      And retry().click(loginLocator.portalLogonPg.button_logon)
      * delay(10000)


