package isg

import org.jets3t.service.S3Service
import org.jets3t.service.security.AWSCredentials
import org.jets3t.service.impl.rest.httpclient.RestS3Service
import org.jets3t.service.model.S3Bucket
import org.jets3t.service.model.S3Object
import org.jets3t.service.acl.AccessControlList
 
class AmazonS3Service {
     
    static String accessKey="AKIAJADJVXTUBUN3GAIA"
    static String secretKey="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"
    static RestS3Service s3 = new RestS3Service(new AWSCredentials(accessKey, secretKey))
        boolean transactional = false
    String bucketProfilePath="isgaming"
    String defaultBucketLocation=S3Bucket.LOCATION_ASIA_PACIFIC_SINGAPORE
    String bucketLocationUrl="https://s3-ap-southeast-1.amazonaws.com/"
     
    Map mimeExtensionMap = [
            "png" : "image/png",
            "jpg": "image/jpeg",
            "gif": "image/gif",
            "tiff": "image/tiff"//,
            //"pdf": "application/pdf",
            //"mpeg": "video/mpeg",
            //"mp4": "video/mp4",
            //"mov": "video/quicktime",
            //"wmv": "video/x-ms-wmv",
            //"html": "text/html",
            //"xml": "text/xml",
            //"mp3": "audio/mpeg",
            //"flv": "application/octet-stream"
    ]
     
    S3Bucket getProfileBucket()
    {
    		 S3Bucket bucket = s3.getOrCreateBucket(bucketProfilePath, defaultBucketLocation)
	        bucket.setAcl AccessControlList.REST_CANNED_PUBLIC_READ
	        return bucket
       
    }

    /*
    boolean isGoodExtention(filename){
        String ext = filename.substring(filename.lastIndexOf(".")+1)  
        if (mimeExtensionMap.containsKey(ext.toLowerCase()))
            return true
        else
            return false
    }
    */
     
    boolean put(inputstream, name, ext, length)
    {
        if (mimeExtensionMap.containsKey(ext.toLowerCase()))
        {
            String mime = mimeExtensionMap[ext.toLowerCase()]; 
            S3Bucket bucket = getProfileBucket()
            S3Object up = new S3Object()
            up.setAcl AccessControlList.REST_CANNED_PUBLIC_READ
            up.setContentLength length
            up.setContentType mime
            up.setDataInputStream inputstream
            up.setKey name
            up.setBucketName bucket.getName()
            s3.putObject bucket, up
            return true
        }
        else{
        	return false
        }
    }



    void delete(filename){
        S3Bucket bucket = getProfileBucket()
        try{
            S3Object objectDetailsOnly = s3.getObjectDetails(bucket, filename);
            s3.deleteObject(bucket, objectDetailsOnly.getKey());
        }
        catch(Exception e){
            
        }
    }

    String getFileUrl(filename)
    {
    	S3Bucket bucket = getProfileBucket()
    	S3Object objectDetailsOnly = s3.getObjectDetails(bucket, filename);
		bucketLocationUrl+bucket.getName() + "/" + objectDetailsOnly.getKey()
    }

    String getFilenameFromUrl(url)
    {
        if(!url)
            url=""
    	S3Bucket bucket = getProfileBucket()
    	url.replace(bucketLocationUrl+bucket.getName()+"/", "")
    }

    /*
    void putXML(text, name, uid)
    {
        String mime = mimeExtensionMap["xml"]; 
        S3Bucket bucket = makeBucket(uid)
        S3Object up = new S3Object(bucket, name, text)
        up.setAcl AccessControlList.REST_CANNED_PUBLIC_READ
        up.setContentLength text.length()
        up.setContentType mime
        s3.putObject bucket, up
    }*/
}