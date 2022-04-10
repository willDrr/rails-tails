import { Application } from "@hotwired/stimulus"
import {Popover, Alert} from "tailwindcss-stimulus-components"


const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

application.register('popover', Popover)
application.register('alert', Alert)
application.register('modal', Modal)


export { application }
