package auto_UI_CustApp;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

@KarateOptions(tags = "~@ignore")
public class custAppRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}