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

                    <h3 class="article-heading">${event.game}</h3>
                    <sup>${event.date.format("dd MMM yyyy")}</sup>
                    <h4 class="article-sub-heading">${event.name}</h4>

                    <img class="img-rounded border" src="${resource(dir: 'images/main', file: 'articlepic4.jpg')}">
                    
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque, nisi eget interdum ultricies, nunc ante egestas tortor, consequat rutrum ipsum diam id nisl. Vestibulum tristique, sem quis tincidunt tristique, ligula nisi vulputate ipsum, et adipiscing ante felis a dolor. Integer volutpat et quam at pulvinar. Vestibulum aliquam molestie risus, vel pellentesque augue condimentum congue. Donec pharetra sodales augue eu pharetra. Nulla auctor velit non erat sodales, non porttitor magna gravida. Donec ultrices lacinia lectus, eget sollicitudin nunc mollis hendrerit. Ut nec tincidunt est, sed consequat augue.<br><br>

                    Proin posuere quam non eros imperdiet interdum at id libero. Integer vulputate velit sit amet urna tempus ornare id et enim. Curabitur tempor, libero at luctus interdum, metus nisi aliquam magna, in ornare neque velit at enim. Etiam scelerisque nisl eget tristique posuere. Sed a odio tincidunt lorem rutrum aliquam vestibulum eget risus. Mauris sit amet bibendum elit. Maecenas eget dapibus risus, nec porta ante. Phasellus nec eleifend nulla, at rutrum lacus. Suspendisse in enim et mauris blandit tempor nec sit amet massa. Nunc venenatis tempor ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean urna nunc, facilisis quis volutpat porttitor, varius in justo. Phasellus vitae turpis ultrices, adipiscing ligula vitae, venenatis est. Nullam id vulputate arcu.<br><br>

                    Suspendisse in augue sed felis dapibus mattis vitae sit amet magna. Fusce feugiat non justo sed pharetra. Morbi gravida congue luctus. Fusce tincidunt sollicitudin felis nec interdum. Pellentesque at porttitor turpis. Sed id nisl sed tortor porttitor egestas non eu lorem. Donec velit elit, tincidunt in nisi et, bibendum aliquam orci. In a ipsum magna. Sed vel commodo metus. Nullam elementum, risus eu vestibulum lobortis, mi mi posuere augue, nec eleifend libero enim id magna. Nullam iaculis eleifend fermentum. Maecenas semper enim vel volutpat auctor.<br><br>

                    Quisque ut lacus fermentum, vehicula diam ut, luctus magna. Nunc nec rhoncus urna. Sed dolor ipsum, posuere eget sodales id, dignissim in dui. Vivamus in justo vel sem convallis adipiscing. Integer et leo eu leo porta consequat. Aenean quis euismod magna. Etiam ultrices at leo ac hendrerit. Mauris quis varius elit, sed rhoncus nibh. Aenean elementum interdum tincidunt. Donec feugiat nunc libero, in vulputate nisi feugiat vel. Sed laoreet sollicitudin libero in pretium.<br><br>

                    Praesent vestibulum, arcu ut ultricies scelerisque, sem sem pharetra sem, non sollicitudin quam nunc eu mi. In sit amet odio nunc. Nulla dapibus malesuada tortor ac lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed egestas ultricies libero ac congue. Mauris molestie, diam eu porta tempor, enim nibh porttitor arcu, nec porttitor dolor enim sit amet nisl. In pulvinar sed metus sit amet gravida. Quisque interdum justo nec adipiscing mattis. Integer luctus purus nec sodales convallis. Curabitur in mauris non augue convallis sodales vel vitae arcu. Praesent posuere vestibulum lacus, ut cursus neque blandit vel.</p>

                    
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
