package examples.externalAPIs

import io.gatling.core.Predef._
import com.intuit.karate.gatling.PreDef._
import scala.concurrent.duration._

class TestUsersSimulation extends Simulation {

  val getUser = scenario("getUsersCall").exec(karateFeature("classpath:examples/externalAPIs/reqResTestUser.feature"))

  setUp(
    getUser.inject(rampUsers(1000) during(5 seconds))
  )
}
