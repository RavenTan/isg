<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	   	<div class="row-fluid">
            <div class="span12">

                <div class="well player_profile">
                    <h2>Management</h2>
                    <hr>

                    <table>
                        <g:each in="${managementList}">
                            <tr>
                                <td>
                                    <img class="img-rounded border-thick" style="width:200px;" src="${it.picture}"/>
                                </td>
                                <td style="padding-left:20px;">
                                    <strong>Name: </strong>${it.name}<br>
                                    <strong>Position: </strong>${it.position}<br>
                                    <strong>Email: </strong>${it.email}<br>
                                </td>
                            </tr>
                            <tr class="separator" style="height:10px;"/>
                        </g:each>
                    </table>
                </div>
            </div>
        </div>
	</body>
</html>
