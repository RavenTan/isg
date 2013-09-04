package isg

class FeatureController {

    def index() {
    	def featureList = Feature.getAll()
    	featureList.sort{a,b -> 
		   b.date <=> a.date
    	}
    	[featureList:featureList]
    }
    def article() { 
    	def feature = Feature.get(params.id)
    	[feature:feature]
    }
}
