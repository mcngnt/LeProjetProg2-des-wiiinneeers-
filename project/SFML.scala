import sbt.*
import sbt.Keys.{libraryDependencies, resolvers}

import BuildMode.autoImport.*

import org.portablescala.sbtplatformdeps.PlatformDepsPlugin.autoImport.*

object SFML extends AutoPlugin {
    override def requires = BuildMode && ScalaNative

    override lazy val projectSettings = Seq(
        resolvers += "Codeberg" at "https://codeberg.org/api/packages/lafeychine/maven",
        libraryDependencies += "org.codeberg.lafeychine" %%% "scala-native-sfml" % getProperty("sfml.version")
    )
}
