package isg

class Player {

	static hasMany = [games:String, accolades:Accolade]

	String picture

	String nickname
	String realname
	String role
	Date dob
	String nationality

    static constraints = {

    }
}
