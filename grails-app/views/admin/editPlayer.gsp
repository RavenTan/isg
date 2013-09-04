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
                    <h3>Player</h3>
                    
                    <g:uploadForm controller="admin" action="updatePlayer" id="${player.id}" params="${[teamId:teamId]}">
                        Nickname: <input name="nickname" type="text" value="${player.nickname}"/><br/>
                        Picture: <input name="picture" type="file"/><br/>
                        Real Name: <input name="realname" type="text" value="${player.realname}"/><br/>
                        Role: <input name="role" type="text" value="${player.role}"/><br/>
                        Date of Birth: <input id="dob" name="dob" type="text" value="${player.dob.format('dd-MMM-yyyy')}"/><br/>
                        Nationality: <input name="nationality" type="text" value="${player.nationality}"/><br/>
                        Competitive Games (One game per line): <textarea name="games" rows="5" ><g:each in="${player.games}" var="game">${game+"\n"}</g:each></textarea>
                        <br>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Update"/>
                    </g:uploadForm>

                    <hr>

                    <h3>Accolades</h3>
                    <table width="100%" cellpadding="10">
                        <g:each in="${player.accolades}" var="accolade">
                            <tr>
                                <td width="50%">
                                    ${accolade.game}
                                </td>
                                <td width="50%">
                                    <a href="${createLink(controller:'admin', action:'editAccolade', id:accolade.id)}">EDIT</a> | <a href="${createLink(controller:'admin', action:'deleteAccolade', id:accolade.id, params:[playerId:player.id])}">DELETE</a>
                                </td>
                            </tr>
                        </g:each>
                        <tr>
                            <td>
                                <a class="btn btn-primary btn-small" href="${createLink(controller:'admin', action:'addAccolade', id:player.id)}">+ Add Accolade</a>
                            </td>
                        </tr>
                    </table>
                    
                </div>
            </div>

        </div>
        <script>
            $(function(){
                $("#dob").datepicker({ dateFormat: 'dd-M-yy' });
            });
        </script>
	</body>
</html>
