Feature: this time to call from myUtils.js kept in resources folder

  Background:
    //* def myTempVars = read('../resources/myUtils.js')
    * call read('../resources/myUtils.js')

  Scenario: trying to all declared variable in resources-myUtils.js in a variable config.myJson

    * print 'env : ', env
    * print 'AM_USERNAME :', AM_USERNAME
    * print 'AM_PASSWORD :',AM_PASSWORD
    * print 'AM_Host :',AM_HOST
    * print 'AM_AUTHENTICATE_PATH :',AM_AUTHENTICATE_PATH
    * print 'IDM_HOST :',IDM_HOST
    * print 'IDM_MANAGED_USER_PATH :',IDM_MANAGED_USER_PATH