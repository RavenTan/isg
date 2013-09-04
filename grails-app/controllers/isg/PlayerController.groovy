package isg

class PlayerController {

    def index() {
    	def divisionList = Division.getAll()
    	[divisionList:divisionList]
    }

    def division() {
    	def division = Division.get(params.id)
    	def teamList = division.teams
    	[division:division, teamList:teamList]
   	}

    def profile() {
    	def player = Player.get(params.id)
   		[player:player]
    }
}
