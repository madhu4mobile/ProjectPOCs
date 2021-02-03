package first;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class testRunner {

    @Test
    void testParallel() {
        System.setProperty("karate.env", "demo"); // ensure reset if other tests (e.g. mock) had set env in CI
        Results results = Runner.path("classpath:first").tags("~@ignore").parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}