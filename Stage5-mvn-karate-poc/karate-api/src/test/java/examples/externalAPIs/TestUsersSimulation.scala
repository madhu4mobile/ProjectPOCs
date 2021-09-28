package examples.externalAPIs

import io.gatling.core.Predef._
import com.intuit.karate.gatling.PreDef._

import scala.concurrent.duration._
import scala.language.postfixOps

class TestUsersSimulation extends Simulation {

  val getUser = scenario("get all users and then get the first user by id").exec(karateFeature("classpath:examples/externalAPIs/reqResUsers.feature"))

  setUp(
    getUser.inject(rampUsers(1000).during(5 seconds)
  )
  val testAUser = scenario("testAGivenUser").exec(karateFeature("classpath:examples/externalAPIs/reqResTestUser.feature"))

  setUp(
    getUser.inject(rampUsers(1000).during(5 seconds))
  )

  val create = scenario("createUser").exec(karateFeature("classpath:examples/users/users.feature")).exec(session => {
    println("*** id in gatling: " + session("id").as[String])
    println("*** session status in gatling: " + session.status)
    session
  }
  )
  setUp(
    create.inject(rampUsers(200).during(5 seconds))
  )
}
