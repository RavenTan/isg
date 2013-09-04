<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="admin"/>
	</head>

	<body>
	    <div class="row-fluid">
            <div class="span12">
                <g:if test="${flash.message}">
                    <div class="alert">
                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                        ${flash.message}
                    </div>
                </g:if>
                <div class="well division_well">
                    <h2>Admin</h2>
                    <hr>
                    <h4>News</h4>
                    <g:each in="${newsList}" var="news">

                        <div class="media">
                            <a class="pull-left" href="${createLink(controller:'news', action:'article', id:news.id)}">
                                <img class="media-object img-rounded border"  style="width: 64px; height: 64px;" src="${news.picture}">
                            </a>
                            <div class="media-body">
                                <a href="${createLink(controller:'news', action:'article', id:news.id)}"><h5 class="media-heading">${news.heading}</h5></a>
                                <sup class="muted">${news.date.format('MMM dd, yyyy, hh:mm a')}</sup><br>
                            </div>
                            <a href="${createLink(controller:'adminNews', action:'editNews', id:news.id)}">EDIT</a> | <a href="${createLink(controller:'adminNews', action:'deleteNews', id:news.id)}">DELETE</a>
                        </div> <br>


                        <hr class="dull">
                    </g:each>
                    <hr>    
                    <g:uploadForm controller="adminNews" action="createNews">
                        <h5>New</h5>
                        
                        Heading: <input name="heading" type="text"/><br/>
                        Sub Heading: <input name="subheading" type="text"/><br/>
                        
                        Picture: <input name="picture" type="file"/><br/>
                        Picture Url: <input name="pictureUrl" type="text"/><br>

                        Content: <textarea name="content" class="input-block-level" rows="10" ></textarea>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Add News"/>
                    </g:uploadForm>

                </div>
            </div>

        </div>
	</body>
</html>
