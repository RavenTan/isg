<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	    <div class="row-fluid">

	        <div class="span12">
	            <div class="well media_well">
	                <h2>Media</h2>
	                
	                <hr>

	                <g:each in="${mediaEventList}" var="mediaEvent">
	                	<a href="${createLink(controller:'media', action:'article', id:mediaEvent.id)}"><h4>${mediaEvent.name}</h4></a>
		                <sup>${mediaEvent.date.format("dd MMM yyyy")}</sup><br>
		                <g:each in="${mediaEvent.pictures}" var="picture" status="i">
		                	<g:if test="${i<4}">
		                		<img class="img-rounded border-thick" src="${picture}">
		                	</g:if>
		                </g:each>
		                <hr>
	                </g:each>

	                <!--
	                <a href="${createLink(controller:'media', action:'article')}"><h4>Mras purus odio, vestibulum</h4></a>
	                <sup>May 16, 2013</sup><br>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic5.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic3.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic4.jpg')}"/>
	                <hr>

	                <a href="${createLink(controller:'media', action:'article')}"><h4>Mras purus odio, vestibulum</h4></a>
	                <sup>May 16, 2013</sup><br>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic2.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic3.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic4.jpg')}"/>
	                <hr>

	                <a href="${createLink(controller:'media', action:'article')}"><h4>Mras purus odio, vestibulum</h4></a>
	                <sup>May 16, 2013</sup><br>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic5.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic3.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic2.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic.jpg')}"/>
	                <hr>

	                <a href="${createLink(controller:'media', action:'article')}"><h4>Mras purus odio, vestibulum</h4></a>
	                <sup>May 16, 2013</sup><br>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic4.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic2.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic5.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic.jpg')}"/>
	                <hr>
					-->
	                

	            </div>
	        </div>
	    </div>
	</body>
</html>
