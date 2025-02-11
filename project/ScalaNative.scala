import sbt.{AutoPlugin, fileToRichFile}
import sbt.Keys.{baseDirectory, envVars}

import BuildMode.autoImport.*

import scala.scalanative.build.{GC, Mode, LTO}
import scala.scalanative.sbtplugin.ScalaNativePlugin
import scala.scalanative.sbtplugin.ScalaNativePlugin.autoImport.*

object ScalaNative extends AutoPlugin {
    override def requires = BuildMode && ScalaNativePlugin

    override lazy val projectSettings = Seq(
        nativeConfig := {
            buildMode.value match {
                case BuildMode.Debug | BuildMode.CI =>
                    nativeConfig.value
                        .withGC(GC.boehm)
                        .withIncrementalCompilation(true)
                        .withLTO(LTO.none)
                        .withMode(Mode.debug)
                        .withMultithreading(Some(false))
                        .withOptimize(true)
                        .withSourceLevelDebuggingConfig(_.enableAll)

                case BuildMode.Release =>
                    nativeConfig.value
                        .withGC(GC.boehm)
                        .withLTO(LTO.thin)
                        .withMode(Mode.release)
                        .withMultithreading(Some(false))
                        .withOptimize(true)
            }
        }
    )
}
