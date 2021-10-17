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
      * if( response.articles[0] == [] ) { * def myNum = 0; } else {       }

    # to get slug from most recent article
    And def slug = response.articles[0].slug
    # to get the number after the word Article in slug
    And def myNum = slug.substr(7, 1);
    # logic to increment Article number to next one
    And def myNextNum = String(parseInt(myNum) + 1)

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




