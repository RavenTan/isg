package isg

import grails.converters.*

class AdminEventController {

    def index() { }

    def saveEvent() {
    	def response = [:]

    	def name = params.name
        def location = params.location
        def start = params.start
        def end = params.end

        def event = new Event()
        event.name = name
        event.location = location
        event.start = start
        event.end = end

        if(event.save(flush:true)){
  			response['status'] = "0"
  		}
  		else{
  			def errorTicket = errorService.errLog(thread)//print errors
            response['status'] = 1
			response['message'] = "Save Error: "+errorTicket
  		}

		if(params.callback)
            render "${params.callback}(${response as JSON})" 
        else
            render response as JSON
    }

    def getEvents() {
    	def response = [:]

        response['status'] = 0;
        response['events'] = Event.getAll()        

        if(params.callback)
            render "${params.callback}(${response as JSON})" 
        else
            render response as JSON 
    }

    def deleteEvent(){
    	def response = [:]

    	def name = params.name
        def location = params.location
        def start = params.start
        def end = params.end

        println name
        println location
        println start
        println end

    	def eventList = Event.withCriteria {
		  eq('name', name)
		  eq('location', location)
		  eq('start', start)
		  eq('end', end)
		}

		if(eventList[0]){
			eventList[0].delete(flush:true)
        	response['status'] = 0; 
		}
		else{
            response['status'] = 1
			response['message'] = "Failed to find event to delete"
		}

        if(params.callback)
            render "${params.callback}(${response as JSON})" 
        else
            render response as JSON 
    }
}
