package isg

class MediaController {

    def index() {
    	def mediaEventList = MediaEvent.getAll()
    	[mediaEventList:mediaEventList]
    }
    def article() {
    	def mediaEvent = MediaEvent.get(params.id)
    	[mediaEvent:mediaEvent]
    }
}
