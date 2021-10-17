Feature: login with an existing user

  Background: url, and mandatory paramas
    Given url 'https://conduit.productionready.io/api'
      #Given url 'https://api.realworld.io/api'
      #Given url 'http://localhost:4200'
    * def extraString = ' for user1'

  Scenario: To capture slug details from the most recent article and to create a next article
    Given path 'users/login'
    And request {"user":{"email":"testuser1@karate.com","password":"test123"}}
    When method post
    Then status 200
    #And print karate.pretty(response)
    And def token = response.user.token

    ### The logic to capture slug details from the most recent article and to create a next article
    Given header Authorization = 'Token '+ token
    Given path 'articles'
    When method get
    Then status 200

    # logic to check if there are no articles at first
     # * if( response.articles == [] ) { var myNum = 0; } else {    console.log("All is well");   }

    * def myResponse = response

    * def myConditionToCheckIfNoArticle =
      """
      function(arg) {
        if ( myResponse.articlesCount == 0) {
           console.log(myResponse.articles)
           console.log(myResponse.articles.length)
           console.log(myResponse.length)
           console.log( "returning from if")
           var myNum = 0
           return myNum
        }
        else {
          console.log("returning from else")
          var slug = arg.articles[0].slug;
          var myNum = slug.substr(7,1);
          return myNum
        }
        return "returning from outside"
      }
      """
    # calling function after passing response as variable
    * def myNum = call myConditionToCheckIfNoArticle myResponse
    * print myNum
      # logic to increment Article number to next one
    * def myNextNum = String(parseInt(myNum) + 1)

    #And def presentUser = slug.substring(slug.indexOf("-") + 1); // to print the remaining string after first '-'
    #And print presentUser

    ### To prepare the body for the next article
    * def strNewArticle = "Article"+myNextNum+extraString
    * def strNewDescription = "Header"+myNextNum+extraString
    * def strNewBody = "Body"+myNextNum+extraString


    And def myNewArticleRequestBody =
          """
              {
                    "article": {
                        "tagList": [],
                        "title": #(strNewArticle),
                        "description": #(strNewDescription),
                        "body": #(strNewBody)
                    }
              }
          """
    Given header Authorization = 'Token '+ token
    Given path 'articles'
    And request myNewArticleRequestBody
    And method post
    And status 200




