package auto_UI_phpTravels;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

@KarateOptions(features="classpath:auto_UI_phpTravels",tags = "~@ignore")
public class flightRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}