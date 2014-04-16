package moviedatabase

import com.lucastex.grails.fileuploader.UFile

class Movies {
    String title;
    Date premiere;
    String producer;
    String actors;
    String description;
    UFile coverImage;
    String cover;
    static constraints = {
   		title(blank:false)
	//	date(blank:false)
		producer(blank:false)
 		actors(blank: false)
		description(blank:false)
		cover(nullable:true)
		//avatarF(nullable:true)
	}
}
