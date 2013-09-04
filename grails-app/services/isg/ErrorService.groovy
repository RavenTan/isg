package isg

class ErrorService {

    def hashService

    def errLog(obj) {
    	def errorTicket = hashService.genErr()
        obj.errors.allErrors.each{error ->
        		println  "Error ${errorTicket}: ${error}"
                log.info  "Error ${errorTicket}: ${error}"
            }
        errorTicket
    }
}
