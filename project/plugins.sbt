def getProperty(key: String): String = {
    import com.typesafe.config.ConfigFactory

    ConfigFactory.parseFile(new File("project/build.properties")).getString(key)
}

addSbtPlugin("org.scala-native" % "sbt-scala-native" % getProperty("scalaNative.version"))
addSbtPlugin("org.scalameta" % "sbt-scalafmt" % getProperty("scalafmt.version"))
