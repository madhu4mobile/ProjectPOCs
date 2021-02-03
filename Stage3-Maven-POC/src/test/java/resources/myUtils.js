


function fn() {
    var myVars = {};
    var env = 'qa';
//
     myVars.env = env;
     myVars.AM_USERNAME = 'amuser';
     myVars.AM_PASSWORD = 'ampass';
     myVars.AM_HOST = 'https://am.'+env+'.example.net';
     myVars.AM_AUTHENTICATE_PATH = '/am/json/realms/root/authenticate';

     myVars.IDM_USERNAME = 'devuser';
     myVars.IDM_PASSWORD = 'devpass',
     myVars.IDM_HOST = 'https://idm.'+env+'.example.net';
     myVars.IDM_MANAGED_USER_PATH = '/idm/managed/user';

     myVars.URL = 'https://reqres.in/api/users'

    if(env == 'qa') {
     myVars.AM_USERNAME = 'myUserName';
     myVars.AM_PASSWORD = 'myPa55word';
    }

    if(env == 'live') {
         myVars.AM_USERNAME = 'admin';
         myVars.AM_PASSWORD = 'secret';
    }

    return myVars;
}