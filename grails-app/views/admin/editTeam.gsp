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
                    <h3>Team</h3>

                    <g:uploadForm controller="admin" action="updateTeam" id="${team.id}">
                        Name: <input name="name" type="text" value="${team.name}"/><br/>
                        Accolades (one per line):
                        <textarea name="accolades" class="input-block-level" rows="10" ><g:each in="${team.accolades}" var="accolade">${accolade+"\n"}</g:each></textarea>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Update"/>
                    </g:uploadForm>

                    <hr>
                    <h3>Players</h3>
                    <g:each in="${team.players}" var="player">

                        <img class="img-rounded border-thick" src="${player.picture}"/> <a href="${createLink(controller:'admin', action:'editPlayer', id:player.id, params:[teamId:team.id])}">EDIT</a> | <a href="${createLink(controller:'admin', action:'deletePlayer', id:player.id, params:[teamId:team.id])}">DELETE</a><br>

                        <hr class="dull">
                    </g:each>
                    <a class="btn btn-primary btn-small" href="${createLink(controller:'admin', action:'addPlayer', id:team.id)}">+ Add Player</a>
                    <br>
                </div>
            </div>

        </div>
	</body>
</html>
