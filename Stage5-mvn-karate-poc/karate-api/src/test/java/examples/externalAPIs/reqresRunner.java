package examples.externalAPIs;

import com.intuit.karate.junit5.Karate;

public class reqresRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run().relativeTo(getClass());
    }
}
