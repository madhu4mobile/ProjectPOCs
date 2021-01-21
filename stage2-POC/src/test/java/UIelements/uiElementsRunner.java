package UIelements;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;


@KarateOptions(features = "classpath:UIelements", tags = "~@ignore")
public class uiElementsRunner {

    // this will run all *.feature files that exist in sub-directories
    // features with tag @ignore will be ignored
    // see https://github.com/intuit/karate#naming-conventions
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

}
