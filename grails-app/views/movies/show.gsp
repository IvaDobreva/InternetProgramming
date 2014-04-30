<%@ page import="moviedatabase.Movies" %>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
  
	<title>Movies - Cinema Theater Website Template</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
  
</head>
<body>
	<div id="header">
		<div>
			<a href="index.html" id="logo"><img src="images/logo.png" alt=""></a>
			<ul>
				<li>
					<a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				</li>
				<li class="selected">
					<g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
				</li>
				<li>
          <g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
        </li>
			</ul>
		</div>
	</div>
	<div id="body" class="movies">
		<h2>
      <g:if test="${moviesInstance?.title}">
				
					<span id="title-label" class="property-label"><g:message code="movies.title.label" default="Title" /></span>
          <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${moviesInstance}" field="title"/></span>
					
				</g:if>
    </h2>
					
    <img src="${resource(dir:'images/covers/', file: moviesInstance.fileName)}" alt=""/>
      
		<div>
			<h3>Synopsis</h3>
			<p>
				<g:if test="${moviesInstance?.description}">
					
          <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${moviesInstance}" field="description"/></span>
				</g:if>
			</p>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ullamcorper ornare turpis, tempor iaculis velit gravida ut. Fusce lobortis justo non elit volutpat eu euismod odio adipiscing. Pellentesque pharetra justo in tortor fringilla ac sodales tellus viverra. Fusce eu erat turpis, et sodales metus. Vestibulum neque quam, lobortis in pretium sed, varius ut purus. Donec turpis purus, lacinia a tincidunt nec, sodales convallis orci.
			</p>
		</div>
		<div class="section">
			<h3>Details</h3>
			<span>Drama, Adventure</span>
			<p>
				<span>Starring:</span> Janet S. Foster, Alexander S. Irwin, Rosendo P. Fowler,
			</p>
			<p>
				<span>Directed By:</span> Barbara J. Hernandez
			</p>
			<p>
				<span>Screenplay By:</span> Melissa J. Soper
			</p>
			<p>
				<span>Runs For:</span> 120 minutes
			</p>
			<p>
				<span>Showtimes:</span> 11:30     1:30     3:30     5:30     7:30     10:30
			</p>
		</div>
	</div>
	<div id="footer">
		<div>
			<div>
				<span>Quick Links</span>
				<ul>
					<li>
						<a href="index.html">Home</a>
					</li>
					<li>
						<a href="ticket-info.html">Ticket Info</a>
					</li>
					<li>
						<a href="#">Location</a>
					</li>
					<li>
						<a href="movies.html">Now Showing</a>
					</li>
					<li>
						<a href="rentals.html">Rentals</a>
					</li>
					<li>
						<a href="about.html">Contact</a>
					</li>
					<li>
						<a href="movies.html">Comming Soon</a>
					</li>
					<li>
						<a href="about.html">The Company</a>
					</li>
					<li>
						<a href="blog.html">Blog</a>
					</li>
				</ul>
			</div>
			<div class="section">
				<span>Recent Tweets</span>
				<ul>
					<li>
						<p>
							Sed id mattis tellus. Proin egestas velit vel neque placerat sed interdum neque porta.
						</p>
						<span><a href="#">- 1 day ago</a></span>
					</li>
					<li>
						<p>
							Praesent at urna ac urna congue convallis.
						</p>
						<span><a href="#">- 2 day ago</a></span>
					</li>
				</ul>
			</div>
			<div>
				<span>Sign Up For Our Mailing List</span>
				<p>
					Praesent at urna ac urna congue convallis. Maecenas sed placerat turpis. Duis in dolor ut nibh molestie faucibus.
				</p>
				<form action="index.html">
					<input type="text" onclick="this.value='';" onfocus="this.select()" onblur="this.value=!this.value?'Enter Email Address Here':this.value;" value="Enter Email Address Here">
					<input type="submit" value="">
				</form>
			</div>
			<p>
				&#169; 2023 Cinema Theatre
			</p>
			<div class="connect">
				<span>Stay Connected:</span> <a href="http://freewebsitetemplates.com/go/facebook/" id="facebook">facebook</a> <a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a> <a href="http://freewebsitetemplates.com/go/googleplus/" id="googleplus">google+</a>
			</div>
		</div>
	</div>
</body>
</html>
