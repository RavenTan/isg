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
                    <h3>Divisions</h3>
                    <g:each in="${divisionList}" var="division">

                        <img class="img-rounded border-thick" src="${division.picture}"/> <a href="${createLink(controller:'admin', action:'editDivision', id:division.id)}">EDIT</a> | <a href="${createLink(controller:'admin', action:'deleteDivision', id:division.id)}">DELETE</a><br>


                        <hr class="dull">
                    </g:each>
                    <a class="btn btn-primary btn-small" href="${createLink(controller:'admin', action:'addDivision')}">+ Add Division</a>
                </div>
            </div>

        </div>
	</body>
</html>
