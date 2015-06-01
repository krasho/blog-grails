package blog2

class Post {
    String title
    String body
    Date published_date

    Category category

    static constraints = {
    	title blank: false
    	body blank: false
    }
}
