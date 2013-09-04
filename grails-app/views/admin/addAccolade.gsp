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
                    <h3>New Accolade for ${player.nickname}</h3>
                    
                    <g:uploadForm controller="admin" action="createAccolade" id="${player.id}">
                        Game: <input name="game" type="text" placeholder="Game name"/><br/>
                        <input class="btn btn-primary" type="submit" value="Create"/>
                    </g:uploadForm>

                    <hr>
                </div>
            </div>

        </div>
	</body>
</html>
