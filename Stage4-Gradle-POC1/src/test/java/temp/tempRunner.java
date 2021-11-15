package temp;

import com.intuit.karate.FileUtils;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;



public class tempRunner {
//    @BeforeClass
//    public static void beforeClass() throws Exception {
//        TestBase.beforeClass();
//    }

    @Test
    public void testParallel() {
        System.setProperty("karate.env", "demo"); // ensure reset if other tests (e.g. mock) had set env in CI
        Results results = Runner.path("classpath:").tags("~@ignore").parallel(5);
        //generateReport(((Results) results).getReportDir());
        //assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }

//    private void assertTrue(String errorMessages, boolean b) {
//    }

//    public static void generateReport(String karateOutputPath) {
//        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
//        List<String> jsonPaths = new ArrayList(jsonFiles.size());
//        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
//        Configuration config = new Configuration(new File("target"), "demo");
//        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
//        reportBuilder.generateReports();
//    }

}

