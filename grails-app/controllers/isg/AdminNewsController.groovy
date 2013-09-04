package isg

class AdminNewsController {

	def amazonS3Service;
    Random random = new Random()

    def index() {
    	def newsList = News.getAll()
        newsList.sort{a,b -> 
           b.date <=> a.date
        }
    	[newsList:newsList]
    }

 	def createNews(){
        def news = new News()
        def f = request.getFile('picture')
        if(!f.empty) {
            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.News."+news.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                news.picture = amazonS3Service.getFileUrl(filename)
                news.heading = params.heading.trim()
                news.subheading = params.subheading.trim()
                news.pictureUrl = params.pictureUrl.trim()
                def contentString = params.content.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
                news.content = contentString

                if(news.save(flush:true)){
                    flash.message="News created"
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
            news.picture = ""
            news.pictureUrl = ""
            news.heading = params.heading.trim()
            news.subheading = params.subheading.trim()
            def contentString = params.content.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
            news.content = contentString

            if(news.save(flush:true)){
                flash.message="News created, without picture"
            }
            else{
                flash.message="Failed to create"
            }
        }
        redirect(action:"index")
    } 

    def editNews(){
    	def news = News.get(params.id)
    	[news:news]
    }

    def updateNews(){
        def news = News.get(params.id)
        def f = request.getFile('picture')
        if(!f.empty) {
            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.News."+news.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(news.picture))//delete old pic
                news.picture = amazonS3Service.getFileUrl(filename)
                news.heading = params.heading.trim()
                news.subheading = params.subheading.trim()
                news.pictureUrl = params.pictureUrl.trim()
                def contentString = params.content.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
                news.content = contentString

                if(news.save(flush:true)){
                    flash.message="News updated"
                }
                else{
                    flash.message="News failed to update"
                }
            }
            else{
                flash.message="Please upload picture file (.jpg, .png, .gif or .tiff)"
            }
        }
        else{
            news.heading = params.heading.trim()
            news.subheading = params.subheading.trim()
            news.pictureUrl = params.pictureUrl.trim()
            def contentString = params.content.trim().replaceAll("\r\n|\n\r|\n|\r","<br>")
            news.content = contentString

            if(news.save(flush:true)){
                flash.message="News updated"
            }
            else{
                flash.message="News failed to update"
            }
        }
        
        redirect(action:"editNews", id:params.id)
    }

    def deleteNews(){
        def news = News.get(params.id)

        amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(news.picture))//delete old pic
        news.delete(flush:true)
        flash.message="News deleted"

        redirect(action:"index")
    }
}
