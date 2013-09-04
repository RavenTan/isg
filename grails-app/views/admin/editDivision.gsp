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
                    <h3>Division</h3>
                    
                    <g:uploadForm controller="admin" action="updateDivision" id="${division.id}">
                        Name: <input name="name" type="text" value="${division.name}"/><br/>
                        Picture: <input name="picture" type="file"/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Update"/>
                    </g:uploadForm>

                    <hr>

                    <h3>Teams</h3>
                    <table width="100%" cellpadding="10">
                        <g:each in="${division.teams}" var="team">
                            <tr>
                                <td width="50%">
                                    ${team.name==""?"No name":team.name}
                                </td>
                                <td width="50%">
                                    <a href="${createLink(controller:'admin', action:'editTeam', id:team.id)}">EDIT</a> | <a href="${createLink(controller:'admin', action:'deleteTeam', id:team.id, params:[divisionId:division.id])}">DELETE</a>
                                </td>
                            </tr>
                        </g:each>
                    <tr>
                        <td>
                            <a class="btn btn-primary btn-small" href="${createLink(controller:'admin', action:'addTeam', id:division.id)}">+ Add Team</a>
                        </td>
                    </tr>
                    </table>
                    
                </div>
            </div>

        </div>
	</body>
</html>
