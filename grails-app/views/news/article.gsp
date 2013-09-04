<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	    <div class="row-fluid">
            <div class="span8">

                <div class="well news_article_well">
                    <h2 class="muted">News</h2>
                    <hr>

                    <h3 class="article-heading">${news.heading}</h3>
                    <sup>${news.date.format('MMM dd, yyyy, hh:mm a')}</sup>
                    <h4 class="article-sub-heading">${news.subheading}</h4>

                    <a href="${news.pictureUrl}"><img class="img-rounded border" src="${news.picture}"></a>    

                    <p>${news.content}</p>

                    
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
