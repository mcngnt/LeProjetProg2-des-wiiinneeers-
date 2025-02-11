import sbt.AutoPlugin
import sbt.Keys.scalacOptions

import BuildMode.autoImport.*

object Linter extends AutoPlugin {
    override def requires = BuildMode

    private val lintOptions = Seq(
        "-deprecation",
        "-feature",
        "-unchecked",
        "-Wunused:all",
        "-Wunused:strict-no-implicit-warn",
        "-Wunused:unsafe-warn-patvars",
        "-Wvalue-discard"
    )

    override lazy val projectSettings = Seq(
        scalacOptions := {
            buildMode.value match {
                case BuildMode.Debug                  => lintOptions
                case BuildMode.Release | BuildMode.CI => lintOptions :+ "-Werror"
            }
        }
    )
}
