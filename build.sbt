val scala3Version = "3.8.0-RC1-bin-20250819-1f13619-NIGHTLY"
ThisBuild / resolvers += ("Artifactory" at "https://repo.scala-lang.org/artifactory/maven-nightlies/")

lazy val root = project
  .in(file("."))
  .settings(
    name := "Scala 3 Project Template with Capture Checking",
    version := "0.1.0-SNAPSHOT",

    scalaVersion := scala3Version,

    libraryDependencies += "org.scalameta" %% "munit" % "1.0.0" % Test
  )
