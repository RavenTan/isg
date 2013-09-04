<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
        <div class="row-fluid">
            <div class="span8">

                <div class="well">
                    <h2>Features</h2>
                    <hr>

                    <g:each in="${featureList}" var="feature">
                        <div class="media">
                            <a class="pull-left" href="${createLink(controller:'feature', action:'article', id:feature.id)}">
                                <img class="media-object img-rounded"  style="width: 64px; height: 64px;" src="${feature.picture}">
                            </a>
                            <div class="media-body">
                                <a href="${createLink(controller:'feature', action:'article', id:feature.id)}"><h5 class="media-heading">${feature.heading}</h5></a>
                                <sup class="muted">${feature.date.format('MMM dd, yyyy, hh:mm a')}</sup><br>
                                ${feature.content.size()>150?feature.content.replaceAll("<br>"," ")[0..150]+" ...":feature.content.replaceAll("<br>"," ")}
                            </div>
                            <hr>
                        </div>
                    </g:each>

                </div>
            </div>
            <div class="span4">
                <div class="well smallNews">
                    <h4>Popular</h4>
                    <hr>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'feature', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'feature', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'feature', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'feature', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'feature', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'feature', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'feature', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'feature', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                </div>
                
                <div class="well smallNews">
                    <h4>Latest</h4>
                    <hr>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'feature', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'feature', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'feature', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'feature', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'feature', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'feature', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'feature', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'feature', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
	</body>
</html>
