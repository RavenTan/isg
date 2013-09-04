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
                    <h3>Home</h3>
                    <g:uploadForm controller="adminHome" action="updateBackground">
                        Background: <input name="background" type="file"/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Change"/>
                    </g:uploadForm>
                    <g:uploadForm controller="adminHome" action="updateLogo">
                        Logo: <input name="logo" type="file"/><br/>                        
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Change"/>
                    </g:uploadForm>
                    <g:uploadForm controller="adminHome" action="updateTopSponsor1">
                        Top Sponsor 1: <input name="topSponsor1" type="file"/><br/>
                        Top Sponsor 1 URL: <input name="url" type="text" placeholder="http://..."/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Change"/>
                    </g:uploadForm>
                    <g:uploadForm controller="adminHome" action="updateTopSponsor2">
                        Top Sponsor 2: <input name="topSponsor2" type="file"/><br/>
                        Top Sponsor 2 URL: <input name="url" type="text" placeholder="http://..."/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Change"/>
                    </g:uploadForm>
                    <g:uploadForm controller="adminHome" action="updateAdvertisementSide">
                        Advertisement Side: <input name="advertisementSide" type="file"/><br/>
                        Advertisement Side URL: <input name="url" type="text" placeholder="http://..."/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Change"/>
                    </g:uploadForm>
                    <g:uploadForm controller="adminHome" action="updateAdvertisementMid">
                        Advertisement Mid: <input name="advertisementMid" type="file"/><br/>
                        Advertisement Mid URL: <input name="url" type="text" placeholder="http://..."/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Change"/>
                    </g:uploadForm>
                                                
                        
                        
                    <hr>
                    <h4>Side Sponsors</h4>
                    <br>
                    <g:each in="${request.home.sponsors}">
                        <div style="margin-bottom:20px;">
                            <img class="img-rounded border-thick" style="height:75px;" src="${it.imgUrl}"/> <a href="${createLink(controller:'adminHome', action:'deleteSponsor', params:[id:it.id])}">DELETE</a>
                        </div>
                    </g:each>      
                    <g:uploadForm controller="adminHome" action="addSponsor">
                        <h5>New Sponsor:</h5>
                        <input name="sponsor" type="file"/><br>
                        URL: <input name="url" type="text" placeholder="http://..."/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Add Sponsor"/>
                    </g:uploadForm>


                    <hr>
                    <h4>Carousel Items</h4>
                    <g:each in="${request.home.carouselItems}">
                        <div style="margin-bottom:20px;">
                            <img class="img-rounded border-thick" src="${it.picture}"/> <a href="${createLink(controller:'adminHome', action:'deleteCarouseItem', id:it.id)}">DELETE</a>
                        </div>
                    </g:each> 

                    <g:uploadForm controller="adminHome" action="addCarouselItem">
                        <h5>New Item:</h5>
                        Picture: <input name="picture" type="file"/><br/>
                        Url: <input name="url" type="text" placeholder="example: /division/player/7"/><br/>
                        Heading: <input name="heading" type="text"/><br/>
                        Subheading: <input name="subheading" type="text"/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Add Item"/>
                    </g:uploadForm>
                </div>
            </div>

        </div>
	</body>
</html>
