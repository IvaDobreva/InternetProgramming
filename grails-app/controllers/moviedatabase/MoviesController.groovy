package moviedatabase

import static org.springframework.http.HttpStatus.*
import org.springframework.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MoviesController {

    //static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

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

      def f = request.getFile('coverImage')
      if (f.empty) {
        flash.message = 'file cannot be empty'
        render(view: 'create')
        return
      }

      moviesInstance.coverImagePath = f.getOriginalFilename()
      moviesInstance.save(flush: true)

      f.transferTo(new File(servletContext.getRealPath("/") + "/images/covers/" + moviesInstance.coverImagePath))
      redirect(action: "index")
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
      //TODO: Do this thing
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
