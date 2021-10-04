package examples.externalAPIs

import io.gatling.core.Predef._
import com.intuit.karate.gatling.PreDef._

import scala.concurrent.duration._
import scala.language.postfixOps

class TestUsersSimulation extends Simulation {

  /*
  *  Checkout here for the runner in gatling : https://www.kloia.com/blog/step-5-karate-gatling-performance-tests
  */

      val getUser = scenario("get all users and then get the first user by id").exec(karateFeature("classpath:examples/externalAPIs/reqResUsers.feature"))
      val testAUser = scenario("check a user for given id from reqRes.in").exec(karateFeature("classpath:examples/externalAPIs/reqResTestUser.feature"))
      val usersFromReqRes = scenario("sample karate test script from ReqRes.in").exec(karateFeature("classpath:examples/users/users.feature"))

      val protocol = karateProtocol(
        "/pets" -> pauseFor("get" -> 0, "post" -> 0)
      )

      setUp(
        getUser.inject(rampUsers(10).during(5 seconds)),
        testAUser.inject(rampUsers(20).during(5 seconds)),
        usersFromReqRes.inject(rampUsers(15).during(10 seconds))

      )

}
