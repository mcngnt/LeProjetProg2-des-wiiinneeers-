import swing._
import swing.event._


object MyApp extends SimpleSwingApplication {
	def top = new MainFrame {
		title = "MyApplication"
		val myButton = new Button("Click here")
		val label = new Label("Not Clicked")
		contents = new BorderPanel {
			add(label, BorderPanel.Position.North)
			add(myButton, BorderPanel.Position.Center)
		}

		listenTo(myButton)
		reactions += {
			case ButtonClicked(source) => label.text = "Clicked"
			case _ => {}
		}
	}
}
