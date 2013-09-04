<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	    <div class="row-fluid">
            <div class="span8">

                <div class="well news_article_well">
                    <h2 class="muted">Feature</h2>
                    <hr>

                    <h3 class="article-heading">${feature.heading}</h3>
                    <sup>${feature.date.format('MMM dd, yyyy, hh:mm a')}</sup>
                    <h4 class="article-sub-heading">${feature.subheading}</h4>

                    <a href="${feature.pictureUrl}"><img class="img-rounded border" src="${feature.picture}"></a>
                    
                    <p>${feature.content}</p>

                    
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
