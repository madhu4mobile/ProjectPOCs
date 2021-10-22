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
        myVarName: 'someValue',
        sslConfig: true,

//            proxy:
//                    {
//                        uri: 'http://approxy.jpmchase.net:8443',
//                        nonProxyHosts:
//                        [
//                            'my-e2e-api.com',
//                            'localhost'
//                        ]
//                    }

            }

          if (env == 'dev') {
            // customize
            // e.g. config.foo = 'bar';
            config.apiUrl = 'https://my-dev-api.com';
          } else if (env == 'e2e') {
            // customize
            config.apiUrl = 'https://my-e2e-api.com';
          };
        //karate.configure('proxy',  { uri: 'http://xx.xx.xxx.xx:8080', username: 'myuserid', password: 'xxxxxx' });

          // don't wait more than 5 seconds for a connection or response
            karate.configure('connectTimeout', 5000);
            karate.configure('readTimeout', 5000);
            //To call previously set proxy from karate.configuration
/*            karate.configure('proxy',config.proxy);
            karate.log('Present proxy being used is :', config.proxy.uri );*/

        var env = karate.env; // get system property 'karate.env'
        karate.log('karate.env system property was:', env);


        karate.log('api URL used :',config.apiUrl );


  return config;
}