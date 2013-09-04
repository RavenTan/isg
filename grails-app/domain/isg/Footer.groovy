package isg

class Footer {

	String about
	String management
	String contact
	String users
	String privacy
	String terms

    static mapping = {
    	about type: 'text'
    	management type: 'text'
    	contact type: 'text'
    	users type: 'text'
    	privacy type: 'text'
    	terms type: 'text'
    }
}
