<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	    <div class="row-fluid">
            <div class="span8">

                <div class="well">
                    <h2>News</h2>
                    <hr>

                    <g:each in="${newsList}" var="news">
                        <div class="media">
                            <a class="pull-left" href="${createLink(controller:'news', action:'article', id:news.id)}">
                                <img class="media-object img-rounded"  style="width: 64px; height: 64px;" src="${news.picture}">
                            </a>
                            <div class="media-body">
                                <a href="${createLink(controller:'news', action:'article', id:news.id)}"><h5 class="media-heading">${news.heading}</h5></a>
                                <sup class="muted">${news.date.format('MMM dd, yyyy, hh:mm a')}</sup><br>
                                ${news.content.size()>150?news.content.replaceAll("<br>"," ")[0..150]+" ...":news.content.replaceAll("<br>"," ")}
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
                        <a class="pull-left" href="${createLink(controller:'news', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'news', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'news', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'news', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'news', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'news', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'news', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'news', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                </div>
                
                <div class="well smallNews">
                    <h4>Latest</h4>
                    <hr>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'news', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'news', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'news', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'news', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'news', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'news', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                    <div class="media">
                        <a class="pull-left" href="${createLink(controller:'news', action:'article')}">
                            <img class="media-object img-rounded"  style="width: 30px; height: 30px;" src="${resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="${createLink(controller:'news', action:'article')}"><h6 class="media-heading">Mras purus odio, vestibulum</h6></a>
                            <sup>May 16, 2013, 6:42 pm</sup>
                        </div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
	</body>
</html>
