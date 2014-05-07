<%@ page import="moviedatabase.Movies" %>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="movies.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${moviesInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'producer', 'error')} required">
	<label for="producer">
		<g:message code="movies.producer.label" default="Producer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="producer" required="" value="${moviesInstance?.producer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'actors', 'error')} required">
	<label for="actors">
		<g:message code="movies.actors.label" default="Actors" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="actors" required="" value="${moviesInstance?.actors}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="movies.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${moviesInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'coverImage', 'error')} required">
	<label for="coverImage">
		<g:message code="movies.coverImage.label" default="Cover Image" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" name="coverImage"/>
</div>

<div class="fieldcontain ${hasErrors(bean: moviesInstance, field: 'premiere', 'error')} required">
	<label for="premiere">
		<g:message code="movies.premiere.label" default="Premiere" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="premiere" precision="day"  value="${moviesInstance?.premiere}"  />

</div>

