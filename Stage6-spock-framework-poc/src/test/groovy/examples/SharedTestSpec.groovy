package examples

import org.junit.BeforeClass
import spock.lang.Shared



class SharedTestSpec extends spock.lang.Specification {

    //https://stackoverflow.com/questions/35923714/when-spocks-shared-annotation-should-be-preferred-over-a-static-field

/*  The usual way to express in Junit tests
    @BeforeClass
    public static void setupClass()*/

    //The Spock way of shared
    @Shared
    def shared = shared()

    def shared() {
        "I came from ${this.class.simpleName}"
    }

    def 'Test one'() {
        given:
        println("test one, shared: $shared")
        expect: true
    }

    def 'Test two'() {
        given:
        println("test two, shared: $shared")
        expect: true

    }
}

class SubclassSpec extends SharedTestSpec {

    @Override
    def shared() {
        println("They've got me!")
        "I came from ${this.class.simpleName}"
    }
}