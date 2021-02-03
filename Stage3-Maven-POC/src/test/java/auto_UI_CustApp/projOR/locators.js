


function fn() {
    var myVars = {};
    var env = 'qa';
//
     myVars.env = env;

     myVars.accessProdUrl = 'https://access.jpmorgan.com';
     myVars.accessQAUrl = 'https://accesspte3.jpmorgan.com';
     myVars.txtBox_token = 'input#tokenCode';

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