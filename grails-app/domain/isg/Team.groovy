package isg

class Team {

	static hasMany = [players:Player, accolades:String]

	String name

    static constraints = {
    }
}
