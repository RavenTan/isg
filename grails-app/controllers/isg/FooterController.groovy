package isg

class FooterController {

    def about() {
    	def about = Footer.get(1).about
        [about:about]
    }

    def management(){
        def managementList = Management.getAll()
        [managementList:managementList]
    }

    def contact(){
        def contact = Contact.get(1)
        [contact:contact]
    }

    def users(){

    }

    def privacy(){
        def privacy = Footer.get(1).privacy
        [privacy:privacy]
    }

    def terms(){
        def terms = Footer.get(1).terms
        [terms:terms]
    }
}