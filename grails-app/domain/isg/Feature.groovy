package isg

class Feature {

    String heading
	String subheading
	String content
	String picture
	String pictureUrl
	Date date = new Date()

    static mapping = {
    	subheading type: 'text'
    	content type: 'text'
    	pictureUrl type: 'text'
    }
}
