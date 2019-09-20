<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>RG Marines</title>
</head>
<body>

	<%@include file="header.jsp"  %>
	<br><br>
	<h2 style="text-align:center; color:#8F8F8F">Ressources g�n�tiques marines</h2>
	<br><br>
	<div style="display: table;margin: 0 auto; min-height: 100%;color:#8F8F8F; text-align:center;">
		<button onClick="location.href = 'RGMproposes';" type="button" class="btn btn-warning btn-lg" data-toggle="tooltip" title="voir les RG propos�es en attente de validation">RGM propos�es</button><br><br>
		<button onClick="location.href = 'CTAproposes';" type="button" class="btn btn-info btn-lg" data-toggle="tooltip" title="voir les CTA propos�es en attente de validation">CTA propos�es</button><br><br>
		<button onClick="location.href = 'AjoutRGM';" type="button" class="btn btn-warning btn-lg" data-toggle="tooltip" title="Ajouter une ressource g�n�tique marine">Ajouter une RGM</button><br><br>
		<button onClick="location.href = 'AjoutCTA';" type="button" class="btn btn-info btn-lg" data-toggle="tooltip" title="Ajouter une connaissance traditionnelle associ�e � une RG">Ajouter une CTA</button><br>
		mettre � jour une rg/cta au niveau des pages normales (ajouter un boutton pour l'admin pour lui parmettre �a)
		
	</div>
	<%@include file="footer.jsp" %>

</body>
<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
});
</script>
</html>