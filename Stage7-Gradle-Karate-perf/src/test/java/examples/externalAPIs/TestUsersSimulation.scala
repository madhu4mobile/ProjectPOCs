package examples.externalAPIs

import com.intuit.karate.gatling.PreDef.karateFeature
import io.gatling.core.Predef.{Simulation, openInjectionProfileFactory, rampUsers, scenario}

import scala.concurrent.duration.DurationInt

class TestUsersSimulation extends Simulation {

  val getUser = scenario("get all users and then get the first user by id").exec(karateFeature("classpath:examples/externalAPIs/reqResTestUser.feature"))

  setUp(
    getUser.inject(rampUsers(1000) during(5 seconds))
  )
}
