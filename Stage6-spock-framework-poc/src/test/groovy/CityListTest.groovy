import spock.lang.Shared
import spock.lang.Specification

class cityListTest extends Specification {

// test fixtures

    def "setupSpec"() {
        println("SetupSpec runs one time though there are multiple tests")

    }

    def "setup"() {
        println "in setup !!  -- This runs each time before every test"

    }
    @Shared
    def CityList =  cityList = new LinkedList<CityInfo>()  // this initiation can be done once globally for all tests

/*    def info(){
        println("To initialize and use the cityList once globally for all tests")
    }*/

    def "01 Happy Path - CityNames - assertion tips"() {
        given: "1.1 CityList object initiated - trying from setupSpec"


        when: "1.2 cities being added to cityList"
            println("==> in test-1")
            cityList.add(new CityInfo("Hyderabad", 1.2))
            cityList.add(new CityInfo("Mumbai", 7.8))
            cityList.add(new CityInfo("Kolkata", 6.9))

        then: "1.3 To test if city names are being porputated in the order"
            /*
             cityList.get(0).cityName == "Hyderabad"
             cityList.get(1).cityName == "Mumbai"
            cityList.get(1).cityName == "Bombay"  // should fail
            */

            // The above way can be short handed as
            cityList*.cityName == ["Hyderabad", "Mumbai", "Kolkata"]    // should pass
            //cityList*.cityName == ["Hyderabad","Mumbai","Bombai"]       // should fail
    }

    def "02 Happy path test with population "() {
        given: "2.1 CityList object initiated"
            //def cityList = new LinkedList<CityInfo>()

        when: "2.2 cities being added to cityList"
            println("==> in test-2 The cities being added are local to the test. The does not exist after the test")
            cityList.add(new CityInfo("Delhi", 8.9))
            cityList.add(new CityInfo("Chennai", 7.2))
            cityList.add(new CityInfo("Visakhapatnam", 1.0))

        then: "2.3 To test if city populations  are being porputated in the order"
            cityList.get(0).population > 1.2  // should pass
            cityList.get(1).population > 6.8  // should pass
            cityList.get(2).population > 0.9  // should pass
    }

    def "cleanup"() {
        println("In cleanup !!! -- This runs each time before every test")
    }

    def "cleanupSpec"() {
        println("cleanupSpec runs one time though there are multiple tests")
    }
}
