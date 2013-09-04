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
                    <h3>Accolade</h3>
                    
                    <g:uploadForm controller="admin" action="updateAccolade" id="${accolade.id}">
                        Game: <input name="game" type="text" value="${accolade.game}"/><br/>
                        <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Update"/>
                    </g:uploadForm>

                    <hr>

                    <h3>Events</h3>
                        <div id="eventList">
                            <g:each in="${accolade.events}" var="event">
                                ${event}<br>
                            </g:each>
                        </div>
                        <div id="eventTextarea">
                            (One event per line)
                            <g:uploadForm controller="admin" action="updateAccoladeEvents" id="${accolade.id}">
                                <textarea name="events" class="input-block-level" rows="10" ><g:each in="${accolade.events}" var="event">${event+"\n"}</g:each></textarea>
                                <input class="btn btn-primary btn-small" style="margin-top:10px;" type="submit" value="Update"/>
                            </g:uploadForm>
                        </div>
                    <a id="editEvent" style="margin-top:10px;" class="pointer btn btn-primary btn-small">Edit Events</a>
                    
                </div>
            </div>

        </div>
        <script>
            $(function(){
                $("#eventTextarea").hide();
            });

            $(document).on("click", "#editEvent", function () {
                if($("#eventTextarea").is(':hidden')){
                    $("#eventTextarea").show(250);
                    $("#eventList").hide(250);

                }
                else{
                    $("#eventList").show(250);
                    $("#eventTextarea").hide(250);
                }
            });
        </script>
	</body>
</html>
