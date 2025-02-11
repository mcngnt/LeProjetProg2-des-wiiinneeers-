import sbt.{AutoPlugin, Compile, fileToRichFile}
import sbt.Keys.{doc, scalacOptions, target}

import BuildMode.autoImport.*

object Documentation extends AutoPlugin {
    override def requires = BuildMode

    private val docOptions = Seq(
        "-snippet-compiler:docs=compile"
    )

    override lazy val projectSettings = Seq(
        Compile / doc / scalacOptions := {
            buildMode.value match {
                case BuildMode.Debug                  => docOptions
                case BuildMode.Release | BuildMode.CI => docOptions :+ "-Werror"
            }
        },
        Compile / doc / target := target.value / "docs"
    )
}
