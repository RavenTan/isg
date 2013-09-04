<!DOCTYPE html>
<html lang="en">

	<head>
	    <meta name="layout" content="admin"/>
        <g:render template="/templates/calres"/>
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
                    <h4>Events</h4>
                    <br>   
                    <div id="toolbar" class="ui-widget-header" style="text-align:center; padding:5px; vertical-align: middle; white-space:nowrap; overflow: hidden;">
                        <button class="btn btn-primary" id="BtnPreviousMonth"><<</button>
                        <span id="displayDate" class="cal_date">August</span>
                        <button class="btn btn-primary" id="BtnNextMonth">>></button>
                    </div>    
                    <div id="mycal" style="margin:0px 0px 10px 0px;"></div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function(){

                var clickAgendaItem = "";
                var clickDate = "";
                var bgc = "#323232";
                var fgc = "#FFA000";

                var jfcalplugin = $("#mycal").jFrontierCal({
                    date: new Date(),
                    dayClickCallback: myDayClickHandler, //create add event form 
                    agendaClickCallback: myAgendaClickHandler, //when agenda item is clicked
                    applyAgendaTooltipCallback: myApplyTooltip, //hook for tooltip
                    dragAndDropEnabled: false
                }).data("plugin");

                // add sample item so we can retrieve it
                //JSON getEvents
                $.getJSON('getEvents?'+
                    '&callback=?',  
                    function(res) {
                        if(res.status==0){
                            $.each(res.events, function(i, item){
                                var sStart = item.start.split('|');
                                var sEnd = item.end.split('|');
                                jfcalplugin.addAgendaItem(
                                    "#mycal",
                                    item.name,
                                    new Date(sStart[0],sStart[1]-1,sStart[2],sStart[3],sStart[4],0,0),
                                    new Date(sEnd[0],sEnd[1]-1,sEnd[2],sEnd[3],sEnd[4],0,0),
                                    false,
                                    {
                                        Location: item.location
                                    },
                                    {
                                        backgroundColor: bgc,
                                        foregroundColor: fgc
                                    }   
                                );
                            });
                        }
                        else{
                            alert("Failed to get events =(");
                        }
                });//getJSON
                

                jfcalplugin.setAspectRatio("#mycal",0.50);

                // javascript Date object with the year and month the calendar is set to.
                //DISPLAY IT
                $("#displayDate").text(moment(jfcalplugin.getCurrentDate("#mycal")).format('MMMM YYYY'));


                function myDayClickHandler(eventObj){
                    var date = eventObj.data.calDayDate;
                    //alert("You clicked day " + date.toDateString());
                    clickDate = date.getFullYear() + "-" + (date.getMonth()+1) + "-" + date.getDate();
                    $('#add-event-form').dialog('open');
                };
                /**
                 * Get the agenda item that was clicked.
                 */
                function myAgendaClickHandler (eventObj){
                    var agendaId = eventObj.data.agendaId;
                    var agendaItem = jfcalplugin.getAgendaItemById("#mycal",agendaId);
                    clickAgendaItem = agendaItem;
                    $("#display-event-form").dialog('open');
                };

                function myApplyTooltip(divElm,agendaItem){

                    // Destroy currrent tooltip if present
                    if(divElm.data("qtip")){
                        divElm.qtip("destroy");
                    }
                    
                    var displayData = "";
                    
                    var title = agendaItem.title;
                    var startDate = agendaItem.startDate;
                    var endDate = agendaItem.endDate;
                    var allDay = agendaItem.allDay;
                    var data = agendaItem.data;
                    displayData += "<br><b>" + title+ "</b><br><br>";
                    if(allDay){
                        displayData += "(All day event)<br><br>";
                    }else{
                        displayData += "<b>Starts:</b> " + moment(startDate).format('lll') + "<br>" + "<b>Ends:</b> " + moment(endDate).format('lll') + "<br><br>";
                    }
                    for (var propertyName in data) {
                        displayData += "<b>" + propertyName + ":</b> " + data[propertyName] + "<br>"
                    }
                    // apply tooltip
                    divElm.qtip({
                        content: displayData,
                        position: {
                            corner: {
                                tooltip: "bottomMiddle",
                                target: "topMiddle"         
                            },
                            adjust: { 
                                mouse: true,
                                x: 0,
                                y: -15
                            },
                            target: "mouse"
                        },
                        show: { 
                            when: { 
                                event: 'mouseover'
                            }
                        },
                        style: {
                            border: {
                                width: 5,
                                radius: 10
                            },
                            padding: 10, 
                            textAlign: "left",
                            tip: true,
                            name: "dark"
                        }
                    });
                };

                $("#BtnPreviousMonth").click(function() {
                    jfcalplugin.showPreviousMonth("#mycal");
                    $("#displayDate").text(moment(jfcalplugin.getCurrentDate("#mycal")).format('MMMM YYYY'));
                    return false;
                });

                $("#BtnNextMonth").click(function() {
                    jfcalplugin.showNextMonth("#mycal");
                    $("#displayDate").text(moment(jfcalplugin.getCurrentDate("#mycal")).format('MMMM YYYY'));
                    return false;
                });

                $("#display-event-form").dialog({
                    autoOpen: false,
                    height: 300,
                    width: 300,
                    modal: true,
                    buttons: {      
                        Cancel: function() {
                            $(this).dialog('close');
                        },
                        'Delete': function() {
                            if(confirm("Are you sure you want to delete this agenda item?")){
                                if(clickAgendaItem != null){
                                    jfcalplugin.deleteAgendaItemById("#mycal",clickAgendaItem.agendaId);
                                    //jfcalplugin.deleteAgendaItemByDataAttr("#mycal","myNum",42);
                                    //JSON deleteEvent
                                    var startD = clickAgendaItem.startDate;
                                    var endD = clickAgendaItem.endDate;
                                    var startString = startD.getFullYear()+"|"+(startD.getMonth()+1)+"|"+startD.getDate()+"|"+startD.getHours()+"|"+startD.getMinutes();
                                    var endString = endD.getFullYear()+"|"+(endD.getMonth()+1)+"|"+endD.getDate()+"|"+endD.getHours()+"|"+endD.getMinutes();
                                    $.getJSON('deleteEvent?'+
                                        'name='+clickAgendaItem.title+
                                        '&location='+clickAgendaItem.data.Location+
                                        '&start='+startString+
                                        '&end='+endString+
                                        '&callback=?',  
                                        function(res) {
                                            if(res.status==0){
                                                alert("Event \""+clickAgendaItem.title+"\" deleted");
                                            }
                                            else{
                                                alert(res.message);
                                            }
                                    });//getJSON
                                }
                                $(this).dialog('close');
                            }
                        }           
                    },
                    open: function(event, ui){
                        if(clickAgendaItem != null){
                            var title = clickAgendaItem.title;
                            var startDate = clickAgendaItem.startDate;
                            var endDate = clickAgendaItem.endDate;
                            var allDay = clickAgendaItem.allDay;
                            var data = clickAgendaItem.data;
                            // in our example add agenda modal form we put some fake data in the agenda data. we can retrieve it here.
                            $("#display-event-form").append(
                                "<br><b>" + title+ "</b><br><br>"       
                            );              
                            if(allDay){
                                $("#display-event-form").append(
                                    "(All day event)<br><br>"               
                                );              
                            }else{
                                $("#display-event-form").append(
                                    "<b>Starts:</b> " + moment(startDate).format('LLL') + "<br>" +
                                    "<b>Ends:</b> " + moment(endDate).format('LLL') + "<br><br>"              
                                );              
                            }
                            for (var propertyName in data) {
                                $("#display-event-form").append("<b>" + propertyName + ":</b> " + data[propertyName] + "<br>");
                            }           
                        }       
                    },
                    close: function() {
                        // clear agenda data
                        $("#display-event-form").html("");
                    }
                });  

                $("#add-event-form").dialog({
                    autoOpen: false,
                    height: 520,
                    width: 400,
                    modal: true,
                    buttons: {
                        'Add Event': function() {
                            var name = jQuery.trim($("#name").val());
                            var location = jQuery.trim($("#location").val());
                        
                            if(name == ""){
                                alert("Please enter text into the \"Name\" field.");
                            }else if(location == ""){
                                alert("Please enter text into the \"Location\" field.");
                            }else{
                            
                                var startDate = $("#startDate").val();
                                var startDtArray = startDate.split("-");
                                var startYear = startDtArray[0];
                                // jquery datepicker months start at 1 (1=January)      
                                var startMonth = startDtArray[1];       
                                var startDay = startDtArray[2];
                                // strip any preceeding 0's     
                                startMonth = startMonth.replace(/^[0]+/g,"");
                                startDay = startDay.replace(/^[0]+/g,"");
                                var startHour = jQuery.trim($("#startHour").val());
                                var startMin = jQuery.trim($("#startMin").val());
                                var startMeridiem = jQuery.trim($("#startMeridiem").val());
                                startHour = parseInt(startHour.replace(/^[0]+/g,""));
                                if(startMin == "0" || startMin == "00"){
                                    startMin = 0;
                                }else{
                                    startMin = parseInt(startMin.replace(/^[0]+/g,""));
                                }
                                if(startMeridiem == "AM" && startHour == 12){
                                    startHour = 0;
                                }else if(startMeridiem == "PM" && startHour < 12){
                                    startHour = parseInt(startHour) + 12;
                                }

                                var endDate = $("#endDate").val();
                                var endDtArray = endDate.split("-");
                                var endYear = endDtArray[0];
                                // jquery datepicker months start at 1 (1=January)      
                                var endMonth = endDtArray[1];       
                                var endDay = endDtArray[2];
                                // strip any preceeding 0's     
                                endMonth = endMonth.replace(/^[0]+/g,"");

                                endDay = endDay.replace(/^[0]+/g,"");
                                var endHour = jQuery.trim($("#endHour").val());
                                var endMin = jQuery.trim($("#endMin").val());
                                var endMeridiem = jQuery.trim($("#endMeridiem").val());
                                endHour = parseInt(endHour.replace(/^[0]+/g,""));
                                if(endMin == "0" || endMin == "00"){
                                    endMin = 0;
                                }else{
                                    endMin = parseInt(endMin.replace(/^[0]+/g,""));
                                }
                                if(endMeridiem == "AM" && endHour == 12){
                                    endHour = 0;
                                }else if(endMeridiem == "PM" && endHour < 12){
                                    endHour = parseInt(endHour) + 12;
                                }
                                
                                //alert("Start time: " + startHour + ":" + startMin + " " + startMeridiem + ", End time: " + endHour + ":" + endMin + " " + endMeridiem);

                                // Dates use integers
                                var startDateObj = new Date(parseInt(startYear),parseInt(startMonth)-1,parseInt(startDay),startHour,startMin,0,0);
                                var endDateObj = new Date(parseInt(endYear),parseInt(endMonth)-1,parseInt(endDay),endHour,endMin,0,0);

                                if(secondsDifferenceDirection(startDateObj,endDateObj) < 0){
                                    alert("Sorry, you can't create an event that ends before it starts");
                                }
                                else{
                                    //JSON saveEvent
                                    var startString = startYear+"|"+startMonth+"|"+startDay+"|"+startHour+"|"+startMin
                                    var endString = endYear+"|"+endMonth+"|"+endDay+"|"+endHour+"|"+endMin
                                    $.getJSON('saveEvent?'+
                                        'name='+name+
                                        '&location='+location+
                                        '&start='+startString+
                                        '&end='+endString+
                                        '&callback=?',  
                                        function(res) {
                                            if(res.status==0){
                                                // add new event to the calendar
                                                jfcalplugin.addAgendaItem(
                                                    "#mycal",
                                                    name,
                                                    startDateObj,
                                                    endDateObj,
                                                    false,
                                                    {
                                                        Location: location
                                                    },
                                                    {
                                                        backgroundColor: bgc,
                                                        foregroundColor: fgc
                                                    }
                                                );

                                                $("#add-event-form").dialog('close');
                                            }
                                            else{
                                                alert(res.message);
                                            }
                                    });//getJSON
                                }
                            }
                            
                        },
                        Cancel: function() {
                            $(this).dialog('close');
                        }
                    },
                    open: function(event, ui){
                        // initialize start date picker
                        $("#startDate").datepicker({
                            showOtherMonths: true,
                            selectOtherMonths: true,
                            changeMonth: true,
                            changeYear: true,
                            showButtonPanel: true,
                            dateFormat: 'yy-mm-dd'
                        });
                        // initialize end date picker
                        $("#endDate").datepicker({
                            showOtherMonths: true,
                            selectOtherMonths: true,
                            changeMonth: true,
                            changeYear: true,
                            showButtonPanel: true,
                            dateFormat: 'yy-mm-dd'
                        });
                        // initialize with the date that was clicked
                        $("#startDate").val(clickDate);
                        $("#endDate").val(clickDate);
                        // initialize color pickers

                        $("#name").focus();
                    },
                    close: function() {
                        // reset form elements when we close so they are fresh when the dialog is opened again.
                        $("#startDate").datepicker("destroy");
                        $("#endDate").datepicker("destroy");
                        $("#startDate").val("");
                        $("#endDate").val("");
                        $("#startHour option:eq(0)").attr("selected", "selected");
                        $("#startMin option:eq(0)").attr("selected", "selected");
                        $("#startMeridiem option:eq(0)").attr("selected", "selected");
                        $("#endHour option:eq(0)").attr("selected", "selected");
                        $("#endMin option:eq(0)").attr("selected", "selected");
                        $("#endMeridiem option:eq(0)").attr("selected", "selected");            
                        $("#name").val("");
                        $("#location").val("");
                    }
                });

                function secondsDifferenceDirection(date1,date2) {
                    return Math.round((date2.getTime() - date1.getTime()) / 1000);
                };  

            }); //ready end
            

        </script>

        <style type="text/css">
            //label, input.text, select { display:block; }
            fieldset { padding:0; border:0; margin-top:25px; }
            .ui-dialog .ui-state-error { padding: .3em; }
            .validateTips { border: 1px solid transparent; padding: 0.3em; }
        </style>
        <div id="add-event-form" title="Add New Event">
            <p class="validateTips">All form fields are required.</p>
            <form>
            <fieldset>
                <label for="name">Name</label>
                <input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;"/>
                <label for="name">Location</label>
                <input type="text" name="location" id="location" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;"/>
                <table style="width:100%; padding:5px;">
                    <tr>
                        <td>
                            <label>Start Date</label>
                            <input type="text" name="startDate" id="startDate" value="" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;"/>                
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <label>Start Hour</label>
                            <select id="startHour" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
                                <option value="12" SELECTED>12</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                            </select>               
                        <td>
                        <td>
                            <label>Start Minute</label>
                            <select id="startMin" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
                                <option value="00" SELECTED>00</option>
                                <option value="10">10</option>
                                <option value="20">20</option>
                                <option value="30">30</option>
                                <option value="40">40</option>
                                <option value="50">50</option>
                            </select>               
                        <td>
                        <td>
                            <label>Start AM/PM</label>
                            <select id="startMeridiem" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
                                <option value="AM" SELECTED>AM</option>
                                <option value="PM">PM</option>
                            </select>               
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>End Date</label>
                            <input type="text" name="endDate" id="endDate" value="" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;"/>                
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <label>End Hour</label>
                            <select id="endHour" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
                                <option value="12" SELECTED>12</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                            </select>               
                        <td>
                        <td>
                            <label>End Minute</label>
                            <select id="endMin" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
                                <option value="00" SELECTED>00</option>
                                <option value="10">10</option>
                                <option value="20">20</option>
                                <option value="30">30</option>
                                <option value="40">40</option>
                                <option value="50">50</option>
                            </select>               
                        <td>
                        <td>
                            <label>End AM/PM</label>
                            <select id="endMeridiem" class="text ui-widget-content ui-corner-all" style="margin-bottom:12px; width:95%; padding: .4em;">
                                <option value="AM" SELECTED>AM</option>
                                <option value="PM">PM</option>
                            </select>               
                        </td>               
                    </tr>           
                </table>
            </fieldset>
            </form>
        </div>

        <div id="display-event-form" title="Event Item">
            
        </div>
	</body>
</html>
