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
                    <h3>New ${division.name} Team</h3>
                    
                    <g:uploadForm controller="admin" action="createTeam" id="${division.id}">
                        Name: <input name="name" type="text" placeholder="Team name"/><br/>
                        <input class="btn btn-primary" type="submit" value="Create"/>
                    </g:uploadForm>

                    <hr>
                </div>
            </div>

        </div>
	</body>
</html>
