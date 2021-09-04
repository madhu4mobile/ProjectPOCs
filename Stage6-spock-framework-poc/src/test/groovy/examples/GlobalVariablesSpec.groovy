package examples

import spock.lang.Shared
import spock.lang.Specification
import spock.lang.Unroll

@Unroll
class GlobalVariablesSpec extends Specification {

    int initializedVariable

    int globalVariable = 200

    static int STATIC_VARIABLE = 300

    @Shared
    int sharedVariable = 400

    void setup() {
        initializedVariable = 100
    }

    void 'no changes'() {
        expect:
        printVariables()
        /*
        initializedVariable: 100
        globalVariable: 200
        STATIC_VARIABLE: 300
        sharedVariable: 400
         */
    }

    void 'change values - lives within this test only except Static and sharedVariables'() {
        setup:
        initializedVariable = 1100
        globalVariable = 1200
        STATIC_VARIABLE = 1300
        sharedVariable = 1400

        expect:
        println('Test1 - change values - lives within this test only except Static and sharedVariables')
        printVariables()
        /*
        initializedVariable: 1100
        globalVariable: 1200
        STATIC_VARIABLE: 1300
        sharedVariable: 1400
         */
    }

    def "test-2 to check the values in second test"() {
        expect:
        println('test-2 to check the values in second test')
        println('global variables get to remain the same')
        printVariables()
    }

    void 'print values again'() {
        expect:
        printVariables()
        /*
        initializedVariable: 100
        globalVariable: 200
        STATIC_VARIABLE: 1300
        sharedVariable: 1400
         */
    }

    private void printVariables() {
        println "initializedVariable: $initializedVariable"
        println "globalVariable: $globalVariable"
        println "STATIC_VARIABLE: $STATIC_VARIABLE"
        println "sharedVariable: $sharedVariable\n"
    }
}
