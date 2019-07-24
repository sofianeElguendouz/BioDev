<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Annimaux/Embranchements</title>
</head>
<body>

<script>   
	function gotoNextPage() { 
		var embr = "<c:out value='${i}'/>";
		location.href = "Embranchement";
	}
</script>


	<%@include file="header.jsp"  %>
	<h2 style="text-align:center; color:#8F8F8F">Ressources génétiques marines _ FAUNE</h2><br><br>
	
	<div class="container">
		<div class="row">
			<c:forEach var="i" begin="0" end="10" step="2">
			
			<script>
            
        	</script>
			
			
		    <div class="col-md-3">
		      <div class="thumbnail text-center">
		          <img src="images/RGMarines/poissons.png" alt="Lights" style="width:60%">
		          <div class="caption">
		          	<h3>Poissons_<c:out value="${ i }" /></h3>
		            <p>103 espèces</p>
		          </div>
		        <button onclick="gotoNextPage();" type="button" class="btn" style="color: white; background-color: #208247;">En savoir plus</button>
		      </div>
		    </div>
		    </c:forEach> 
		</div>  
	</div>
	
	<%@include file="footer.jsp" %>
</body>
</html>