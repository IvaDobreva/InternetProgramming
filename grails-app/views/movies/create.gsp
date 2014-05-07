<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="layout" content="show">
   
    <g:set var="entityName" value="${message(code: 'movies.label', default: 'Movies')}" />
    <title>Movies</title>
  
  </head>

	<body>
		
		<div id="header">
      <div>
        <a href="${createLink(uri: '/movies/index')}" id="logo"><img src="${resource(dir: 'images', file: 'logo.png')}" alt=""/></a>
        <ul class ="menu">
          <li>
            <a class="home" href="${createLink(uri: '/movies/index')}"><g:message code="default.home.label"/></a>
          </li>
          <li>
            <g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
          </li>
        </ul>
      </div>
    </div>

		<div id="body" class="about">
			<h2><g:message code="default.create.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${moviesInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${moviesInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:uploadForm url="[resource:moviesInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:uploadForm>
		</div>
	</body>
</html>
