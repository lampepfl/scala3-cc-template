val scala3Version = "3.8.5-RC1-bin-20260421-d23d5ef-NIGHTLY"
ThisBuild / resolvers += Resolver.scalaNightlyRepository

lazy val root = project
  .in(file("."))
  .settings(
    name := "Scala 3 Project Template with Capture Checking",
    version := "0.1.0-SNAPSHOT",

    scalaVersion := scala3Version,

    libraryDependencies += "org.scalameta" %% "munit" % "1.0.0" % Test
  )
