package isg

class AdminFooterController {

    def about() { }

    def updateAbout(){
    	def footer = Footer.get(1)
    	if(!footer){
    		footer = new Footer()
    		footer.management = ""
    		footer.about = ""
    		footer.contact = ""
    		footer.users = ""
    		footer.privacy = ""
    		footer.terms = ""
    	}
        def aboutString = params.aboutString.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
        footer.about = aboutString
        if(footer.save(flush:true)){
            flash.message="About Us updated"
        }
        else{
            flash.message="About Us failed to update"
        }

        redirect(action:"about")
    }

    def privacy() { }

    def updatePrivacy(){
    	def footer = Footer.get(1)
    	if(!footer){
    		footer = new Footer()
    		footer.management = ""
    		footer.about = ""
    		footer.contact = ""
    		footer.users = ""
    		footer.privacy = ""
    		footer.terms = ""
    	}
        def privacyString = params.privacyString.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
        footer.privacy = privacyString
        if(footer.save(flush:true)){
            flash.message="Privacy updated"
        }
        else{
            flash.message="Privacy failed to update"
        }

        redirect(action:"privacy")
    }

    def terms() { }

    def updateTerms(){
    	def footer = Footer.get(1)
    	if(!footer){
    		footer = new Footer()
    		footer.management = ""
    		footer.about = ""
    		footer.contact = ""
    		footer.users = ""
    		footer.privacy = ""
    		footer.terms = ""
    	}
        def termsString = params.termsString.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
        footer.terms = termsString
        if(footer.save(flush:true)){
            flash.message="Terms updated"
        }
        else{
            flash.message="Terms failed to update"
        }

        redirect(action:"terms")
    }


}
