<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	    <div class="row-fluid">
            <div class="span12">

                <div class="well player_well">
                    <h2 class="muted">Players</h2>
                    <hr>
                    <h3>${division.name}</h3>
                    <hr>

                    <g:each in="${teamList}" var="team">
                        <h4 class="muted">${team.name}</h4>
                        <table>
                            <g:each in="${team.players}">
                                <tr>
                                    <td>
                                        <a href="${createLink(controller:'player', action:'profile', id:it.id)}"><img class="img-rounded border-thick" src="${it.picture}"/></a>
                                    </td>
                                    <td>
                                        <a href="${createLink(controller:'player', action:'profile', id:it.id)}">
                                            ${it.nickname}<br>
                                            ${it.realname}
                                        </a>
                                    </td>
                                </tr>
                            </g:each>
                        </table>
                        <g:if test="${team.accolades}">
                            <h4>Team Accolades</h4>
                                <ul>
                                    <g:each in="${team.accolades}" var="accolade">
                                        <li>${accolade}</li>
                                    </g:each>
                                </ul>
                        </g:if>
                        <hr>
                    </g:each>


                    <!--
                    <h4 class="muted">Team Exiles</h4>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player2.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player3.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player2.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player.jpg')}"/></a>
                    <hr>
                    <h4 class="muted">Team Outlaws</h4>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player3.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player2.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player3.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'profile')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'player.jpg')}"/></a>
                    <hr>
                    -->
                </div>
            </div>

        </div>
	</body>
</html>
