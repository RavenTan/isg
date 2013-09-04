package isg

class MediaEvent {

	static hasMany = [pictures:String]

	String name
	Date date

    static constraints = {
    }
}
