package moviedatabase

class Movies {
    String title;
    Date premiere;
    String producer;
    String actors;
    String description;
  //  String coverImage;
	String fileName;	
	String coverImagePath;
    
	static constraints = {
   		title(blank:false)
		producer(blank:false)
 		actors(blank: false)
		description(blank:false)
		//coverImage(blank:false, nullable:true)
		coverImagePath(blank:false, nullable:true)
	}
}
