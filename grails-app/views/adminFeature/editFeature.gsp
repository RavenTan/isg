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
                    <h3>Division</h3>
                    
                    <g:uploadForm controller="adminFeature" action="updateFeature" id="${feature.id}">
                        Heading: <input name="heading" type="text" value="${feature.heading}"/><br/>
                        Sub Heading: <input name="subheading" type="text" value="${feature.subheading}"/><br/>
                        Picture: <input name="picture" type="file"/><br/>
                        Pciture Url: <input name="pictureUrl" type="text" value="${feature.pictureUrl}"/><br/>
                        Content: <textarea name="content" class="input-block-level" rows="10" >${feature.content.replaceAll("<br>","\n")}</textarea>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Update"/>
                    </g:uploadForm>

                    <hr>
                    
                </div>
            </div>

        </div>
	</body>
</html>
