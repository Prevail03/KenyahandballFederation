<?php
require_once('db.php');

if(isset($_POST['submit'])){
				
$fname =$_POST['fname'];
$lname = $_POST['lname'];
$gender =$_POST['gender'];
$dob = $_POST['dob'];
$country=$_POST['country'];
$localclub=$_POST['localclub'];
$interclub=$_POST['interclub'];
$national=$_POST['national'];
$email=$_POST['email'];
$username=$_POST['username'];
$password_1 = $_POST['password'];
$password = md5($password_1);


		$sql="INSERT INTO `register`(`fname`, `lname`, `gender`, `dob`, `country`, `localclub`, `interclub`, `national`, `email`, `username`, `password`)VALUES ('$fname','$lname','$gender','$dob','$country','$localclub','$interclub','$national','$email','$username','$password')";

			InsertData($sql);

				}
				
?>
<!DOCTYPE html>
<html>
<head>
	<title>KHF</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	  <marquee><h3>We are Handball.Handball Is Us.Its In Our DNA</h3></marquee>
	  <a href='home.html' class="btn btn-primary btn-lg active" role="button" aria-pressed="true"  type="submit" name="submit">Home</a>

	<h1>Register</h1>
   <form name="form" method="post" action="reg.php"> 
	   <p><label><b>First Name</b></label><input type="text"  name="fname" placeholder="Jane" required= "true"></p>
	   <p><label><b>Last Name</b></label><input type="text"  name="lname" placeholder="Doe" required= "true"></p>
       <p><label><b>Gender<b><br>
       <b> Male <b> </label><input type="radio" name="gender" value="Male" checked="checked">
        <b> Female <b><input type="radio" name="gender" value="Female"></b>
	   <b>Other(Rather not Say)</b> <input type="radio" name="gender" value="Other"></b></b></p>    
	  
	   <p><label>Date of Birth</label><input type="date"  name="dob" placeholder="Date of Birth" required= "true"></p>
	   <p><b>Country of Residence</b></td>
    <select name="country" required="true">
	   <option> </option> 	
	   <option >Afghanistan</option>
	   <option >Albania</option>
	   <option >Algeria</option>
	   <option >American Samoa</option>
	   <option >Andorra</option>
	   <option >Angola</option>
	   <option >Anguilla</option>
	   <option >Antigua & Barbuda</option>
	   <option >Argentina</option>
	   <option >Armenia</option>
	   <option >Aruba</option>
	   <option >Australia</option>
	   <option >Austria</option>
	   <option >Azerbaijan</option>
	   <option >Bahamas</option>
	   <option >Bahrain</option>
	   <option >Bangladesh</option>
	   <option >Barbados</option>
	   <option >Belarus</option>
	   <option >Belgium</option>
	   <option >Belize</option>
	   <option >Benin</option>
	   <option >Bermuda</option>
	   <option >Bhutan</option>
	   <option >Bolivia</option>
	   <option >Bonaire</option>
	   <option >Bosnia & Herzegovina</option>
	   <option >Botswana</option>
	   <option >Brazil</option>
	   <option >British Indian Ocean Ter</option>
	   <option >Brunei</option>
	   <option >Bulgaria</option>
	   <option >Burkina Faso</option>
	   <option >Burundi</option>
	   <option >Cambodia</option>
	   <option >Cameroon</option>
	   <option >Canada</option>
	   <option >Canary Islands</option>
	   <option >Cape Verde</option>
	   <option >Cayman Islands</option>
	   <option >Central African Republic</option>
	   <option >Chad</option>
	   <option >Channel Islands</option>
	   <option >Chile</option>
	   <option >China</option>
	   <option >Christmas Island</option>
	   <option >Cocos Island</option>
	   <option >Colombia</option>
	   <option >Comoros</option>
	   <option >Congo</option>
	   <option >Cook Islands</option>
	   <option >Costa Rica</option>
	   <option >Cote 'D'Ivoire</option>
	   <option >Croatia</option>
	   <option >Cuba</option>
	   <option >Curacao</option>
	   <option >Cyprus</option>
	   <option >Czech Republic</option>
	   <option >Denmark</option>
	   <option >Djibouti</option>
	   <option >Dominica</option>
	   <option >Dominican Republic</option>
	   <option >East Timor</option>
	   <option >Ecuador</option>
	   <option >Egypt</option>
	   <option >El Salvador</option>
	   <option >Equatorial Guinea</option>
	   <option >Eritrea</option>
	   <option >Estonia</option>
	   <option >Ethiopia</option>
	   <option >Falkland Islands</option>
	   <option >Faroe Islands</option>
	   <option >Fiji</option>
	   <option >Finland</option>
	   <option >France</option>
	   <option >French Guiana</option>
	   <option >French Polynesia</option>
	   <option >French Southern Ter</option>
	   <option >Gabon</option>
	   <option >Gambia</option>
	   <option >Georgia</option>
	   <option >Germany</option>
	   <option >Ghana</option>
	   <option >Gibraltar</option>
	   <option >Great Britain</option>
	   <option >Greece</option>
	   <option >Greenland</option>
	   <option >Grenada</option>
	   <option >Guadeloupe</option>
	   <option >Guam</option>
	   <option >Guatemala</option>
	   <option >Guinea</option>
	   <option >Guyana</option>
	   <option >Haiti</option>
	   <option >Hawaii</option>
	   <option >Honduras</option>
	   <option >Hong Kong</option>
	   <option >Hungary</option>
	   <option >Iceland</option>
	   <option >Indonesia</option>
	   <option >India</option>
	   <option >Iran</option>
	   <option >Iraq</option>
	   <option >Ireland</option>
	   <option >Isle of Man</option>
	   <option >Israel</option>
	   <option >Italy</option>
	   <option >Jamaica</option>
	   <option >Japan</option>
	   <option >Jordan</option>
	   <option >Kazakhstan</option>
	   <option >Kenya</option>
	   <option >Kiribati</option>
	   <option >North Korea</option>
	   <option >South Korea</option>
	   <option >Kuwait</option>
	   <option >Kyrgyzstan</option>
	   <option >Laos</option>
	   <option >Latvia</option>
	   <option >Lebanon</option>
	   <option >Lesotho</option>
	   <option >Liberia</option>
	   <option >Libya</option>
	   <option >Liechtenstein</option>
	   <option >Lithuania</option>
	   <option >Luxembourg</option>
	   <option >Macau</option>
	   <option >Macedonia</option>
	   <option >Madagascar</option>
	   <option >Malaysia</option>
	   <option >Malawi</option>
	   <option >Maldives</option>
	   <option >Mali</option>
	   <option >Malta</option>
	   <option >Marshall Islands</option>
	   <option >Martinique</option>
	   <option >Mauritania</option>
	   <option >Mauritius</option>
	   <option >Mayotte</option>
	   <option >Mexico</option>
	   <option >Midway Islands</option>
	   <option >Moldova</option>
	   <option >Monaco</option>
	   <option >Mongolia</option>
	   <option >Montserrat</option>
	   <option >Morocco</option>
	   <option >Mozambique</option>
	   <option >Myanmar</option>
	   <option >Nambia</option>
	   <option >Nauru</option>
	   <option >Nepal</option>
	   <option >Netherland Antilles</option>
	   <option >Netherlands (Holland, Europe)</option>
	   <option >Nevis</option>
	   <option >New Caledonia</option>
	   <option >New Zealand</option>
	   <option >Nicaragua</option>
	   <option >Niger</option>
	   <option >Nigeria</option>
	   <option >Niue</option>
	   <option >Norfolk Island</option>
	   <option >Norway</option>
	   <option >Oman</option>
	   <option >Pakistan</option>
	   <option >Palau Island</option>
	   <option >Palestine</option>
	   <option >Panama</option>
	   <option >Papua New Guinea</option>
	   <option >Paraguay</option>
	   <option >Peru</option>
	   <option >Philippines</option>
	   <option >Pitcairn Island</option>
	   <option >Poland</option>
	   <option >Portugal</option>
	   <option >Puerto Rico</option>
	   <option >Qatar</option>
	   <option >Republic of Montenegro</option>
	   <option >Republic of Serbia</option>
	   <option >Reunion</option>
	   <option >Romania</option>
	   <option >Russia</option>
	   <option >Rwanda</option>
	   <option >St Barthelemy</option>
	   <option >St Eustatius</option>
	   <option >St Helena</option>
	   <option >St Kitts-Nevis</option>
	   <option >St Lucia</option>
	   <option >St Maarten</option>
	   <option >St Pierre & Miquelon</option>
	   <option >St Vincent & Grenadines</option>
	   <option >Saipan</option>
	   <option >Samoa</option>
	   <option >Samoa American</option>
	   <option >San Marino</option>
	   <option >Sao Tome & Principe</option>
	   <option >Saudi Arabia</option>
	   <option >Senegal</option>
	   <option >Seychelles</option>
	   <option >Sierra Leone</option>
	   <option >Singapore</option>
	   <option >Slovakia</option>
	   <option >Slovenia</option>
	   <option >Solomon Islands</option>
	   <option >Somalia</option>
	   <option >South Africa</option>
	   <option >Spain</option>
	   <option >Sri Lanka</option>
	   <option >Sudan</option>
	   <option >Suriname</option>
	   <option >Swaziland</option>
	   <option >Sweden</option>
	   <option >Switzerland</option>
	   <option >Syria</option>
	   <option >Tahiti</option>
	   <option >Taiwan</option>
	   <option >Tajikistan</option>
	   <option >Tanzania</option>
	   <option >Thailand</option>
	   <option >Togo</option>
	   <option >Tokelau</option>
	   <option >Tonga</option>
	   <option >Trinidad & Tobago</option>
	   <option >Tunisia</option>
	   <option >Turkey</option>
	   <option >Turkmenistan</option>
	   <option >Turks & Caicos Is</option>
	   <option >Tuvalu</option>
	   <option >Uganda</option>
	   <option >United Kingdom</option>
	   <option >Ukraine</option>
	   <option >United Arab Emirates</option>
	   <option >United States of America</option>
	   <option >Uruguay</option>
	   <option >Uzbekistan</option>
	   <option >Vanuatu</option>
	   <option >Vatican City State</option>
	   <option >Venezuela</option>
	   <option >Vietnam</option>
	   <option >Virgin Islands (Brit)</option>
	   <option >Virgin Islands (USA)</option>
	   <option >Wake Island</option>
	   <option >Wallis & Futana Is</option>
	   <option >Yemen</option>
	   <option >Zaire</option>
	   <option >Zambia</option>
	   <option >Zimbabwe</option>
    </select></p>
		<p><b>Favorite Local Club</b></td>
        <select name="localclub" required="true">
		    <option> </option>
        	<option>Bucaneers</option>
        	<option>Black Mamba</option>
        	<option>NCPB Men</option>
        	<option>Boomerang</option>
        	<option>JKUAT</option>
        	<option>Rangers</option>
        	<option>Strathmore Tornadoes</option>
        	<option>Inspired Boys</option>
        	<option>Kenyatta University Hybrids</option>
        	<option>Buccaneers</option>
        	<option>UOE Pippers</option>
        	<option>Nanyuki</option>
        	<option>MKU Thika</option>
        	<option>Technical University of Kenya</option>
        	<option>St Pauls</option>
        	<option>Thika </option>
        	<option>Generations</option>
        	<option>Ulinzi Shooters</option>
        	<option>University of Nairobi</option>
        	<option>National Youth Service Men</option>
        	<option>Warriors</option>
        	<option>Makueni Bees</option>
        	<option>Kaluluini</option>
        	<option>Gunners</option>
        	<option>Adminstration Police</option> 
        	<p><b>Women</b></p>
        	<option>General Service Unit</option>
        	<option>National Youth Service Women</option>
        	<option>MKU THika Ladies</option>
        	<option>Kenyatta University Ladies</option>
        	<option>Kaluluini Ladies</option>
        	<option>Rising Stars</option>
        	<option>Ulinzi Sharks</option>
        	<option>NCPB Women</option>
        	<option>Nairobi Water</option></select></p>
		<p><b>Favorite International Club</b>
      <select name="interclub" required="true">
		    <option> </option>
        	<option>A:E.K. Athens HC</option>
            <option>A.C. Latsia Nicosia</option>
            <option>A.C. PAOK</option>
            <option>A.C. Veria 2017</option>
            <option>Aalborg Handbold</option>
            <option>Abanca Ademar Leon</option>
            <option>Achilles Bocholt</option>
            <option>ACME-Zalgiris Kaunas</option>
            <option>AHC Potaissa Turda</option>
            <option>Alavarium/ Love Tiles</option>
            <option>Alingsas HK</option>
            <option>Alpla HC Hard</option>
            <option>AM Madeira Andebol SAD</option>
            <option>Ankara Yenimahalle BSK</option>
            <option>Ariosto Pallamano Ferrara</option>
            <option>AS SGS Ramhat Hashron</option>
            <option>Astrakhanochka</option>
            <option>Aula Alimentos de Valladolid</option>
            <option>Azeryol Baku</option>
            <option>BHT Hurricanes</option>
            <option>B.S.B. Batumi</option>
            <option>Balatonf&#252;redi KSE</option>
            <option>Balonmano Playa Ciudad Real</option>
            <option>Bar&#231;a</option>
            <option>Beachqueens</option>
            <option>Beach Unicorns Hannover</option>
            <option>Besiktas Aygaz</option>
            <option>Beykoz BLD SK</option>
            <option>BHC Beach &amp; Da Gang M&#252;nster</option>
            <option>BHC 2areg</option>
            <option>BHT GRU Piotrk&#243;w Trybunalski</option>
            <option>BHV Wasserschloss</option>
            <option>Bidasoa Irun</option>
            <option>Bjerringbro-Silkeborg</option>
            <option>Blue Team</option>
            <option>BM Logro&#241;o La Rioja</option>
            <option>BNTU-BelAZ Minsk Reg</option>
            <option>Bregenz Handball</option>
            <option>Brest Bretagne Handball</option>
            <option>Bryasen Handball Elite</option>
            <option>BSV Bern</option>
            <option>Buducnost</option>
            <option>Buxtehuder SV</option>
            <option>CAIPIranhas</option>
            <option>CBMP Ciudad de Malaga</option>
            <option>C.S. Dinamo Bucuresti</option>
            <option>Cassano Magnano HC ASD</option>
            <option>Chambery Savoie Mont Blanc Handball</option>
            <option>Chekhovskie Medvedi</option>
            <option>Chelsea HC</option>
            <option>CIP Travel Antalyaspor A.S</option>
            <option>Colegio de Gaia/Colgaia-Toyota</option>
            <option>CS Gloria 2018 Bistrita-Nasaud</option>
            <option>CS Madeira</option>
            <option>CSM Bucuresti</option>
            <option>CSM Corona Brasov</option>
            <option>Csurg&#243;i KK</option>
            <option>Detono Zagreb</option>
            <option>DHB Rotweiss Thun SPL1</option>
            <option>DHC Slavia Praha</option>
            <option>DHC Sokol Poruba</option>
            <option>DHK Banik Most</option>
            <option>Dicken</option>
            <option>Donbas</option>
            <option>Dragunas Klaipedos</option>
            <option>Drammen HK</option>
            <option>DVSC Schaeffler</option>
            <option>Ekaterinodar</option>
            <option>Elverum Handball</option>
            <option>ERD</option>
            <option>ESBF Besancon</option>
            <option>Escola de Forma&#231;&#227;o Os Tigres</option>
            <option>FC Porto Sofarma</option>
            <option>FH Hafnarfjordur</option>
            <option>Fredrikstad Ballklubb</option>
            <option>FTC-Rail Cargo Hungaria</option>
            <option>F&#252;chse Berlin</option>
            <option>GOG Handbold</option>
            <option>GRD Le&#231;a</option>
            <option>Granitas-Karys Kaunas</option>
            <option>Grundfos Tatabanya KC</option>
            <option>Gy&#246;ri Audi ETO KC</option>
            <option>H 65 H&#246;&#246;rs HK</option>
            <option>H.V. Quintus</option>
            <option>H71</option>
            <option>Halden Topphandball</option>
            <option>Handball Club Lada</option>
            <option>Handball Esch</option>
            <option>Handball Kaerjeng</option>
            <option>Hapoel Ashdod</option>
            <option>Haukar</option>
            <option>HB Dudelange</option>
            <option>HBC Nantes</option>
            <option>HC Butel Skopje</option>
            <option>HC Dinamo Pancevo</option>
            <option>HC Dobrogea Sud Constanta</option>
            <option>HC Dobrudja</option>
            <option>HC Dukla Praha</option>
            <option>HC Eurofarm Rabotnik</option>
            <option>HC Galychanka Lviv</option>
            <option>HC Gomel</option>
            <option>HC Lokomotiva Zagreb</option>
            <option>HC Lovcen</option>
            <option>HC Masheka</option>
            <option>HC Meshkov Brest</option>
            <option>HC Metalurg</option>
            <option>HC Motor Zaporozhye</option>
            <option>HC Neva SPb</option>
            <option>HC Pelister</option>
            <option>HC Podravka Vegeta</option>
            <option>HC PPD Zagreb</option>
            <option>HC Spartak</option>
            <option>HC Tallinn</option>
            <option>HC Vardar</option>
            <option>HC Victor</option>
            <option>HC Vise BM</option>
            <option>HC Vogosca Poljine Hills</option>
            <option>HC Zvezda</option>
            <option>HCB Karvina</option>
            <option>Herning-Ikast Handbold</option>
            <option>HIB Handball Graz</option>
            <option>Hiekka Hauskaa</option>
            <option>HIFK</option>
            <option>H&#237;r-Sat BHC</option>
            <option>HK Malm&#246;</option>
            <option>Holon Yuvalim HC</option>
            <option>HV Kras/Volendam</option>
            <option>Hypo Nieder&#246;sterreich</option>
            <option>IFK Handball Helsinki</option>
            <option>IFK Kristianstad</option>
            <option>IK S&#228;vehof</option>
            <option>IUVENTA Michalovce</option>
            <option>JD Techniek Hurry-up</option>
            <option>Jomi Salerno</option>
            <option>JuRo Unirek VZV</option>
            <option>Kadetten Schaffhausen</option>
            <option>Kastamonu Belediyesi GSK</option>
            <option>Kauno Azuolas-KTU Kaunas</option>
            <option>KH Besa Famgas</option>
            <option>KH Kastrioti</option>
            <option>KH-7 BM. Granollers</option>
            <option>KHF.Istogu</option>
            <option>Kobenhavn Handball</option>
            <option>KPR Gwardia Opole</option>
            <option>KS Azoty-Pulawy SA</option>
            <option>Kuban</option>
            <option>Ladybugs</option>
            <option>LC Br&#252;hl Handball</option>
            <option>Liberbank Cuenca</option>
            <option>Livingston Handball Club</option>
            <option>LK Zug Handball</option>
            <option>LLOPIS BM Playa Sevilla</option>
            <option>London GD</option>
            <option>London GD HC</option>
            <option>Maccabi Arazim Ramat Gan</option>
            <option>Maccabi Rishon Lezion</option>
            <option>Magura Cisnadie</option>
            <option>Mahsul HC</option>
            <option>Mecalia Atletico Guardes</option>
            <option>Metraco Zaglebie Lubin</option>
            <option>Metz Handball</option>
            <option>MKS Lublin S.A.</option>
            <option>MKS Perla Lublin</option>
            <option>MOL-Pick Szeged</option>
            <option>Montpellier HB</option>
            <option>MSK Povazska Bystrica</option>
            <option>MT Melsungen</option>
            <option>Muratpasa Bellediyesi SK</option>
            <option>Nantes Atlantique Handball</option>
            <option>NMZ G&#243;rnik Zabrze</option>
            <option>Nyk&#248;bing Falster Handbold</option>
            <option>O.F.N. Ionias</option>
            <option>Odder H&#229;ndbold</option>
            <option>Odense Handbold</option>
            <option>Odessa</option>
            <option>OGC Nice Cote d&#39;Azur Handball</option>
            <option>OIF Arendal Elite</option>
            <option>Olympia HC</option>
            <option>ORK Rudar</option>
            <option>Orlen Wisla Plock</option>
            <option>OVB Beach Girls</option>
            <option>Oympiacos SFP</option>
            <option>P.A.S. Aeropos Edessas</option>
            <option>Paris Saint-Germain HB</option>
            <option>PAUC Handball</option>
            <option>Pfadi Winterthur Handball</option>
            <option>PGE VIVE Kielce</option>
            <option>Pinturas Andalucia BM Playa Sevilla</option>
            <option>P&#246;lva Serviti</option>
            <option>Proodeftikos Paphos</option>
            <option>RD Riko Ribnica</option>
            <option>Red Boys DIfferdange</option>
            <option>Rhein-Neckar L&#246;wen</option>
            <option>Riihim&#228;ki Cocks</option>
            <option>RK Borac m:tel Banja Luka</option>
            <option>RK Celje Pivovarna Lasko</option>
            <option>RK Dubrava</option>
            <option>RK Gorene Velenje</option>
            <option>RK Gracanica</option>
            <option>RK Krim Mercator</option>
            <option>RK Maribor Branik</option>
            <option>RK Metaloplastica Sabac</option>
            <option>RK Nexe</option>
            <option>RK Porec</option>
            <option>RK Sloga</option>
            <option>RK Zajecar 1949</option>
            <option>RK Zeleznicar 1949</option>
            <option>Rocasa Gran Canaria</option>
            <option>R&#248;dby HK</option>
            <option>Ros</option>
            <option>Rostov-Don</option>
            <option>SC Magdeburg</option>
            <option>SCM Craiova</option>
            <option>SCM Politehnica Timosoara</option>
            <option>SCM Ramnicu Valcea</option>
            <option>SG BBM Bietigheim</option>
            <option>SG Flensburg-Handewitt</option>
            <option>SG INSIGNIS Handball Westwien</option>
            <option>Si&#243;fok KC Hungary</option>
            <option>SIR 1Maio/ADA CJ Barros</option>
            <option>SKA Minsk</option>
            <option>Skjern Handbold</option>
            <option>Skuru IK</option>
            <option>SL Benfica</option>
            <option>Storhamar Handball Elite</option>
            <option>Spono Eagles</option>
            <option>SPORT CLUB Senec - Cannabis Energy Drink</option>
            <option>Sporting CP</option>
            <option>SSSCJRO-1 Tiraspol</option>
            <option>SSV Bozen Loacker Volksbank</option>
            <option>SSV Brixen S&#252;dtirol</option>
            <option>Strandgefl&#252;ster Minden</option>
            <option>Super Amara Bera Bera</option>
            <option>Swieqi YOBETIT Phoenix</option>
            <option>Szentendrei NKE</option>
            <option>Taberna El Panduro A M Team Almeria</option>
            <option>Talent M.A.T. Plzen</option>
            <option>TATRAN Presov</option>
            <option>Team Esbjerg</option>
            <option>Team Tchatcheur by PAUC</option>
            <option>Telekom Veszpr&#233;m HC</option>
            <option>Tertnes Bergen</option>
            <option>Th&#252;ringer HC</option>
            <option>THW Kiel</option>
            <option>TJ Sokol Nove Veseli</option>
            <option>Toyota MHC Dubrava</option>
            <option>TSHV Camelot</option>
            <option>TSV Bayer 04-Werkselfen</option>
            <option>TTH Holstebro</option>
            <option>TUSSIES Metzingen</option>
            <option>UMF Selfoss</option>
            <option>USAM Nimes Gard</option>
            <option>Vaci NKSE</option>
            <option>JuRo Unirek VZV</option>
            <option>Valur</option>
            <option>VHC Sviesa Vilnius</option>
            <option>Vipers Kristiansand</option>
            <option>Vojvodina</option>
            <option>Wacker Thun</option>
            <option>WAT Atzgersdorf</option>
            <option>Westsite Amsterdam</option>
            <option>WHC Hadzici DG</option>
            <option>WHC Metalurg</option>
            <option>ZORK Jagodina</option>
            <option>ZRHK TENAX Dobele</option>
            <option>ZRK Bjelovar</option>
            <option>ZRK Krivaja</option>
            <option>ZRK Kumanovo</option>
            <option>ZRK Naisa Nis</option>
            <option>ZRK Pelister 2012</option>
            <option>ZTR Zaporhozhye</option>
            <option>12 Monkeys K&#246;ln BHC</option>
		</select></p>
		<p><b>Favorite National Team </b></td>
    <select name="national" required="true">
		<option> </option> 	
	   <option >Afghanistan</option>
	   <option >Albania</option>
	   <option >Algeria</option>
	   <option >American Samoa</option>
	   <option >Andorra</option>
	   <option >Angola</option>
	   <option >Anguilla</option>
	   <option >Antigua & Barbuda</option>
	   <option >Argentina</option>
	   <option >Armenia</option>
	   <option >Aruba</option>
	   <option >Australia</option>
	   <option >Austria</option>
	   <option >Azerbaijan</option>
	   <option >Bahamas</option>
	   <option >Bahrain</option>
	   <option >Bangladesh</option>
	   <option >Barbados</option>
	   <option >Belarus</option>
	   <option >Belgium</option>
	   <option >Belize</option>
	   <option >Benin</option>
	   <option >Bermuda</option>
	   <option >Bhutan</option>
	   <option >Bolivia</option>
	   <option >Bonaire</option>
	   <option >Bosnia & Herzegovina</option>
	   <option >Botswana</option>
	   <option >Brazil</option>
	   <option >British Indian Ocean Ter</option>
	   <option >Brunei</option>
	   <option >Bulgaria</option>
	   <option >Burkina Faso</option>
	   <option >Burundi</option>
	   <option >Cambodia</option>
	   <option >Cameroon</option>
	   <option >Canada</option>
	   <option >Canary Islands</option>
	   <option >Cape Verde</option>
	   <option >Cayman Islands</option>
	   <option >Central African Republic</option>
	   <option >Chad</option>
	   <option >Channel Islands</option>
	   <option >Chile</option>
	   <option >China</option>
	   <option >Christmas Island</option>
	   <option >Cocos Island</option>
	   <option >Colombia</option>
	   <option >Comoros</option>
	   <option >Congo</option>
	   <option >Cook Islands</option>
	   <option >Costa Rica</option>
	   <option >Cote 'D'Ivoire</option>
	   <option >Croatia</option>
	   <option >Cuba</option>
	   <option >Curacao</option>
	   <option >Cyprus</option>
	   <option >Czech Republic</option>
	   <option >Denmark</option>
	   <option >Djibouti</option>
	   <option >Dominica</option>
	   <option >Dominican Republic</option>
	   <option >East Timor</option>
	   <option >Ecuador</option>
	   <option >Egypt</option>
	   <option >El Salvador</option>
	   <option >Equatorial Guinea</option>
	   <option >Eritrea</option>
	   <option >Estonia</option>
	   <option >Ethiopia</option>
	   <option >Falkland Islands</option>
	   <option >Faroe Islands</option>
	   <option >Fiji</option>
	   <option >Finland</option>
	   <option >France</option>
	   <option >French Guiana</option>
	   <option >French Polynesia</option>
	   <option >French Southern Ter</option>
	   <option >Gabon</option>
	   <option >Gambia</option>
	   <option >Georgia</option>
	   <option >Germany</option>
	   <option >Ghana</option>
	   <option >Gibraltar</option>
	   <option >Great Britain</option>
	   <option >Greece</option>
	   <option >Greenland</option>
	   <option >Grenada</option>
	   <option >Guadeloupe</option>
	   <option >Guam</option>
	   <option >Guatemala</option>
	   <option >Guinea</option>
	   <option >Guyana</option>
	   <option >Haiti</option>
	   <option >Hawaii</option>
	   <option >Honduras</option>
	   <option >Hong Kong</option>
	   <option >Hungary</option>
	   <option >Iceland</option>
	   <option >Indonesia</option>
	   <option >India</option>
	   <option >Iran</option>
	   <option >Iraq</option>
	   <option >Ireland</option>
	   <option >Isle of Man</option>
	   <option >Israel</option>
	   <option >Italy</option>
	   <option >Jamaica</option>
	   <option >Japan</option>
	   <option >Jordan</option>
	   <option >Kazakhstan</option>
	   <option >Kenya</option>
	   <option >Kiribati</option>
	   <option >North Korea</option>
	   <option >South Korea</option>
	   <option >Kuwait</option>
	   <option >Kyrgyzstan</option>
	   <option >Laos</option>
	   <option >Latvia</option>
	   <option >Lebanon</option>
	   <option >Lesotho</option>
	   <option >Liberia</option>
	   <option >Libya</option>
	   <option >Liechtenstein</option>
	   <option >Lithuania</option>
	   <option >Luxembourg</option>
	   <option >Macau</option>
	   <option >Macedonia</option>
	   <option >Madagascar</option>
	   <option >Malaysia</option>
	   <option >Malawi</option>
	   <option >Maldives</option>
	   <option >Mali</option>
	   <option >Malta</option>
	   <option >Marshall Islands</option>
	   <option >Martinique</option>
	   <option >Mauritania</option>
	   <option >Mauritius</option>
	   <option >Mayotte</option>
	   <option >Mexico</option>
	   <option >Midway Islands</option>
	   <option >Moldova</option>
	   <option >Monaco</option>
	   <option >Mongolia</option>
	   <option >Montserrat</option>
	   <option >Morocco</option>
	   <option >Mozambique</option>
	   <option >Myanmar</option>
	   <option >Nambia</option>
	   <option >Nauru</option>
	   <option >Nepal</option>
	   <option >Netherland Antilles</option>
	   <option >Netherlands (Holland, Europe)</option>
	   <option >Nevis</option>
	   <option >New Caledonia</option>
	   <option >New Zealand</option>
	   <option >Nicaragua</option>
	   <option >Niger</option>
	   <option >Nigeria</option>
	   <option >Niue</option>
	   <option >Norfolk Island</option>
	   <option >Norway</option>
	   <option >Oman</option>
	   <option >Pakistan</option>
	   <option >Palau Island</option>
	   <option >Palestine</option>
	   <option >Panama</option>
	   <option >Papua New Guinea</option>
	   <option >Paraguay</option>
	   <option >Peru</option>
	   <option >Philippines</option>
	   <option >Pitcairn Island</option>
	   <option >Poland</option>
	   <option >Portugal</option>
	   <option >Puerto Rico</option>
	   <option >Qatar</option>
	   <option >Republic of Montenegro</option>
	   <option >Republic of Serbia</option>
	   <option >Reunion</option>
	   <option >Romania</option>
	   <option >Russia</option>
	   <option >Rwanda</option>
	   <option >St Barthelemy</option>
	   <option >St Eustatius</option>
	   <option >St Helena</option>
	   <option >St Kitts-Nevis</option>
	   <option >St Lucia</option>
	   <option >St Maarten</option>
	   <option >St Pierre & Miquelon</option>
	   <option >St Vincent & Grenadines</option>
	   <option >Saipan</option>
	   <option >Samoa</option>
	   <option >Samoa American</option>
	   <option >San Marino</option>
	   <option >Sao Tome & Principe</option>
	   <option >Saudi Arabia</option>
	   <option >Senegal</option>
	   <option >Seychelles</option>
	   <option >Sierra Leone</option>
	   <option >Singapore</option>
	   <option >Slovakia</option>
	   <option >Slovenia</option>
	   <option >Solomon Islands</option>
	   <option >Somalia</option>
	   <option >South Africa</option>
	   <option >Spain</option>
	   <option >Sri Lanka</option>
	   <option >Sudan</option>
	   <option >Suriname</option>
	   <option >Swaziland</option>
	   <option >Sweden</option>
	   <option >Switzerland</option>
	   <option >Syria</option>
	   <option >Tahiti</option>
	   <option >Taiwan</option>
	   <option >Tajikistan</option>
	   <option >Tanzania</option>
	   <option >Thailand</option>
	   <option >Togo</option>
	   <option >Tokelau</option>
	   <option >Tonga</option>
	   <option >Trinidad & Tobago</option>
	   <option >Tunisia</option>
	   <option >Turkey</option>
	   <option >Turkmenistan</option>
	   <option >Turks & Caicos Is</option>
	   <option >Tuvalu</option>
	   <option >Uganda</option>
	   <option >United Kingdom</option>
	   <option >Ukraine</option>
	   <option >United Arab Emirates</option>
	   <option >United States of America</option>
	   <option >Uruguay</option>
	   <option >Uzbekistan</option>
	   <option >Vanuatu</option>
	   <option >Vatican City State</option>
	   <option >Venezuela</option>
	   <option >Vietnam</option>
	   <option >Virgin Islands (Brit)</option>
	   <option >Virgin Islands (USA)</option>
	   <option >Wake Island</option>
	   <option >Wallis & Futana Is</option>
	   <option >Yemen</option>
	   <option >Zaire</option>
	   <option >Zambia</option>
	   <option >Zimbabwe</option>
	</select></p>
	    <label><b>Email</b></label>
	    <input type="text"  name="email" placeholder="example@gmail.com" required= "true"></p>
	    <label><b>Username</b></label>
	    <input type="text"  name="username" placeholder="jdoe" required= "true"></p>
	    <p><label><b>Password</b></label>
	    <input type="password"  name="password" placeholder="**" required= "true"></p>
	  	<button type="submit" name="submit"  class="btn btn-primary btn-lg " >Submit</button><br><br><br>
	  	<a href='login.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true"  type="submit" name="submit">Login</a>

   </form>

	<a href="https://web.facebook.com/kenyahandballfederation" target="_blank"><img src="images/facebook.jpg" alt="facebook logo" target="_blank"></a> <a href="https://twitter.com/handball_kenya" target="_blank"><img src="images/twitter.jpg" alt="twitter logo" ></a><a href="https://api.whatsapp.com/send?phone=254701694441" target="_blank"><img src="images/wapp.jpg" alt="whatsapp"></a></a> <a href="https://www.instagram.com/kenyahandball/" target="_blank"><img src="images/insta.jpg" alt="instagram logo"></a><a href="mailto: khfkenya1@gmail.com" target="_blank"><img src="images/gmail.jpg" alt="gmail logo"></a>

</body>	
</html>