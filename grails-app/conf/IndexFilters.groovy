import isg.*

class IndexFilters {

    def filters = {
        notificationCount(controller: '*', action: '*') {
            before = {
                request.home = Home.get(1)
                /*
            	request.sponsors = home.sponsors.sort()
                request.carouselItems = home.carouselItems
                request.background = home.background
                request.logo = home.logo
                request.topSponsor1 = home.topSponsor1
                request.topSponsor1Url = home.topSponsor1Url
                request.topSponsor2 = home.topSponsor2
                request.advertisementSide = home.advertisementSide
                request.advertisementMid = home.advertisementMid*/
            }
            after = {
            }
        }
    }
}