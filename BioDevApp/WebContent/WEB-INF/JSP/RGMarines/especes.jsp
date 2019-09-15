<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Espèces</title>

<link rel = "stylesheet" type = "text/css" href = "Styles/RGMarines/images.css" />

</head>
<body>

	<%@include file="header.jsp"  %>
	<h2 style="text-align:center; color:#8F8F8F">RG Marines --> ${sessionScope.nom1} --> ${sessionScope.nom2} --> ${sessionScope.nom3} (Espèces)</h2><br><br>
	
	<div class="container">
		<div class="row">
			<c:forEach var="i" begin="1" end="${sessionScope.listRM.size() }" step="1">
		    <div class="col-md-3">
		      <div class="thumbnail text-center">
		          <img src="${sessionScope.listRM.get(i-1).getImage()}" alt="Lights" class="roundedImageShadow">
		          
		          	<form method="GET" action="Details">
			          <div class="caption">
			          	<input type="hidden" name="numESP" value="${i}">
			          	<input type="hidden" name="idESP" value="${sessionScope.listRM.get(i-1).getId()}">
			          	<h3>${sessionScope.listRM.get(i-1).getNom_latin()}</h3>
			          </div>
		          	<button type="submit" class="btn" style="color: white; background-color: #208247;">En savoir plus</button>
		          	</form>
		      </div>
		    </div>
		    </c:forEach> 
		</div>  
	</div>
	
	<%@include file="footer.jsp" %>
</body>
</html>