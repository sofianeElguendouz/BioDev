<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Détails</title>
<link rel = "stylesheet" type = "text/css" href = "Styles/RGMarines/map.css" />

</head>
<body>
	<%@include file="header.jsp"  %>
	<div class="container" style="color:#4D4F5C;">
		<div>
			<h2 style="text-align:center;">RG Marines --> ${ sessionScope.nom1} --> ${ sessionScope.nom2}</h2><br><br>
			<img align="right" src="${sessionScope.rg.getImage()}" class="img-thumbnail">
			<h2 style="text-align:left">${sessionScope.rg.getNom_francais()}</h2>
			<h5 style="text-align:left;">${sessionScope.rg.getNom_latin()} | (Cocco, 1833) <br>N°168</h5>
			
		</div>
		<div>
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">Elément</th>
			      <th scope="col">Détail</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">CLE D'IDENTIFICATION</th>
			      <td>
			      		${sessionScope.rm.getCleIdentif()}
				  </td>
			    </tr>
			    <tr>
			      <th scope="row">BITOPE</th>
			      <td>P. rouxi se rencontre de 3 à 40 mètres sur substrats* durs, de type rochers lisses et éboulis à faible profondeur ou sur du coralligène</td>
			    </tr>
			    <tr>
			      <th scope="row">NOMS</th>
			      <td>
			      		Noms communs Arabes          :                                  ${sessionScope.rg.getNom_arabe()}<br>
			      		Noms communs Amazigh         :                                  ${sessionScope.rg.getNom_amazigh()}<br>
						Noms communs internationaux  :                               	${sessionScope.rg.getNom_latin()}<br>
						Autres noms scientifiques parfois utilisés,mais non valides	:	${sessionScope.rm.getAutres_noms()}<br>                          
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">IMAGES</th>
			      <td>
			      		<img src="${sessionScope.rm.getImage1()}" class="img-thumbnail">
			      		<img src="${sessionScope.rm.getImageMale()}" class="img-thumbnail">
			      		<img src="${sessionScope.rm.getImageFemale()}" class="img-thumbnail">
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">DESCRIPTION</th>
			      <td>
			      		${sessionScope.rg.getDescription()}
			      </td>
			    </tr>
			    
			    <tr>
			      <th scope="row">Connaissance traditionnelle associée</th>
			      <td>
			      		<button type="submit" class="btn" style="color: white; background-color: #208247;" data-toggle="modal" data-target="#CTAmodal">CONNAISSANCE TRADITIONNELLE ASSOCIEE</button>
			      		<!-- Modal -->
						<div class="modal fade" id="CTAmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
        						<h4 class="modal-title">CTA à "${sessionScope.rg.getNom_latin()} / ${sessionScope.rg.getNom_francais()} / ${sessionScope.rg.getNom_arabe()}"</h4>
						      </div>
						      <div class="modal-body">
						      <img align="right" src="${sessionScope.cta.getImage()}" class="img-thumbnail">
						      <p>
						        Ingrédients :<br>
								${sessionScope.cta.getIngredients()}
								<br>
								Préparation :<br>
								${sessionScope.cta.getPreparation()}
								<br>
								Utilisation :<br>
								${sessionScope.cta.getDescription()} <br>
							  </p>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fermer</button>
						        <button type="button" class="btn btn-primary">Imprimer</button>
						      </div>
						    </div>
						  </div>
						</div>
			      		<img align="right" src="images/RGMarines/cta.png" style="height:20%; weight:20%;">
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">ALIMENTATION</th>
			      <td>
			      		${sessionScope.rm.getAlimentation()}
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">ECOSYSTEME</th>
			      <td>
			      		Quantité O2 : ${sessionScope.em.getQt_o2()}%<br>
			      		Quantité CO2 : ${sessionScope.em.getQt_co2()}%<br>
			      		Température de la mer : ${sessionScope.em.getTemperature_mer()}°C<br>
			      		Salinité : ${sessionScope.em.getSalinite()}%<br>
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">LOCALISATION</th>
			      <td>
			      		Nombre approximatif en l'Algerie : ${sessionScope.rg.getNombre()}<br>
			      		Régions    : ${sessionScope.lm.getRegion()}<br>
			      		Wilayas    : ${sessionScope.lm.getWilaya()}<br>
			      		Profondeur : ${sessionScope.lm.getAltitude()}m<br>
			      		Carte : <br><br>
			      </td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</div>
	<div id="map"></div>
	
	
	<%@include file="footer.jsp" %>
	
	
	
	<script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 37.710469, lng: 3.008843},
          zoom: 7
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC-XZsXgGTjAOhfoionM0nR15p0qDvBT54&callback=initMap" async defer></script>
	
	
	
	
	
	
</body>
</html>