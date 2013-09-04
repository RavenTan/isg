<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	    <div class="row-fluid">
            <div class="span3">
                <img class="img-rounded border-thick" style="width:100%; max-height:400px;" src="${player.picture}"/>
            </div>
            <div class="span9">

                <div class="well player_profile">
                    <h2>Player Profile</h2>

                    <hr>

                    <strong>Nickname: </strong>${player.nickname}<br>
                    <strong>Real name:  </strong>${player.realname}<br>
                    <g:if test="${player.role}"><strong>Role:  </strong>${player.role}<br></g:if>
                    <strong>DOB:  </strong>${player.dob.format("dd MMM yyyy")}<br>
                    <strong>Nationality:  </strong>${player.nationality}<br>

                    <hr>

                    <!--<strong>Current team: </strong>Exile<br>-->
                    <strong>Competitive game(s): </strong>
                    <g:each in="${player.games}" var="it" status="i">
                        ${i==player.games.size()-1?it:it+", "}
                    </g:each>
                    <br>

                    <g:if test="${player.accolades}">
                        <hr>

                        <h4>Accolades</h4>
                        <g:each in="${player.accolades}" var="accolade">
                            <strong>${accolade.game}</strong>
                            <ul>
                                <g:each in="${accolade.events}">
                                    <li>${it}</li>
                                </g:each>
                            </ul>
                        </g:each>
                    </g:if>

                    <!--
                    <strong>League of Legends</strong>
                    <ul>
                        <li>2012/13: Teemo Cup 5 - Champion</li>
                        <li>22/13: IGN Pro League Qualifier #5 – 1st Runner-up</li>
                        <li>2012/13: League of Legends Season 2 Regional Qualifiers – 1st Runner-up</li>
                        <li>2012/13: Tristana Cup - Champion</li>
                        <li>2012/13: Everlasting Championship - Champion</li>
                        <li>2012/13: National University of Singapore Competition - Champion</li>
                        <li>2012/13: Cyber Gaming Festival - Champion</li>
                        <li>2012/13: IEM Brazil SEA/MY Qualifiers - 1st Runner-up</li>
                        <li>2012/13: Singapore Management University Cup Qualifiers - 1st Runner-up</li>
                        <li>2012/13: Alienware Invasion Season #1 - Champion</li>
                    </ul>
                    -->

                </div>
            </div>
        </div>
	</body>
</html>
