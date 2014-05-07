<%@ page import="moviedatabase.Movies" %>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="layout" content="show">
   
    <g:set var="entityName" value="${message(code: 'movies.label', default: 'Movies')}" />
    <title>Movies</title>
  
  </head>
	<body>

<!--Header + navigation -->
    <div id="header">
      <div>
        <a href="${createLink(uri: '/movies/index')}" id="logo"><img src="${resource(dir: 'images', file: 'logo.png')}" alt=""/></a>
        <ul class ="menu">
          <li>
            <a class="home" href="${createLink(uri: '/movies/index')}"><g:message code="default.home.label"/></a>
          </li>
          <li class="selected">
            <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
          </li>
          <li>
            <g:link class="create" action="create">New Movie</g:link>
          </li>
        </ul>
      </div>
    </div>

		<div id="body" class="movies">
			<h2><g:message code="default.list.label" args="[entityName]" /></h2>
        <ul>
          <g:each in="${moviesInstanceList}" status="i" var="moviesInstance">
              <li>
                <g:link action="show" id="${moviesInstance.id}"><img src="${resource(dir:'images/covers/', file: moviesInstance.fileName)}" alt=""/> </g:link>
                <h3><g:link action="show" id="${moviesInstance.id}">${fieldValue(bean: moviesInstance, field: "title")}</g:link></h3>
                <p> ${fieldValue(bean: moviesInstance, field: "description")}</p>
                <g:link action="show" id="${moviesInstance.id}">Read more</g:link>
              </li>
          </g:each>
        </ul>
		</div>

    	<div id="footer">
		<div>
			<div>
				<span>Quick Links</span>
				<ul>
          <li>
            <a class="home" href="${createLink(uri: '/movies/index')}"><g:message code="default.home.label"/></a>
          </li>
					<li>
            <g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					</li>
				</ul>
			</div>
			<p>
			
			</p>
			
		</div>
	</div>
	</body>
</html>
