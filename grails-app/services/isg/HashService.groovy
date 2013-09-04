package isg

class HashService {

    private def md5(text) {
		def digest = MessageDigest.getInstance("MD5")
		new BigInteger(1,digest.digest(text.getBytes())).toString(16).padLeft(32,"0")
    }

    def genPass(text){
    	md5(new Date().getDateTimeString()+"isg"+text)
    }

    def genErr(){
    	md5(new Date().getDateTimeString()+"error")
    }
}
