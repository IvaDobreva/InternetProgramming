
<%@ page import="moviedatabase.Movies" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movies.label', default: 'Movies')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movies" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movies" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movies">
			
				<g:if test="${moviesInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="movies.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${moviesInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moviesInstance?.producer}">
				<li class="fieldcontain">
					<span id="producer-label" class="property-label"><g:message code="movies.producer.label" default="Producer" /></span>
					
						<span class="property-value" aria-labelledby="producer-label"><g:fieldValue bean="${moviesInstance}" field="producer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moviesInstance?.actors}">
				<li class="fieldcontain">
					<span id="actors-label" class="property-label"><g:message code="movies.actors.label" default="Actors" /></span>
					
						<span class="property-value" aria-labelledby="actors-label"><g:fieldValue bean="${moviesInstance}" field="actors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${moviesInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="movies.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${moviesInstance}" field="description"/></span>
					
				</li>
				</g:if>
				<g:if test="${moviesInstance?.coverImagePath}">
					<li class="fieldcontain">
						 <img src="${resource(dir: 'images/covers', file: moviesInstance.coverImagePath)}" alt="Grails"/>
					</li>
				</g:if>
				<g:if test="${moviesInstance?.premiere}">
				<li class="fieldcontain">
					<span id="premiere-label" class="property-label"><g:message code="movies.premiere.label" default="Premiere" /></span>
					
						<span class="property-value" aria-labelledby="premiere-label"><g:formatDate date="${moviesInstance?.premiere}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:moviesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${moviesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
