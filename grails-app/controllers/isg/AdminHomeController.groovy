package isg

class AdminHomeController {

	def amazonS3Service;
    Random random = new Random()

    def index() { }

    def updateBackground(){
    	def home = Home.get(1)
    	def background = request.getFile('background')
    	if(!background.empty) {
            String filename = background.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.HOME.background."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(background.getInputStream(), filename, ext, background.getSize())
            amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(home.background))//delete old pic
            home.background = amazonS3Service.getFileUrl(filename)
        }
        if(home.save(flush:true)){
            flash.message="Background updated"
        }
        else{
            flash.message="Background failed to update"
        }
        redirect(action:"index")
    }
    def updateLogo(){
    	def home = Home.get(1)
    	def logo = request.getFile('logo')
    	if(!logo.empty) {
            String filename = logo.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.HOME.logo."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(logo.getInputStream(), filename, ext, logo.getSize())
            amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(home.logo))//delete old pic
            home.logo = amazonS3Service.getFileUrl(filename)
        }
        if(home.save(flush:true)){
            flash.message="Logo updated"
        }
        else{
            flash.message="Logo failed to update"
        }
        redirect(action:"index")
    }
    def updateTopSponsor1(){
    	def home = Home.get(1)
    	def topSponsor1 = request.getFile('topSponsor1')
    	if(!topSponsor1.empty) {
            String filename = topSponsor1.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.HOME.topSponsor1."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(topSponsor1.getInputStream(), filename, ext, topSponsor1.getSize())
            amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(home.topSponsor1))//delete old pic
            home.topSponsor1 = amazonS3Service.getFileUrl(filename)
            home.topSponsor1Url = params.url
        }
        if(home.save(flush:true)){
            flash.message="Top Sponsor 1 updated"
        }
        else{
            flash.message="Top Sponsor 1 failed to update"
        }
        redirect(action:"index")
    }
    def updateTopSponsor2(){
    	def home = Home.get(1)
    	def topSponsor2 = request.getFile('topSponsor2')
    	if(!topSponsor2.empty) {
            String filename = topSponsor2.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.HOME.topSponsor2."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(topSponsor2.getInputStream(), filename, ext, topSponsor2.getSize())
            amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(home.topSponsor2))//delete old pic
            home.topSponsor2 = amazonS3Service.getFileUrl(filename)
            home.topSponsor2Url = params.url
        }
        if(home.save(flush:true)){
            flash.message="Top Sponsor 2 updated"
        }
        else{
            flash.message="Top Sponsor 2 failed to update"
        }
        redirect(action:"index")
    }
    def updateAdvertisementSide(){
    	def home = Home.get(1)
    	def advertisementSide = request.getFile('advertisementSide')
    	if(!advertisementSide.empty) {
            String filename = advertisementSide.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.HOME.advertisementSide."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(advertisementSide.getInputStream(), filename, ext, advertisementSide.getSize())
            amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(home.advertisementSide))//delete old pic
            home.advertisementSide = amazonS3Service.getFileUrl(filename)
            home.advertisementSideUrl = params.url
        }
        if(home.save(flush:true)){
            flash.message="Advertisement Side updated"
        }
        else{
            flash.message="Advertisement Side failed to update"
        }
        redirect(action:"index")
    }
    def updateAdvertisementMid(){
    	def home = Home.get(1)
    	def advertisementMid = request.getFile('advertisementMid')
    	if(!advertisementMid.empty) {
            String filename = advertisementMid.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.HOME.advertisementMid."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(advertisementMid.getInputStream(), filename, ext, advertisementMid.getSize())
            amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(home.advertisementMid))//delete old pic
            home.advertisementMid = amazonS3Service.getFileUrl(filename)
            home.advertisementMidUrl = params.url
        }
        if(home.save(flush:true)){
            flash.message="Advertisement Mid updated"
        }
        else{
            flash.message="Advertisement Mid failed to update"
        }
        redirect(action:"index")
    }

    def deleteSponsor(){
    	def home = Home.get(1)
        def sponsor = Sponsor.get(params.id)
    	amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(sponsor.imgUrl))//delete old pic
        home.removeFromSponsors(sponsor)
    	if(home.save(flush:true)){
        	flash.message="Sponsor deleted"
        }
        else{
            flash.message="Failed to delete sponsor"
        }

    	redirect(action:"index")
    	
    }

    def addSponsor(){
    	def home = Home.get(1)
    	def sfile = request.getFile('sponsor')
    	if(!sfile.empty) {

            String filename = sfile.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.HOME.sponsor."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(sfile.getInputStream(), filename, ext, sfile.getSize())
            Sponsor sponsor = new Sponsor()
            sponsor.imgUrl = amazonS3Service.getFileUrl(filename)
            sponsor.url = params.url
            sponsor.save()
            home.addToSponsors(sponsor)
            if(home.save(flush:true)){
            	flash.message="Sponsor added"
	        }
	        else{
	            flash.message="Failed to add sponsor"
	        }
        }
        else{
        	flash.message="Picture not selected"
        }
        
        redirect(action:"index")
    }

    def addCarouselItem(){
    	def home = Home.get(1)
    	def ci = new CarouselItem()
    	def picture = request.getFile('picture')
		if(!picture.empty) {
            String filename = picture.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.HOME.carousel."+random.nextInt(10 ** 10)+filename
            amazonS3Service.put(picture.getInputStream(), filename, ext, picture.getSize())
            ci.picture = amazonS3Service.getFileUrl(filename)
            ci.url = params.url
    		ci.heading = params.heading
    		ci.subheading = params.subheading
            if(ci.save(flush:true)){
            	home.addToCarouselItems(ci)
            	if(home.save(flush:true)){
	            	flash.message="Item added"		        
	            }
		        else{
		            flash.message="Failed to add Item"
		        }
	        }
	        else{
	            flash.message="Failed to add Item"
	        }
        }
        else{
        	flash.message="Picture not selected"
        }
        redirect(action:"index")
    }
    def deleteCarouseItem(){
    	def home = Home.get(1)
    	def ci = CarouselItem.get(params.id)
    	amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(ci.picture))//delete old pic
    	home.removeFromCarouselItems(ci)
    	ci.delete()
    	if(home.save(flush:true)){
        	flash.message="Item deleted"		        
        }
        else{
            flash.message="Failed to delete Item"
        }
        redirect(action:"index")
    }	

}
