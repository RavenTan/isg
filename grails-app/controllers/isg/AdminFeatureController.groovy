package isg

class AdminFeatureController {

	def amazonS3Service;
    Random random = new Random()

    def index() {
    	def featureList = Feature.getAll()
        featureList.sort{a,b -> 
           b.date <=> a.date
        }
    	[featureList:featureList]
    }

 	def createFeature(){
        def feature = new Feature()
        def f = request.getFile('picture')
        if(!f.empty) {
            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.Feature."+feature.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                feature.picture = amazonS3Service.getFileUrl(filename)
                feature.heading = params.heading.trim()
                feature.subheading = params.subheading.trim()
                feature.pictureUrl = params.pictureUrl.trim()
                def contentString = params.content.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
                feature.content = contentString

                if(feature.save(flush:true)){
                    flash.message="Feature created"
                }
                else{
                    flash.message="Failed to create"
                }
            }
            else{
                flash.message="Please upload picture file (.jpg, .png, .gif or .tiff)"
            }
        }
        else{
            //no picture
            feature.picture = ""
            feature.pictureUrl = ""
            feature.heading = params.heading.trim()
            feature.subheading = params.subheading.trim()
            def contentString = params.content.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
            feature.content = contentString

            if(feature.save(flush:true)){
                flash.message="Feature created, without picture"
            }
            else{
                flash.message="Failed to create"
            }
        }
        redirect(action:"index")
    } 

    def editFeature(){
    	def feature = Feature.get(params.id)
    	[feature:feature]
    }

    def updateFeature(){
        def feature = Feature.get(params.id)
        def f = request.getFile('picture')
        if(!f.empty) {
            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.Feature."+feature.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(feature.picture))//delete old pic
                feature.picture = amazonS3Service.getFileUrl(filename)
                feature.heading = params.heading.trim()
                feature.subheading = params.subheading.trim()
                feature.pictureUrl = params.pictureUrl.trim()
                def contentString = params.content.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
                feature.content = contentString

                if(feature.save(flush:true)){
                    flash.message="Feature updated"
                }
                else{
                    flash.message="Feature failed to update"
                }
            }
            else{
                flash.message="Please upload picture file (.jpg, .png, .gif or .tiff)"
            }
        }
        else{
            feature.heading = params.heading.trim()
            feature.subheading = params.subheading.trim()
            feature.pictureUrl = params.pictureUrl.trim()
            def contentString = params.content.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
            feature.content = contentString

            if(feature.save(flush:true)){
                flash.message="Feature updated"
            }
            else{
                flash.message="Feature failed to update"
            }
        }
        
        redirect(action:"editFeature", id:params.id)
    }

    def deleteFeature(){
        def feature = Feature.get(params.id)

        amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(feature.picture))//delete old pic
        feature.delete(flush:true)
        flash.message="Feature deleted"

        redirect(action:"index")
    }
}
