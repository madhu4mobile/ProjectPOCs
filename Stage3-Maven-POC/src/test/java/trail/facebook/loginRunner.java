package trail.facebook;

import com.intuit.karate.junit5.Karate;

public class loginRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}
