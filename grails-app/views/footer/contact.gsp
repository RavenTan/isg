<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="main"/>
	</head>

	<body>
	   	<div class="row-fluid">
            <div class="span12">

                <div class="well player_profile">
                    <h2>Contact Us</h2>
                    <hr>
                    <strong>Address: </strong>${contact.address}<br>
                    <strong>Telephone: </strong>${contact.telephone}<br>
                    <a href="${contact.mapUrl}"><img src="${contact.mapPicture}" style="margin-top:20px; height:400px;"/></a>
                </div>
            </div>
        </div>
	</body>
</html>
