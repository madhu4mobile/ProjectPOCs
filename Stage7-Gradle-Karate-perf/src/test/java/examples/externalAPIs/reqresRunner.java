package examples.externalAPIs;

import com.intuit.karate.junit5.Karate;
//import org.junit.jupiter.api.Test;

public class reqresRunner {
    @Karate.Test
    Karate reqresRunner() {
        return Karate.run("reqresUsers").relativeTo(getClass());
    }
}
