<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	    <div class="row-fluid"><!--begin-->
            <div class="span8">
                <div id="myCarousel" class="border carousel slide">
                    <ol class="carousel-indicators">
                        <g:each in="${request.home.carouselItems}" var="cItem" status="i">
                            <li data-target="#myCarousel" data-slide-to="${i}" class="${i==0?'active':''}"></li>
                        </g:each>
                    
                       <!-- <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>-->
                    </ol>
                    <div class="carousel-inner">
                        <g:each in="${request.home.carouselItems}" var="cItem" status="i">
                            <div class="item ${i==0?'active':''}">
                                <a href="${cItem.url}">
                                    <img src="${cItem.picture}" alt="">
                                    <div class="carousel-caption">
                                        <h4>${cItem.heading}</h4>
                                        <p>${cItem.subheading}</p>
                                    </div>
                                </a>
                            </div>
                        </g:each>
                        <!--
                        <div class="item active">
                            <a href="player/division/7">
                                <img src="${resource(dir: 'images/main', file: 'news.jpg')}" alt="">
                                <div class="carousel-caption">
                                    <h4>League of Legends</h4>
                                    <p>Team NeoEs.IsgOutlaws</p>
                                </div>
                            </a>
                        </div>
                        <div class="item">
                            <a href="player/division/7">
                                <img src="${resource(dir: 'images/main', file: 'news2.jpg')}" alt="">
                                <div class="carousel-caption">
                                    <h4>League of Legends</h4>
                                    <p>Team NeoEs.IsgExiles</p>
                                </div>
                            </a>
                        </div>-->
                    </div>
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                </div>

                <div style="margin-bottom:20px;">
                    <img style="width:100%" src="${request.home.advertisementMid}">
                </div>


                <!--
                <div class="well">
                    <h2>News</h2>
                    <hr>
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object img-rounded"  style="width: 64px; height: 64px;" src="{resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="#"><h5 class="media-heading">Mras purus odio, vestibulum in vulputate at.</h5></a>
                            <sup class="muted">May 16, 2013, 6:42 pm</sup><br>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                        </div>
                        <hr>
                    </div>

                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object img-rounded"  style="width: 64px; height: 64px;" src="{resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="#"><h5 class="media-heading">Mras purus odio, vestibulum in vulputate at.</h5></a>
                            <sup class="muted">May 16, 2013, 6:42 pm</sup><br>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                        </div>
                        <hr>
                    </div>

                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object img-rounded"  style="width: 64px; height: 64px;" src="{resource(dir: 'images/main', file: '64.png')}">
                        </a>
                        <div class="media-body">
                            <a href="#"><h5 class="media-heading">Mras purus odio, vestibulum in vulputate at.</h5></a>
                            <sup class="muted">May 16, 2013, 6:42 pm</sup><br>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                        </div>
                        <hr>
                    </div>
                </div>
                -->
            </div>
            <div class="span4">    
                <div class="well smallNews">
                    <h4>News</h4>
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
                <!--
                <g:each in="{request.home.sponsors}">
                    <div style="text-align:center; color:red; margin-bottom:40px; height:75px;">
                        <a href="{it.url}"><img style="height:75px;" src="{it.imgUrl}"></a>
                    </div>
                </g:each>      
                -->
            </div>
        </div><!--/begin-->
	</body>
</html>
