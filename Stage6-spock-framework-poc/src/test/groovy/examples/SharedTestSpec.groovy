package examples

import spock.lang.Shared

class SharedTestSpec extends spock.lang.Specification {

    //https://stackoverflow.com/questions/35923714/when-spocks-shared-annotation-should-be-preferred-over-a-static-field
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