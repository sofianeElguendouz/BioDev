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
		<h2 style="text-align:center;">RG Marines --> Faune --> Poissons --> Poissons_Osseux</h2><br><br>
		<h2 style="text-align:left">BLENNIE DE ROUX</h2>
		<h5 style="text-align:left;">Parablennius rouxi | (Cocco, 1833) <br>N°168</h5>
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
			      <td>Petit poisson de 8 cm maximum<br>
					  Une nageoire dorsale très longue et rectiligne<br>
				      Livrée beige clair avec une bande longitudinale sombre<br>
					  Présence de tentacules oculaires<br>
					  Fines lignes bleues sur le museau<br>
				  </td>
			    </tr>
			    <tr>
			      <th scope="row">BITOPE</th>
			      <td>P. rouxi se rencontre de 3 à 40 mètres sur substrats* durs, de type rochers lisses et éboulis à faible profondeur ou sur du coralligène</td>
			    </tr>
			    <tr>
			      <th scope="row">NOMS</th>
			      <td>
			      		Autres noms communs français :                                  Baveuse blanche<br>
						Noms communs internationaux  :                               	Long-striped blenny, striped blenny (GB), Bausa janca, bavosa Bianca (I), 
                                                                                     	Babosa de Roux (E), Streifen-Schleimfish (D), Roux slijmvis (NL)<br>
						Autres noms scientifiques parfois utilisés,mais non valides	:	Blennius rouxi Cocco, 1833<br>                          
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">IMAGES</th>
			      <td>
			      		<img src="images/RGMarines/poa_sparus.jpg" class="img-thumbnail">
			      		<img src="images/RGMarines/poa_sparus.jpg" class="img-thumbnail">
			      		<img src="images/RGMarines/poa_sparus.jpg" class="img-thumbnail">
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">DESCRIPTION</th>
			      <td>
			      		La blennie de roux est un petit poisson de 8 cm de long au maximum, possédant une seule nageoire dorsale très longue et presque rectiligne. La nageoire anale a une longueur supérieure à la moitié du corps. Le corps et la tête sont allongés et fins. La livrée est typiquement beige clair avec une bande longitudinale sombre qui part du front jusqu’à la nageoire caudale. Au-dessus des yeux se trouvent des tentacules oculaires à 3 ou 4 branches, la première étant plus longue que les autres. Ces tentacules sont plus longs chez le mâle que chez la femelle, les mâles ayant par ailleurs une tache verte à bleu-noir à l’avant de la nageoire dorsale. De fines rayures bleues couvrent le museau.
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">ALIMENTATION</th>
			      <td>
			      		P. rouxi se nourrit d’algues, de crustacés copépodes et de vers polychètes.
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">ECOSYSTEME</th>
			      <td>
			      		Quantité O2 : 30%<br>
			      		Quantité CO2 : 1%<br>
			      		Température de la mer : 7°C<br>
			      		Salinité : 20%<br>
			      </td>
			    </tr>
			    <tr>
			      <th scope="row">LOCALISATION</th>
			      <td>
			      		Nombre approximatif dans l'Algerie : 12 millions
			      		Sur carte : 
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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpM3RtFJb4RI_cAmVwn-oNrcrkRAB5yqA&callback=initMap" async defer></script>
	
	
	
	
	
	
</body>
</html>