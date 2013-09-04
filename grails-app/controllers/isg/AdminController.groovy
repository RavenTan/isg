package isg

class AdminController {

    def amazonS3Service;
    Random random = new Random()

    def division() {
    	def divisionList = Division.getAll()
    	[divisionList:divisionList]
    }
    def editDivision(){
    	def division = Division.get(params.id)
    	[division:division]
    }
    def updateDivision(){
        def division = Division.get(params.id)
        def f = request.getFile('picture')
        if(!f.empty) {
            /*
            String imagepath = grailsAttributes.getApplicationContext().getResource("images/division/").getFile().toString()
            def oldFile = new File( imagepath + File.separatorChar + division.picture )
            oldFile.delete()
            new File( imagepath ).mkdirs()
            f.transferTo( new File( imagepath + File.separatorChar + division.id + f.getOriginalFilename().replaceAll(" ","") ) )
            division.picture = division.id + f.getOriginalFilename().replaceAll(" ","")
            */

            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.DIVISION.Division."division.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(division.picture))//delete old pic
                division.picture = amazonS3Service.getFileUrl(filename)
                division.name=params.name.trim()
                if(division.save(flush:true)){
                    flash.message="Division updated"
                }
                else{
                    flash.message="Division failed to update"
                }
            }
            else{
                flash.message="Please upload picture file (.jpg, .png, .gif or .tiff)"
            }

            
        }
        else{
            division.name=params.name.trim()
            if(division.save(flush:true)){
                flash.message="Division updated"
            }
            else{
                flash.message="Division failed to update"
            }
        }
        
