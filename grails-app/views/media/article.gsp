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

	                <h4>${mediaEvent.name}</h4>
	                <sup>May 16, 2013</sup><br>
	                <g:each in="${mediaEvent.pictures}" var="picture" status="i">
	                	<img class="img-rounded border-thick" src="${picture}"/>
	                	<g:if test="${((i+1)%4)==0}">
	                		<hr class="dull">
	                	</g:if>
	                </g:each>

	                <!--
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic5.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic3.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic4.jpg')}"/>
	                <hr class="dull">
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic2.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic3.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic4.jpg')}"/>
	                <hr class="dull">
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic5.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic3.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic2.jpg')}"/>
	                <img class="img-rounded border-thick" src="${resource(dir: 'images/main', file: 'articlepic.jpg')}"/>
	                <hr class="dull">
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
