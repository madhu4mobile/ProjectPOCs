package examples.users;

import com.intuit.karate.Constants;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class UsersRunner {
    
    @Test
    void UsersRunner() {
//        return Karate.run("users").relativeTo(getClass());
//        assertEquals(0,)

        String env = System.getProperty(Constants.KARATE_ENV, "dev").trim();
        Boolean rp = Boolean.parseBoolean(System.getProperty("reportportal", "false"));

        var rb = Runner.builder();
        rb.path("classpath:examples/externalAPIs");
        rb.tags("~@ignore");

//        if (rp)
//        {
//            rb.hook(new KarateHook());
//        }
//
//        if (env.isEmpty() || env.toLowerCase() == "dev")
//        {
//            rb.clientFactory(MockSpringMvcServlet.getMock());
//        }

        Results results = rb.parallel(1);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
