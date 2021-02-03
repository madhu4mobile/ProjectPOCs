Feature: portal login using json locators

  Background:
    * def loginLocator = read('projOR/loginPg_locators.json')
    * call read('projOR/locators.js')
    * def userRes = read('../resources/myUsers.json')


  Scenario: execute login till checks homepage
#    * print user1Res
#    * print URL
    Given driver accessProdUrl
    And path 'jpmalogon'
    And maximize()
    * print "--------------------------------------------"
    And print 'loginLocator.portalLogonPg.txtBox_userId:',loginLocator.portalLogonPg.txtBox_userId
    And print 'URL taken from locator.js :',accessURL
    And print 'data from ../resources/myUsers.json as support :',userRes.support
    * print "--------------------------------------------"
    When retry().input(loginLocator.portalLogonPg.txtBox_userId, 'autochecks1')
    And retry().click(loginLocator.portalLogonPg.button_continue)
    * delay(1000)
    And waitFor(loginLocator.portalLogonPg.chkBox_sitePhrase)
    And click(loginLocator.portalLogonPg.chkBox_sitePhrase)
    And waitForEnabled(loginLocator.portalLogonPg.txtBox_password)
    And input(loginLocator.portalLogonPg.txtBox_password, 'Pwsuser0')
    And input(txtBox_token, '144695')
      # the above element from locators.js
    And retry().click(loginLocator.portalLogonPg.button_logon)
    * retry(5, 10000).waitForAny(loginLocator.portalLogonPg.button_duplicate_continue, loginLocator.portalLogonPg.button_duplicate_quit)
    * optional(loginLocator.portalLogonPg.button_duplicate_continue).click()

    #And retry(3,5000).optional(loginLocator.portalLogonPg.button_duplicate_continue).click()
    * retry(5,5000).waitFor(loginLocator.portalLogonPg.tab_checks).click()
#
#
#
#    * switchFrame(1)
#    Then retry(5, 10000).waitForAny(loginLocator.portalLogonPg.tab_checkInq1,"//input[#'inbox']")
#    * optional("//input[#'inbox']").click()



#
##    And retry(5,5000).waitFor(loginLocator.portalLogonPg.tab_checkInq).click()
#    #And waitFor("td#Home  a")
#    #* retry(5, 10000).waitForAny(loginLocator.portalLogonPg.tab_checkInq1,loginLocator.portalLogonPg.tab_checkInq1, loginLocator.portalLogonPg.tab_checkInq)
#    * optional(loginLocator.portalLogonPg.tab_checkInq1).click()
#    * print '-----------clicked checkInq1'
#    * optional(loginLocator.portalLogonPg.tab_checkInq).click()
#    * optional(loginLocator.portalLogonPg.tab_checkInq2).click()
#    * print '-----------clicked checkInq and 2'
#    And retry(3,3000).waitFor(loginLocator.portalLogonPg.tab_checkInq).mouseover().click()
