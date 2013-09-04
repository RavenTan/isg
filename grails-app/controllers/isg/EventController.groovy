package isg

import grails.converters.*

class EventController {

    def index() {
    	def events = Event.getAll()

    	[events:events]
    }

    def article(){
    	def event=Event.get(params.id)

    	[event:event]
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
}
