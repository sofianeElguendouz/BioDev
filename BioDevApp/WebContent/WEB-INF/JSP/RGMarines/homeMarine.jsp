<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Page d'acceuil de la partie RG Marines</title>
</head>
<body>
	<%@include file="header.jsp"  %>
	
	<h2 style="text-align:center; color:#8F8F8F">Ressources génétiques marines</h2>
	<div style="display: table;margin: 0 auto; min-height: 100%;color:#8F8F8F">
		<table>
			<tr>
				<td><a onclick='<c:set var="choix" value="1"></c:set>'><img alt="Animaux" src="img/animaux.jpg" style="border-radius:50%;width:160px;height:160px;"></a></td>
				<td><a onclick='<c:set var="choix" value="2"></c:set>'><img alt="Végétaux" src="img/vegetaux.png" style="border-radius:50%;width:320px;height:320px;"></a></td>
				<td><a href="<c:url value='/animaux'/>"><img alt="Bactéries" src="img/bacteries.jpg" style="border-radius:50%;width:160px;height:160px;"></a></td>
				<td><a><img alt="Champignons" src="img/champignons.png" style="border-radius:50%;width:320px;height:320px;"></a></td>
			</tr>
			<tr style="text-align:center; font-size:30px">
				<td>Animaux</td>
				<td>Végétaux</td>
				<td>Bactéries</td>
				<td>Champignons</td>
			</tr>
		</table>
	</div>
	<br><br><br><br><br>
	
	<%@include file="footer.jsp" %>
</body>
</html>