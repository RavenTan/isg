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
                    <h3>New Player</h3>
                    
                    <g:uploadForm controller="admin" action="createPlayer" id="${team.id}">
                        Nickname: <input name="nickname" type="text"/><br/>
                        Picture: <input name="picture" type="file"/><br/>
                        Real Name: <input name="realname" type="text"/><br/>
                        Role: <input name="role" type="text"/><br/>
                        Date of Birth: <input id="dob" name="dob" type="text"/><br/>
                        Nationality: <input name="nationality" type="text"/><br/>

                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Create"/>
                    </g:uploadForm>

                    <hr>
                    
                </div>
            </div>

        </div>
        <script>
            $(function(){
                $("#dob").datepicker({ dateFormat: 'dd-M-yy' });
            });
        </script>
	</body>
</html>
