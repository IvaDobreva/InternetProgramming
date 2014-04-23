
<%@ page import="moviedatabase.Movies" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movies.label', default: 'Movies')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
	</head>
	<body>

    <!-- Shell -->
    <div id="shell">
      <!-- Header -->
      <div id="header">
        <h1 id="logo"><a href="#">Movie Hunter</a></h1>
        <!-- Social networks -->
        
    <!-- Navigation -->
		<a href="#list-movies" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="navigation" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>


		<div id="list-movies" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'movies.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="producer" title="${message(code: 'movies.producer.label', default: 'Producer')}" />
					
						<g:sortableColumn property="actors" title="${message(code: 'movies.actors.label', default: 'Actors')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'movies.description.label', default: 'Description')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${moviesInstanceList}" status="i" var="moviesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${moviesInstance.id}">${fieldValue(bean: moviesInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: moviesInstance, field: "producer")}</td>
					
						<td>${fieldValue(bean: moviesInstance, field: "actors")}</td>
					
						<td>${fieldValue(bean: moviesInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${moviesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