        redirect(action:"editDivision", id:params.id)
    }
    def addDivision(){

    }
    def createDivision(){
        def division = new Division()
        def f = request.getFile('picture')
        if(!f.empty) {
            /*
            String imagepath = grailsAttributes.getApplicationContext().getResource("images/division/").getFile().toString()
            new File( imagepath ).mkdirs()
            f.transferTo( new File( imagepath + File.separatorChar + division.id + f.getOriginalFilename().replaceAll(" ","") ) )
            division.picture = division.id + f.getOriginalFilename().replaceAll(" ","")
            */

            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.DIVISION.Division."+division.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                division.picture = amazonS3Service.getFileUrl(filename)
                division.name = params.name.trim()
                if(division.save(flush:true)){
                    flash.message="Division created"
                }
                else{
                    flash.message="Failed to create"
                }
            }
            else{
                flash.message="Please upload picture file (.jpg, .png, .gif or .tiff)"
            }
        }
        else{
            flash.message="Please select a picture"
        }
        redirect(action:"addDivision")
    }
    def deleteDivision(){
        def division = Division.get(params.id)

        /*
        String imagepathx = grailsAttributes.getApplicationContext().getResource("images/division/").getFile().toString()
        def oldFilex = new File( imagepathx + File.separatorChar + division.picture )
        oldFilex.delete()
        */
        //String filename = division.picture.replace(grailsApplication.config.s3.location.toString(), "")
        amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(division.picture))//delete old pic

        def teamList = []
        teamList += division.teams
        teamList.each{ team ->
            def playerList = []
            playerList += team.players
            playerList.each{ player ->
                String imagepath = grailsAttributes.getApplicationContext().getResource("images/player/").getFile().toString()
                def oldFile = new File( imagepath + File.separatorChar + player.picture )
                oldFile.delete()

                def accoladeList = []
                accoladeList += player.accolades
                accoladeList.each{
                    player.removeFromAccolades(it)
                    it.delete()
                }
                team.removeFromPlayers(player)
                player.delete()
            }
            division.removeFromTeams(team)
            team.delete()
        }

        division.delete(flush:true)
        flash.message="Division deleted"
        
        redirect(action:"division")
    }

    def editTeam(){
        def team = Team.get(params.id)
        [team:team]
    }
    def updateTeam(){
        def team = Team.get(params.id)
        team.name=params.name.trim()
        team.accolades.clear()
        def accoladeString = params.accolades.trim().replaceAll("\r\n|\n\r|\n|\r","|")
        def accoladeList = accoladeString.tokenize("|")
        accoladeList.each{
            team.addToAccolades(it)
        }
        if(team.save(flush:true)){
            flash.message="Team updated"
        }
        else{
            flash.message="Team failed to update"
        }
        redirect(action:"editTeam", id:params.id)
    }
    def addTeam(){
        def division = Division.get(params.id)
        [division:division]
    }
    def createTeam(){
        def division = Division.get(params.id)

        def team = new Team()
        team.name = params.name.trim()
        team.save()
        division.addToTeams(team)
        if (!division.save()){
            flash.message="Failed to create"
        } 
        else{
            flash.message="Team created"
        }
        redirect(action:"editDivision", id:params.id)
    }
    def deleteTeam(){
        def division = Division.get(params.divisionId)
        def team = Team.get(params.id)

        def playerList = []
        playerList += team.players
        playerList.each{ player ->
            amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(player.picture))//delete old pic

            def accoladeList = []
            accoladeList += player.accolades
            accoladeList.each{
                player.removeFromAccolades(it)
                it.delete()
            }
            team.removeFromPlayers(player)
            player.delete()
        }
        division.removeFromTeams(team)
        team.delete()
        if(division.save(flush:true)){
            flash.message="Team deleted"
        }
        else{
            flash.message="Failed to delete"
        }
        redirect(action:"editDivision", id:params.divisionId)
    }

    def editPlayer(){
        def player = Player.get(params.id)
        //params.teamId
        [player:player, teamId:params.teamId]
    }
    def updatePlayer(){
        def player = Player.get(params.id)
        def f = request.getFile('picture')
        if(!f.empty) {
            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.DIVISION.Player."+player.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(player.picture))//delete old pic
                player.picture = amazonS3Service.getFileUrl(filename)
                player.games.clear()
                def gamesString = params.games.trim().replaceAll("\r\n|\n\r|\n|\r","|")
                def gameList = gamesString.tokenize("|")
                gameList.each{
                    player.addToGames(it)
                }
               
                player.nickname = params.nickname.trim()
                player.realname = params.realname.trim()
                player.role = params.role.trim()
                player.dob = Date.parse("dd-MMM-yyyy", params.dob)
                player.nationality = params.nationality.trim()

                if(player.save(flush:true)){
                    flash.message="Player updated"
                }
                else{
                    flash.message="Player failed to update"
                }
            }
            else{
                flash.message="Please upload picture file (.jpg, .png, .gif or .tiff)"
            }
        }
        else{
            player.games.clear()
            def gamesString = params.games.trim().replaceAll("\r\n|\n\r|\n|\r","|")
            def gameList = gamesString.tokenize("|")
            gameList.each{
                player.addToGames(it)
            }
           
            player.nickname = params.nickname.trim()
            player.realname = params.realname.trim()
            player.role = params.role.trim()
            player.dob = Date.parse("dd-MMM-yyyy", params.dob)
            player.nationality = params.nationality.trim()

            if(player.save(flush:true)){
                flash.message="Player updated"
            }
            else{
                flash.message="Player failed to update"
            }

        }

        redirect(action:"editTeam", id:params.teamId)
    }
    def addPlayer(){
        def team = Team.get(params.id)
        [team:team]
    }
    def createPlayer(){
        def team = Team.get(params.id)

        def player = new Player()
        player.save(flush:true)
        def f = request.getFile('picture')
        if(!f.empty) {
            String filename = f.getOriginalFilename().replace(" ", "_")
            String ext = filename.substring(filename.lastIndexOf(".")+1)   
            filename = "ADMIN.DIVISION.Player."+player.id+random.nextInt(10 ** 10)+filename
            if(amazonS3Service.put(f.getInputStream(), filename, ext, f.getSize())){
                player.picture = amazonS3Service.getFileUrl(filename)
                player.nickname = params.nickname.trim()
                player.realname = params.realname.trim()
                player.role = params.role.trim()
                player.dob = Date.parse("dd-MMM-yyyy", params.dob)
                player.nationality = params.nationality.trim()
                if(player.save(flush:true)){
                    team.addToPlayers(player)
                    if(team.save(flush:true)){
                        flash.message="Player created"
                    }
                    else{
                        flash.message="Failed to create"
                    }
                }
                else{
                    flash.message="Failed to create"
                }
            }
            else{
                flash.message="Please upload picture file (.jpg, .png, .gif or .tiff)"
            }
        }
        else{
            flash.message="Please select a picture"
        }
        redirect(action:"editTeam", id:params.id)
    }
    def deletePlayer(){
        def team = Team.get(params.teamId)
        def player = Player.get(params.id)

        amazonS3Service.delete(amazonS3Service.getFilenameFromUrl(player.picture))//delete old pic

        def accoladeList = []
        accoladeList += player.accolades
        accoladeList.each{
            player.removeFromAccolades(it)
            it.delete()
        }
        team.removeFromPlayers(player)
        player.delete()
        if(team.save(flush:true)){
            flash.message="Player deleted"
        }
        else{
            flash.message="Failed to delete"
        }
        redirect(action:"editTeam", id:params.teamId)
    }

    def editAccolade(){
        def accolade = Accolade.get(params.id)
        [accolade:accolade]
    }
    def updateAccolade(){
        def accolade = Accolade.get(params.id)
        accolade.game = params.game.trim()
        if(accolade.save(flush:true)){
            flash.message="Accolade updated"
        }
        else{
            flash.message="Accolade failed to update"
        }
        redirect(action:"editAccolade", id:params.id)
    }
    def updateAccoladeEvents(){
        def accolade = Accolade.get(params.id)
        accolade.events.clear()
        def eventString = params.events.trim().replaceAll("\r\n|\n\r|\n|\r","|")
        def eventList = eventString.tokenize("|")
        eventList.each{
            accolade.addToEvents(it)
        }
        if(accolade.save(flush:true)){
            flash.message="Events updated"
        }
        else{
            flash.message="Failed to update"
        }

        redirect(action:"editAccolade", id:params.id)
    }
    def addAccolade(){
        def player = Player.get(params.id)
        [player:player]
    }
    def createAccolade(){
        def player = Player.get(params.id)

        def accolade = new Accolade()
        accolade.game = params.game.trim()
        accolade.save()
        player.addToAccolades(accolade)
        if (!player.save()){
            flash.message="Failed to create"
        } 
        else{
            flash.message="Accolade created"
        }
        redirect(action:"editPlayer", id:params.id)
    }
    def deleteAccolade(){
        def player = Player.get(params.playerId)
        def accolade = Accolade.get(params.id)
        player.removeFromAccolades(accolade)
        accolade.delete()
        if(player.save(flush:true)){
            flash.message="Accolade deleted"
        }
        else{
            flash.message="Failed to delete"
        }
        redirect(action:"editPlayer", id:params.playerId)
    }

}








