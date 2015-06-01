package blog2

class Category {
    Integer id
    String name
    static constraints = {
    	name blank: false
    }
}
