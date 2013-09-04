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
                    <h4>Management</h4>
                    <br>
                    <g:each in="${managementList}">
                        <div style="margin-bottom:20px;">
                            <img class="img-rounded border-thick" src="${it.picture}"/> <a href="${createLink(controller:'adminManagement', action:'deleteManagement', id:it.id)}">DELETE</a>
                        </div>
                    </g:each>      
                    <g:uploadForm controller="adminManagement" action="addManagement">
                        <h5>New:</h5>
                        Picture: <input name="picture" type="file"/><br>
                        Name: <input name="name" type="text"/><br/>
                        Position: <input name="position" type="text"/><br/>
                        Email: <input name="email" type="text"/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Add"/>
                    </g:uploadForm>

                </div>
            </div>

        </div>
	</body>
</html>
