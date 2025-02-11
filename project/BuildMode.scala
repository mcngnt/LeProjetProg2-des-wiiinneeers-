import java.io.File
import scala.collection.immutable.Map

import sbt.{AutoPlugin, settingKey}
import sbt.Keys.scalaVersion

object BuildMode extends AutoPlugin {
    sealed trait Mode
    case object CI extends Mode
    case object Debug extends Mode
    case object Release extends Mode

    object autoImport {
        val buildMode = settingKey[Mode]("Configuration of the build mode")

        def getProperty(key: String): String = {
            import com.typesafe.config.ConfigFactory

            ConfigFactory.parseFile(new File("project/build.properties")).getString(key)
        }
    }

    import autoImport.*

    override lazy val projectSettings = Seq(
        buildMode := BuildMode.Release,
        scalaVersion := getProperty("scala.version")
    )
}
