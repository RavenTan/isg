package isg

class Home {

	static hasMany = [sponsors:Sponsor, carouselItems:CarouselItem]

	String background
	String logo
	String topSponsor1
	String topSponsor1Url
	String topSponsor2
	String topSponsor2Url
	String advertisementSide
	String advertisementSideUrl
	String advertisementMid
	String advertisementMidUrl


    static mapping = {
    	topSponsor1Url type: 'text'
    	topSponsor2Url type: 'text'
    	advertisementSideUrl type: 'text'
    	advertisementMidUrl type: 'text'
    }
}
