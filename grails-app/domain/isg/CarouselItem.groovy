package isg

class CarouselItem {

	String picture
	String heading
	String subheading
	String url

    static mapping = {
    	subheading type: 'text'
    }
}
