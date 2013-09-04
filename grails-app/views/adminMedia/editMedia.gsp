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
                    <h3>${media.name}</h3>

                    <g:each in="${media.pictures}">
                        <img src="${it}"/>
                    </g:each>      
                    <g:uploadForm controller="adminMedia" action="addPicture" id="${media.id}">
                        <h5>Add picture</h5>
                        Picture: <input name="picture" type="file"/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Upload"/>
                    </g:uploadForm>

                </div>
            </div>

        </div>
	</body>
</html>