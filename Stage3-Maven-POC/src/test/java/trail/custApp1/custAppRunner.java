package trail.custApp1;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

//@KarateOptions(features="classpath:trial",tags = "~@ignore")
public class custAppRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}