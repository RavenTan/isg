package isg

class AdminManagementController {

	def amazonS3Service;
    Random random = new Random()

    def index() {
    	def managementList = Management.getAll()

    	[managementList:managementList]
    }

    def addManagement(){
    	def management = new Management()
    	def picture = request.getFile('picture')
    	if(!picture.empty) {
            String filename = picture.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.MANAGEMENT.picture."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(picture.getInputStream(), filename, ext, picture.getSize())
            management.picture = amazonS3Service.getFileUrl(filename)
            management.name = params.name
            management.position = params.position
            management.email = params.email
        }
        if(management.save(flush:true)){
            flash.message="Management updated"
        }
        else{
            flash.message="Management failed to update"
        }
        redirect(action:"index")
    }

    def deleteManagement(){
    	def management = Management.get(params.id)
    	amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(management.picture))//delete old pic
    	management.delete(flush:true)
    	flash.message="Deleted"
    	
    	redirect(action:"index")
    }
}
