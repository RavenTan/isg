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
                    <h3>Media Events</h3>

                    <g:each in="${mediaList}">
                        <div style="margin-bottom:20px;">
                            <strong>${it.name}</strong> ${it.date.format("dd-MMM-yyyy")} <a href="${createLink(controller:'adminMedia', action:'editMedia', id:it.id)}">EDIT</a> | <a href="${createLink(controller:'adminMedia', action:'deleteMedia', id:it.id)}">DELETE</a><br>
                        </div>
                    </g:each>      
                    <g:uploadForm controller="adminMedia" action="addMedia">
                        <h5>New Media Event:</h5>
                        Name: <input name="name" type="text"/><br>
                        Date: <input id="date" name="date" type="text"/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Add Media Event"/>
                    </g:uploadForm>

                </div>
            </div>

        </div>
        <script>
            $(function(){
                $("#date").datepicker({ dateFormat: 'dd-M-yy' });
            });
        </script>
	</body>
</html>