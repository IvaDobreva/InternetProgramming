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
				<li>
          
        </li>
			</ul>
		</div>
	</div>
	<div id="body" class="movies">
		<h2>				
        <g:fieldValue bean="${moviesInstance}" field="title"/>
    </h2>
					
    <img src="${resource(dir:'images/covers/', file: moviesInstance.fileName)}" alt=""/>
      
		<div>
			<h3>Synopsis</h3>
			<p>
					
        <g:fieldValue bean="${moviesInstance}" field="description"/>
	
			</p>
      <!--
			<p>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ullamcorper ornare turpis, tempor iaculis velit gravida ut. Fusce lobortis justo non elit volutpat eu euismod odio adipiscing. Pellentesque pharetra justo in tortor fringilla ac sodales tellus viverra. Fusce eu erat turpis, et sodales metus. Vestibulum neque quam, lobortis in pretium sed, varius ut purus. Donec turpis purus, lacinia a tincidunt nec, sodales convallis orci.
			</p>
-->
		</div>
		<div class="section">
			<h3>Details</h3>
    <!-- Missing for now
			<span>Drama, Adventure</span>
-->
			<p>
				<span>Starring:</span> <g:fieldValue bean="${moviesInstance}" field="actors"/>
			</p>
			<p>
				<span>Directed By:</span> <g:fieldValue bean="${moviesInstance}" field="producer"/>
			</p>
<!-- screenplay
			<p>
				<span>Screenplay By:</span> Melissa J. Soper
			</p>
-->
			<p>
				<span>Runs For:</span> 120 minutes
			</p>

      <p> 
        <span>Premiere:</span> <g:formatDate date="${moviesInstance?.premiere}" />
      </p>
			
		</div>
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
					<li>
						<g:link class="edit" action="edit" resource="${moviesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					</li>

					<li>
						<g:form url="[resource:moviesInstance, action:'delete']" method="DELETE" style="">
            <g:actionSubmit action="delete" value="Delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

            </g:form>
          </li>
				</ul>
			</div>
			<p>
			
			</p>
			
		</div>
	</div>
</body>
</html>
