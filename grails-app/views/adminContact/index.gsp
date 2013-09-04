<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="admin"/>
	</head>

	<body>
	    <div class="row-fluid">
            <div class="span12">
                <g:if test="${flash.message}">
                    <div class="alert">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        ${flash.message}
                    </div>
                </g:if>
                <div class="well division_well">
                    <h2>Admin</h2>
                    <hr>
                    <h4>Contact Us</h4>
                    <br>    
                    <g:uploadForm controller="adminContact" action="updateContact">
                        <h5>New:</h5>
                        
                        Address: <input name="address" type="text"/><br/>
                        Telephone: <input name="telephone" type="text"/><br/>
                        Map Url: <input name="mapUrl" type="text"/><br>
                        Map Picture: <input name="mapPicture" type="file"/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Update"/>
                    </g:uploadForm>

                </div>
            </div>

        </div>
	</body>
</html>
