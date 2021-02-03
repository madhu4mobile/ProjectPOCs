Feature: reading from scenario Outline example

  Background:
    * def fun = function(x){ return 'Hello ' + x }

  @ignore
  Scenario Outline: examples-1 taking parameters

    Given def test = 'Madhu'
    * print fun(name)
    * match fun(name) == 'Hello ' + name

    Examples:
      | name  |
      | foo   |
      | Madhu |

  Scenario Outline: examples-2 reading params

    Given def jsonPayLoad = {}
    * def jsonPayLoad =
    """
    {
      "meetingSource": <meetingSource>,
      "hostId": <host>,
      "topic": <topic>,
      "agenda": <topic>,
      "startDateTime": <meetingDate>,
      "timeZone": "America/Chicago",
      "duration": <duration>
    }
  """
    #* if (2+3 == 5 )  myVar = 5
    # none of the if conditions are working so trying with the way they suggested for logics
    #* def filename = zone == 'zone1' ? 'test1.feature' : 'test2.feature'
    When jsonPayLoad.startDateTime = <meetingDate> == '0' ? 'option 1' : 'option 2'
    * print 'myVar -->',myVar
     #* eval (if (jsonPayLoad.startDateTime == '0') jsonPayLoad.startDateTime = meetDate)
    Then print jsonPayLoad

    Examples:
      | meetingSource | host | topic           | duration | meetingDate  |
      | ZOOM          | abc  | Quarter meeting | 30       | '1980-08-12' |
      | SKYPE         | abc  | Quarter meeting | 30       | '0'          |
      | MS Team       | abc  | Daily  standup  | 30       | '2021-01-15' |