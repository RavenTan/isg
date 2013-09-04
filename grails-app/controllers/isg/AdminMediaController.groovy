package isg

class AdminMediaController {

	def amazonS3Service;
    Random random = new Random()

    def index() {
    	def mediaList = MediaEvent.getAll()

    	[mediaList:mediaList]
    }

    def addMedia(){
    	def media = new MediaEvent()
    	media.name = params.name
    	media.date = Date.parse("dd-MMM-yyyy", params.date)

    	if(media.save(flush:true)){
            flash.message="Media Event created"
        }
        else{
            flash.message="Failed to create"
        }

        redirect(action:"index")
    }

    def editMedia(){
    	def media = MediaEvent.get(params.id)

    	[media:media]
    }

    def addPicture(){
    	def media = MediaEvent.get(params.id)

        def f = request.getFile('picture')
        if(!f.empty) {
            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.MEDIA.Picture."+media.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                media.addToPictures(amazonS3Service.getFileUrl(filename))
                if(media.save(flush:true)){
                    flash.message="Picture uploaded"
                }
                else{
                    flash.message="Failed to upload"
                }
            }
            else{
                flash.message="Please upload picture file (.jpg, .png, .gif or .tiff)"
            }
        }
        else{
            flash.message="Please select a picture"
        }
        redirect(action:"editMedia", id:media.id)

    }

    def deleteMedia(){
    	def media = MediaEvent.get(params.id)

    	media.pictures.each{
    		amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(it))//delete old pic
    	}

    	media.delete()

    	flash.message="Media Event deleted"

    	redirect(action:"index")
    }
}
