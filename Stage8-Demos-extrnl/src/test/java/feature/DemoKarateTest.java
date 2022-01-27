package feature;

import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

import java.util.Calendar;

@RunWith(Karate.class)
@CucumberOptions(features = "src/test/resources")
public class DemoKarateTest {
}

