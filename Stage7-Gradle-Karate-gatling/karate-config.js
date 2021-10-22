function fn() {

    /* Setting System Properties :
    *  Intellij : Edfit Run Configureatiions > VM Options
    *           -Dproperty=value
    *           ( e.g. -Dkarate.env=dev )
    *   gradle.properties:
    *       systemProp.property=value
    *       ( e.g. systemProp.karate.env=dev )
    *
    *   All system properties can be accessed via
    *       karate.properties['']
    *       ( e.g. karate.properties['java.runtime.version'] )
    */

  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
    sslConfig: true,
    proxy:
            {
                uri: 'http://approxy.jpmchase.net:8443',
                nonProxyHostst:
                [
                    'my-api2.com',
                    'localhost'
                ]
            }
    }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  //karate.configure('proxy',  { uri: 'http://xx.xx.xxx.xx:8080', username: 'myuserid', password: 'xxxxxx' });


    var env = karate.env; // get system property 'karate.env' // get system property 'karate.env'
    karate.log('karate.env system property was:', env);

    //karate.log('Present proxy being used is :', karate.config.proxy)


  return config;
}