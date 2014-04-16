package moviedatabase

class Movies {
    String title;
    Date premiere;
    String producer;
    String actors;
    String description;
    String coverImage;
    static constraints = {
   		title(blank:false)
		producer(blank:false)
 		actors(blank: false)
		description(blank:false)
	}
}
