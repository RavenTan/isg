package isg

class AdminContactController {

	def amazonS3Service;
    Random random = new Random()

    def index() {}

    def updateContact(){
    	def contact = Contact.get(1)
    	if(!contact)
    		contact = new Contact()
    	def mapPicture = request.getFile('mapPicture')
    	if(!mapPicture.empty) {
            String filename = mapPicture.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.Contact.mapPicture."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(mapPicture.getInputStream(), filename, ext, mapPicture.getSize())
            amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(contact.mapPicture))//delete old pic
            contact.mapPicture = amazonS3Service.getFileUrl(filename)
            contact.address = params.address
            contact.telephone = params.telephone
            contact.mapUrl = params.mapUrl
        }
        if(contact.save(flush:true)){
            flash.message="Contact Us updated"
        }
        else{
            contact.message="Contact Us failed to update"
        }
        redirect(action:"index")
    }
}
