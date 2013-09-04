package isg

class NewsController {

    def index() {
    	def newsList = News.getAll()
    	newsList.sort{a,b -> 
		   b.date <=> a.date
    	}
    	[newsList:newsList]
    }
    def article() {
    	def news = News.get(params.id)
    	[news:news]
    }
}
