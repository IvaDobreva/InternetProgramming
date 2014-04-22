package moviedatabase

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MoviesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Movies.list(params), model:[moviesInstanceCount: Movies.count()]
    }

    def show(Movies moviesInstance) {
        respond moviesInstance
    }

    def create() {
        respond new Movies(params)
    }

    @Transactional
    def save(Movies moviesInstance) {
		if (moviesInstance == null) {
            notFound()
            return
        }

		def coverFile = request.getFile('coverImage')
		if(coverFile.empty) {
			println "EMPTY FILE"	//do something for empty file
		} else {
			moviesInstance.coverImage = coverFile.getOriginalFilename() //Saves filename
			
			
			def appDir = servletContext.getRealPath("/")	//Finds web-app path
			moviesInstance.coverImagePath = appDir + "images/covers/"  + moviesInstance.coverImage	//Creates path where it can save images
			//println moviesInstance.coverImagePath
			coverFile.transferTo(new File(moviesInstance.coverImagePath))	//Transfer file to the app 
		} 
		if (!moviesInstance.save(flush: true)) {
			moviesInstance.errors.each {
				println it
			}
		}
        request.withFormat {
			def params = [:] 
			def values //title:seoifs // "title":"ssegs"
			for(v in moviesInstance.properties) {
				values = v.toString().tokenize(':')
				params.put(values[0], values[1])			
			}
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'moviesInstance.label', default: 'Movies'), moviesInstance.id])
				redirect moviesInstance
            }
            '*' { respond moviesInstance, [status: CREATED] }
        }
    }

    def edit(Movies moviesInstance) {
        respond moviesInstance
    }

    @Transactional
    def update(Movies moviesInstance) {
        if (moviesInstance == null) {
            notFound()
            return
        }

        if (moviesInstance.hasErrors()) {
            respond moviesInstance.errors, view:'edit'
            return
        }

        moviesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Movies.label', default: 'Movies'), moviesInstance.id])
                redirect moviesInstance
            }
            '*'{ respond moviesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Movies moviesInstance) {

        if (moviesInstance == null) {
            notFound()
            return
        }

        moviesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Movies.label', default: 'Movies'), moviesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'moviesInstance.label', default: 'Movies'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
