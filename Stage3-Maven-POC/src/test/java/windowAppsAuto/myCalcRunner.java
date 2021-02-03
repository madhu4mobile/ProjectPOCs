package windowAppsAuto;


import com.intuit.karate.junit5.Karate;

public class myCalcRunner {

    // this will run all *.feature files that exist in sub-directories
    // see https://github.com/intuit/karate#naming-conventions
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

}
