<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	    <div class="row-fluid">
            <div class="span12">
                <div class="well division_well">
                    <h2>Players</h2>
                    <hr>
                    <h3>Divisions</h3>
                    <g:each in="${divisionList}">
                        <a href="${createLink(controller:'player', action:'division', id:it.id)}"><img class="img-rounded border-thick" src="${it.picture}"/></a>
                    </g:each>
                    <!--
                    <a href="${createLink(controller:'player', action:'division')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'dota2.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'division')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'lol.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'division')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'starcraft2.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'division')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'fifa13.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'division')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'tft.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'division')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'starcraft2.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'division')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'fifa13.jpg')}"/></a>
                    <a href="${createLink(controller:'player', action:'division')}"><img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'lol.jpg')}"/></a>
                    -->
                    <hr>
                </div>
            </div>

        </div>
	</body>
</html>
