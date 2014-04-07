<%@ page import="moviedatabase.Movies" %>



<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'actors', 'error')} ">
	<label for="actors">
		<g:message code="movies.actors.label" default="Actors" />
		
	</label>
	<g:textField name="actors" value="${moviesInstance?.actors}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="movies.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${moviesInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'premiere', 'error')} required">
	<label for="premiere">
		<g:message code="movies.premiere.label" default="Premiere" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="premiere" precision="day"  value="${moviesInstance?.premiere}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'producer', 'error')} ">
	<label for="producer">
		<g:message code="movies.producer.label" default="Producer" />
		
	</label>
	<g:textField name="producer" value="${moviesInstance?.producer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="movies.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${moviesInstance?.title}"/>

</div>

