<%-- 
    Document   : AddCustomer
    Created on : Jun 30, 2015, 7:21:36 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="content.jsp" %>

<script>

/*function btn() {
  var y = document.getElementById('fname');
  alert(y)

}*/


</script>

</head>
<body class="page page-id-39 page-template-default no-fittext basic">

	<div id="page">

		<header id="header">
			<%@include file="header.jsp" %>
<!-- #site-navigation -->

			 <div class="title-card-wrapper">
               
			</div>

		</header>

		<main>
	<div class="container">
		<div class="row">

<div id="primary" class="col-md-8 pull-right hfeed">
									<!-- #post-39 -->

					
<div id="comments" class="comments-area">
	
	
<div id="respond" class="comment-respond">
<form action="AddCourse1.php" method="post"  class="comment-form" >

							
<p ><label for="author">Full Name </label> 
<input  type="name" id="fname"  onchange="btn()"  size="70" aria-required="true" name="Cname" required placeholder="Enter the coursename"></p>
<p ><label for="author">NIC no</label> 
<input id="nic" type="name"  size="70" aria-required="true" name="nic" required placeholder="Enter the NIC no"></p>
<p ><label for="author">Address </label> 
<input  onmousemove="btn()" type="name"  size="70" aria-required="true" name="SDate" required placeholder="Enter the start date"></p>
<p ><label for="author">Date Of Birth </label> 
<input  onmousemove="btn()" type="name"  size="70" aria-required="true" name="SDate" required placeholder="Enter the DoB"></p>
<p><label for="author">Phone no</label> 
<input  type="name"  size="70" aria-required="true" name="Fdue" required placeholder="Enter the Fee Duration"></p>
<p ><label for="author">Email</label> 
<input id="" type="name"  size="70" aria-required="true" name="Fdue" required placeholder="Enter the Fee Duration"></p>

<p class="form-submit">
<input type="submit" class="submit" value="Add Customer"> 
</p>					
</form>
							</div><!-- #respond -->
			</div><!-- #comments .comments-area -->			</div>
			
				<div id="secondary" class="col-md-4" role="complementary">
<article id="post-39" class="post-39 page type-page status-publish hentry xfolkentry">
						<h1 class="entry-title">Purchase Bike</h1>

					    <!-- .entry-content -->

					    	<footer class="clearfix">
	    	</footer><!-- .entry -->
					</article>
<aside id="search-2" class="widget widget_search">


</aside>

</div><!-- #secondary.widget-area -->		</div>
	</div>

	</main><!-- main -->
        <%@include file="footer.jsp" %>
</div><!-- #page -->



</body></html>
