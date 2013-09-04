import isg.*
import groovy.io.FileType


class BootStrap {

    def init = { servletContext ->

    	if(!CarouselItem.get(1)){
    		
            
            def ci1 = new CarouselItem(
                picture:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/news.jpg",
                url:"player/division/7",
                heading:"League of Legends",
                subheading:"Team NeoEs.IsgOutlaws"
            ).save()

            def ci2 = new CarouselItem(
                picture:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/news2.jpg",
                url:"player/division/7",
                heading:"League of Legends",
                subheading:"Team NeoEs.IsgExiles"
            ).save()


            def home = new Home(
                background:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/bg1.jpg",
                logo:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/is_logo.jpg",
                topSponsor1:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/topSponsor1.jpg",
                topSponsor2:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/topSponsor2.png",
                advertisementSide:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/advSide.png",
                advertisementMid:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/sponsor2.png",
                topSponsor1Url:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/topSponsor1.jpg",
                topSponsor2Url:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/topSponsor2.png",
                advertisementSideUrl:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/advSide.png",
                advertisementMidUrl:"https://s3-ap-southeast-1.amazonaws.com/is.gaming/sponsor2.png"
            )//.addToSponsors("https://s3-ap-southeast-1.amazonaws.com/is.gaming/sponsor1.png")
            //.addToSponsors("https://s3-ap-southeast-1.amazonaws.com/is.gaming/sponsor2.png")
            //.addToSponsors("https://s3-ap-southeast-1.amazonaws.com/is.gaming/sponsor3.png")
            .addToCarouselItems(ci1)
            .addToCarouselItems(ci2)
            .save()
            

            //Media Events START
            /*
                def path
                def dir
                def event1 = new MediaEvent(
                    name:"Event 1",
                    folderPath:"event1"
                )
                path = servletContext.getRealPath('images/media/event1/')
                dir = new File(path)
                dir.eachFileRecurse(FileType.FILES) { file ->
                    event1.addToPictures(file.name)
                }
                if (!event1.save()){
                    event1.errors.allErrors.each{error ->
                        println "An error occured with event1: ${error}"
                    }
                }

                def event2 = new MediaEvent(
                    name:"Event 2",
                    folderPath:"event2"
                )
                path = servletContext.getRealPath('images/media/event2/')
                dir = new File(path)
                dir.eachFileRecurse(FileType.FILES) { file ->
                    event2.addToPictures(file.name)
                }
                if (!event2.save()){
                    event2.errors.allErrors.each{error ->
                        println "An error occured with event2: ${error}"
                    }
                }

                def event3 = new MediaEvent(
                    name:"Event 3",
                    folderPath:"event3"
                )
                path = servletContext.getRealPath('images/media/event3/')
                dir = new File(path)
                dir.eachFileRecurse(FileType.FILES) { file ->
                    event3.addToPictures(file.name)
                }
                if (!event3.save()){
                    event3.errors.allErrors.each{error ->
                        println "An error occured with event3: ${error}"
                    }
                }

                def event4 = new MediaEvent(
                    name:"Event 4",
                    folderPath:"event4"
                )
                path = servletContext.getRealPath('images/media/event4/')
                dir = new File(path)
                dir.eachFileRecurse(FileType.FILES) { file ->
                    event4.addToPictures(file.name)
                }
                if (!event4.save()){
                    event4.errors.allErrors.each{error ->
                        println "An error occured with event4: ${error}"
                    }
                }
                */
            //Media Events END

            //Events START
            /*
                def eevent1 = new Event(
                    game: 'Blackshot', 
                    name: 'Garena Talk 3v3',               
                    date: Date.parse("dd-MMM-yyyy", '07-July-2013')
                    )//.save()
                if (!eevent1.save()){
                    eevent1.errors.allErrors.each{error ->
                        println "An error occured with eevent1: ${error}"
                    }
                }

                def eevent2 = new Event(
                    game: 'DotA', 
                    name: 'E2Max L33T Championship',              
                    date: Date.parse("dd-MMM-yyyy", '07-July-2013')
                    )//.save()
                if (!eevent2.save()){
                    eevent2.errors.allErrors.each{error ->
                        println "An error occured with eevent2: ${error}"
                    }
                }

                def eevent3 = new Event(
                    game: 'Chaos Online', 
                    name: 'Chaos Online Malaysia Tournament',             
                    date: Date.parse("dd-MMM-yyyy", '07-July-2013')
                    )//.save()
                if (!eevent3.save()){
                    eevent3.errors.allErrors.each{error ->
                        println "An error occured with eevent3: ${error}"
                    }
                }

                def eevent4 = new Event(
                    game: 'League of Legends', 
                    name: 'The League Circuit',                
                    date: Date.parse("dd-MMM-yyyy", '30-June-2013')
                    )//.save()
                if (!eevent4.save()){
                    eevent4.errors.allErrors.each{error ->
                        println "An error occured with eevent4: ${error}"
                    }
                }

                def eevent5 = new Event(
                    game: 'Starcraft 2', 
                    name: 'Singapore Vengence Cup',                
                    date: Date.parse("dd-MMM-yyyy", '27-June-2013')
                    )//.save()
                if (!eevent5.save()){
                    eevent5.errors.allErrors.each{error ->
                        println "An error occured with eevent5: ${error}"
                    }
                }

                def eevent6 = new Event(
                    game: 'World of Tanks', 
                    name: 'Tanks Asia, Masters Series<br>ISG vs NightEagles (TW)',               
                    date: Date.parse("dd-MMM-yyyy", '26-June-2013')
                    )//.save()
                if (!eevent6.save()){
                    eevent6.errors.allErrors.each{error ->
                        println "An error occured with eevent6: ${error}"
                    }
                }

                def eevent7 = new Event(
                    game: 'League of Legends', 
                    name: 'Chaos Online Invitational<br>SMU Cup',               
                    date: Date.parse("dd-MMM-yyyy", '21-June-2013')
                    )//.save()
                if (!eevent7.save()){
                    eevent7.errors.allErrors.each{error ->
                        println "An error occured with eevent7: ${error}"
                    }
                }

                def eevent8 = new Event(
                    game: 'League of Legends', 
                    name: 'Chaos Online Invitational<br>SMU Cup',         
                    date: Date.parse("dd-MMM-yyyy", '22-June-2013')
                    )//.save()
                if (!eevent8.save()){
                    eevent8.errors.allErrors.each{error ->
                        println "An error occured with eevent8: ${error}"
                    }
                }

                def eevent9 = new Event(
                    game: 'League of Legends', 
                    name: 'The League Circuit',         
                    date: Date.parse("dd-MMM-yyyy", '23-June-2013')
                    )//.save()
                if (!eevent9.save()){
                    eevent9.errors.allErrors.each{error ->
                        println "An error occured with eevent9: ${error}"
                    }
                }
                */
            //Events END

    	}//end 
    }
    def destroy = {
    }
}
