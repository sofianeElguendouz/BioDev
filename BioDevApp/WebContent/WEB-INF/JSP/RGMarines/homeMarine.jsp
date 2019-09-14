<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>RG Marines</title>
	
	
	
</head>
<body>

<script>   
	function gotoNextPage(p) { 
		switch (p) {
		case 1 : location.href = "Annimaux";break;
		case 2 : location.href = "Vegetaux";break;
		case 3 : location.href = "Bacteries";break;
		case 4 : location.href = "Champignons";break;
		default : location.href = "StartRGMarines";
		}
	}
</script>

	<%@include file="header.jsp"  %>
	<h2 style="text-align:center; color:#8F8F8F">Ressources génétiques marines</h2>
	<div style="display: table;margin: 0 auto; min-height: 100%;color:#8F8F8F">
		<table>
			<tr>
			  <c:forEach var="i" begin="1" end="${ sessionScope.listClassifications1.size() }" step="1">
			  	<td><img onclick="gotoNextPage(${i});" alt="${sessionScope.listClassifications1.get(i-1).getNom()}" src="${sessionScope.listClassifications1.get(i-1).getImage()}" style="border-radius:50%;width:320px;height:320px;"></td>
			  </c:forEach>
				
			  
			</tr>
			<tr style="text-align:center; font-size:30px">
			  <c:forEach var="i" begin="1" end="${ sessionScope.listClassifications1.size() }" step="1">
			  	<td>${sessionScope.listClassifications1.get(i-1).getNom()}</td>
			  </c:forEach>
				
			</tr>
		</table>
	</div>
	<br><br><br><br>
	<%@include file="footer.jsp" %>

</body>

</html>