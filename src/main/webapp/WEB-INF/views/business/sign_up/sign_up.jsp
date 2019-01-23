<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spanpal</title>
<%@include file="/resources/css/common.css"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="/resources/js/jquery-3.3.1.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/header/header.jsp"%>
	<div class="bdy-cont">
		<form action="/signUpSubmit.do" method="post" id="signup">
		<table class="mg-25" style="display:inline;">
			<tr>
				<td><label for="user_name">Name</label><input id="user_name"
					name="user_name" class="form-control" value="${vo.user_name }"></td>
			</tr>
			<tr>
				<td><label for="user_email">Email</label><input id="user_email"
					name="user_email" class="form-control" value="${vo.user_email }"></td>
			</tr>
			<tr>
				<td><label for="user_pw">Password</label><input id="user_pw"
					name="user_pw" class="form-control" value=""></td>
			</tr>
			<tr>
				<td><label for="user_age">Age</label><input id="user_age"
					name="user_age" class="form-control" value="${vo.user_age }"></td>
			</tr>
			<tr>
				<td><label for="user_country">Nationality</label> <select
					id="user_country" name="user_country" class="form-control">
						<option value="AF">Afghanistan</option>
						<option value="AX">Åland Islands</option>
						<option value="AL">Albania</option>
						<option value="DZ">Algeria</option>
						<option value="AS">American Samoa</option>
						<option value="AD">Andorra</option>
						<option value="AO">Angola</option>
						<option value="AI">Anguilla</option>
						<option value="AQ">Antarctica</option>
						<option value="AG">Antigua and Barbuda</option>
						<option value="AR">Argentina</option>
						<option value="AM">Armenia</option>
						<option value="AW">Aruba</option>
						<option value="AU">Australia</option>
						<option value="AT">Austria</option>
						<option value="AZ">Azerbaijan</option>
						<option value="BS">Bahamas</option>
						<option value="BH">Bahrain</option>
						<option value="BD">Bangladesh</option>
						<option value="BB">Barbados</option>
						<option value="BY">Belarus</option>
						<option value="BE">Belgium</option>
						<option value="BZ">Belize</option>
						<option value="BJ">Benin</option>
						<option value="BM">Bermuda</option>
						<option value="BT">Bhutan</option>
						<option value="BO">Bolivia</option>
						<option value="BA">Bosnia and Herzegovina</option>
						<option value="BW">Botswana</option>
						<option value="BV">Bouvet Island</option>
						<option value="BR">Brazil</option>
						<option value="IO">British Indian Ocean Territory</option>
						<option value="BN">Brunei Darussalam</option>
						<option value="BG">Bulgaria</option>
						<option value="BF">Burkina Faso</option>
						<option value="BI">Burundi</option>
						<option value="KH">Cambodia</option>
						<option value="CM">Cameroon</option>
						<option value="CA">Canada</option>
						<option value="CV">Cape Verde</option>
						<option value="KY">Cayman Islands</option>
						<option value="CF">Central African Republic</option>
						<option value="TD">Chad</option>
						<option value="CL">Chile</option>
						<option value="CN">China</option>
						<option value="CX">Christmas Island</option>
						<option value="CC">Cocos (Keeling) Islands</option>
						<option value="CO">Colombia</option>
						<option value="KM">Comoros</option>
						<option value="CG">Congo</option>
						<option value="CD">Congo, The Democratic Republic of The</option>
						<option value="CK">Cook Islands</option>
						<option value="CR">Costa Rica</option>
						<option value="CI">Cote D'ivoire</option>
						<option value="HR">Croatia</option>
						<option value="CU">Cuba</option>
						<option value="CY">Cyprus</option>
						<option value="CZ">Czechia</option>
						<option value="DK">Denmark</option>
						<option value="DJ">Djibouti</option>
						<option value="DM">Dominica</option>
						<option value="DO">Dominican Republic</option>
						<option value="EC">Ecuador</option>
						<option value="EG">Egypt</option>
						<option value="SV">El Salvador</option>
						<option value="GQ">Equatorial Guinea</option>
						<option value="ER">Eritrea</option>
						<option value="EE">Estonia</option>
						<option value="ET">Ethiopia</option>
						<option value="FK">Falkland Islands (Malvinas)</option>
						<option value="FO">Faroe Islands</option>
						<option value="FJ">Fiji</option>
						<option value="FI">Finland</option>
						<option value="FR">France</option>
						<option value="GF">French Guiana</option>
						<option value="PF">French Polynesia</option>
						<option value="TF">French Southern Territories</option>
						<option value="GA">Gabon</option>
						<option value="GM">Gambia</option>
						<option value="GE">Georgia</option>
						<option value="DE">Germany</option>
						<option value="GH">Ghana</option>
						<option value="GI">Gibraltar</option>
						<option value="GR">Greece</option>
						<option value="GL">Greenland</option>
						<option value="GD">Grenada</option>
						<option value="GP">Guadeloupe</option>
						<option value="GU">Guam</option>
						<option value="GT">Guatemala</option>
						<option value="GG">Guernsey</option>
						<option value="GN">Guinea</option>
						<option value="GW">Guinea-bissau</option>
						<option value="GY">Guyana</option>
						<option value="HT">Haiti</option>
						<option value="HM">Heard Island and Mcdonald Islands</option>
						<option value="VA">Holy See (Vatican City State)</option>
						<option value="HN">Honduras</option>
						<option value="HK">Hong Kong</option>
						<option value="HU">Hungary</option>
						<option value="IS">Iceland</option>
						<option value="IN">India</option>
						<option value="ID">Indonesia</option>
						<option value="IR">Iran, Islamic Republic of</option>
						<option value="IQ">Iraq</option>
						<option value="IE">Ireland</option>
						<option value="IM">Isle of Man</option>
						<option value="IL">Israel</option>
						<option value="IT">Italy</option>
						<option value="JM">Jamaica</option>
						<option value="JP">Japan</option>
						<option value="JE">Jersey</option>
						<option value="JO">Jordan</option>
						<option value="KZ">Kazakhstan</option>
						<option value="KE">Kenya</option>
						<option value="KI">Kiribati</option>
						<option value="KP">Korea, Democratic People's Republic of</option>
						<option value="KR">Korea, Republic of</option>
						<option value="KW">Kuwait</option>
						<option value="KG">Kyrgyzstan</option>
						<option value="LA">Lao People's Democratic Republic</option>
						<option value="LV">Latvia</option>
						<option value="LB">Lebanon</option>
						<option value="LS">Lesotho</option>
						<option value="LR">Liberia</option>
						<option value="LY">Libyan Arab Jamahiriya</option>
						<option value="LI">Liechtenstein</option>
						<option value="LT">Lithuania</option>
						<option value="LU">Luxembourg</option>
						<option value="MO">Macao</option>
						<option value="MK">Macedonia, The Former Yugoslav
							Republic of</option>
						<option value="MG">Madagascar</option>
						<option value="MW">Malawi</option>
						<option value="MY">Malaysia</option>
						<option value="MV">Maldives</option>
						<option value="ML">Mali</option>
						<option value="MT">Malta</option>
						<option value="MH">Marshall Islands</option>
						<option value="MQ">Martinique</option>
						<option value="MR">Mauritania</option>
						<option value="MU">Mauritius</option>
						<option value="YT">Mayotte</option>
						<option value="MX">Mexico</option>
						<option value="FM">Micronesia, Federated States of</option>
						<option value="MD">Moldova, Republic of</option>
						<option value="MC">Monaco</option>
						<option value="MN">Mongolia</option>
						<option value="ME">Montenegro</option>
						<option value="MS">Montserrat</option>
						<option value="MA">Morocco</option>
						<option value="MZ">Mozambique</option>
						<option value="MM">Myanmar</option>
						<option value="NA">Namibia</option>
						<option value="NR">Nauru</option>
						<option value="NP">Nepal</option>
						<option value="NL">Netherlands</option>
						<option value="AN">Netherlands Antilles</option>
						<option value="NC">New Caledonia</option>
						<option value="NZ">New Zealand</option>
						<option value="NI">Nicaragua</option>
						<option value="NE">Niger</option>
						<option value="NG">Nigeria</option>
						<option value="NU">Niue</option>
						<option value="NF">Norfolk Island</option>
						<option value="MP">Northern Mariana Islands</option>
						<option value="NO">Norway</option>
						<option value="OM">Oman</option>
						<option value="PK">Pakistan</option>
						<option value="PW">Palau</option>
						<option value="PS">Palestinian Territory, Occupied</option>
						<option value="PA">Panama</option>
						<option value="PG">Papua New Guinea</option>
						<option value="PY">Paraguay</option>
						<option value="PE">Peru</option>
						<option value="PH">Philippines</option>
						<option value="PN">Pitcairn</option>
						<option value="PL">Poland</option>
						<option value="PT">Portugal</option>
						<option value="PR">Puerto Rico</option>
						<option value="QA">Qatar</option>
						<option value="RE">Reunion</option>
						<option value="RO">Romania</option>
						<option value="RU">Russian Federation</option>
						<option value="RW">Rwanda</option>
						<option value="SH">Saint Helena</option>
						<option value="KN">Saint Kitts and Nevis</option>
						<option value="LC">Saint Lucia</option>
						<option value="PM">Saint Pierre and Miquelon</option>
						<option value="VC">Saint Vincent and The Grenadines</option>
						<option value="WS">Samoa</option>
						<option value="SM">San Marino</option>
						<option value="ST">Sao Tome and Principe</option>
						<option value="SA">Saudi Arabia</option>
						<option value="SN">Senegal</option>
						<option value="RS">Serbia</option>
						<option value="SC">Seychelles</option>
						<option value="SL">Sierra Leone</option>
						<option value="SG">Singapore</option>
						<option value="SK">Slovakia</option>
						<option value="SI">Slovenia</option>
						<option value="SB">Solomon Islands</option>
						<option value="SO">Somalia</option>
						<option value="ZA">South Africa</option>
						<option value="GS">South Georgia and The South Sandwich
							Islands</option>
						<option value="ES">Spain</option>
						<option value="LK">Sri Lanka</option>
						<option value="SD">Sudan</option>
						<option value="SR">Suriname</option>
						<option value="SJ">Svalbard and Jan Mayen</option>
						<option value="SZ">Swaziland</option>
						<option value="SE">Sweden</option>
						<option value="CH">Switzerland</option>
						<option value="SY">Syrian Arab Republic</option>
						<option value="TW">Taiwan, Province of China</option>
						<option value="TJ">Tajikistan</option>
						<option value="TZ">Tanzania, United Republic of</option>
						<option value="TH">Thailand</option>
						<option value="TL">Timor-leste</option>
						<option value="TG">Togo</option>
						<option value="TK">Tokelau</option>
						<option value="TO">Tonga</option>
						<option value="TT">Trinidad and Tobago</option>
						<option value="TN">Tunisia</option>
						<option value="TR">Turkey</option>
						<option value="TM">Turkmenistan</option>
						<option value="TC">Turks and Caicos Islands</option>
						<option value="TV">Tuvalu</option>
						<option value="UG">Uganda</option>
						<option value="UA">Ukraine</option>
						<option value="AE">United Arab Emirates</option>
						<option value="GB">United Kingdom</option>
						<option value="US">United States</option>
						<option value="UM">United States Minor Outlying Islands</option>
						<option value="UY">Uruguay</option>
						<option value="UZ">Uzbekistan</option>
						<option value="VU">Vanuatu</option>
						<option value="VE">Venezuela</option>
						<option value="VN">VietNam</option>
						<option value="VG">Virgin Islands, British</option>
						<option value="VI">Virgin Islands, U.S.</option>
						<option value="WF">Wallis and Futuna</option>
						<option value="EH">Western Sahara</option>
						<option value="YE">Yemen</option>
						<option value="ZM">Zambia</option>
						<option value="ZW">Zimbabwe</option>
				</select></td>
			</tr>
			<tr>
				<td>I am <input type="radio" id="female" name="user_gender"
					class="" value=""> Female <input type="radio" id="male"
					name="user_gender" class="" value=""> Male
				</td>
			</tr>
			<tr>
				<td>My mother tongue is <input type="radio" id="female"
					name="user_lang" class="" value="SP"> Spanish <input
					type="radio" id="male" name="user_lang" class="" value="KR">
					Korean
				</td>
			</tr>
			<tr>
				<td><label for="user_desc">Description</label> <textarea maxlength="255"
						id="user_desc" name="user_desc" class="form-control ht-600"
						draggable="false"></textarea></td>
			</tr>
		</table>
		<div class="ovr-y">
			<h1>Política de privacidad</h1>


			<p>Fecha efectiva: January 22, 2019</p>


			<p>Spanpal ("nosotros", "a nosotros", "nuestro") opera el sitio
				web http://www.spanpal.com (en adelante, el "Servicio").</p>

			<p>Esta página le informa de nuestras políticas en materia de
				recopilación, uso y divulgación de datos personales cuando utiliza
				nuestro Servicio y de las opciones de las que dispone en relación
				con esos datos.</p>

			<p>Utilizamos sus datos para prestarle el Servicio y mejorarlo.
				Al utilizar el Servicio, usted acepta la recopilación y el uso de
				información de conformidad con esta política. A menos que esta
				Política de privacidad defina lo contrario, los términos utilizados
				en ella tienen los mismos significados que nuestros Términos y
				Condiciones, disponibles en el http://www.spanpal.com</p>

			<h2>Definiciones</h2>
			<ul>
				<li>
					<p>
						<strong>Servicio</strong>
					</p>
					<p>Servicio es el sitio web http://www.spanpal.com operado por
						Spanpal</p>
				</li>
				<li>
					<p>
						<strong>Datos personales</strong>
					</p>
					<p>Datos personales significa los datos sobre una persona
						física viva que puede ser identificada a partir de esos datos (o
						con esos datos y otra información de la que dispongamos o
						probablemente podamos disponer).</p>
				</li>
				<li>
					<p>
						<strong>Datos de uso</strong>
					</p>
					<p>Datos de uso son los datos recopilados automáticamente,
						generados por el uso del Servicio o por la propia infraestructura
						del Servicio (por ejemplo, la duración de la visita a una página).</p>
				</li>
				<li>
					<p>
						<strong>Cookies</strong>
					</p>
					<p>Las cookies son pequeños archivos ialmacenados en su
						dispositivo (ordenador o dispositivo móvil).</p>
				</li>
			</ul>

			<h2>Recopilación y uso de la información</h2>
			<p>Recopilamos diferentes tipos de información con diversas
				finalidades para prestarle el Servicio y mejorarlo.</p>

			<h3>Tipos de datos recopilados</h3>

			<h4>Datos personales</h4>
			<p>Cuando utilice nuestro Servicio, es posible que le pidamos que
				nos proporcione determinada información personalmente identificable
				que podrá ser utilizada para contactar con usted o para
				identificarle ("Datos personales"). La información personalmente
				identificable puede incluir, entre otras, la siguiente:</p>

			<ul>
				<li>Dirección de e-mail</li>
				<li>Nombre y apellidos</li>
				<li>Cookies y datos de uso</li>
			</ul>

			<h4>Datos de uso</h4>

			<p>También recopilamos información sobre la forma en la que se
				accede y utiliza el Servicio («Datos de uso»). Estos Datos de uso
				pueden incluir información como la dirección del protocolo de
				Internet de su ordenador (por ejemplo, dirección IP), tipo de
				navegador, versión del navegador, las páginas que visita de nuestro
				Servicio, la hora y la fecha de su visita, el tiempo que pasa en
				esas páginas, identificadores exclusivos de dispositivos y otros
				datos de diagnóstico.</p>

			<h4>Datos de cookies y seguimiento</h4>
			<p>Utilizamos cookies y tecnologías de seguimiento similares para
				rastrear la actividad de nuestro Servicio y mantener determinada
				información.</p>
			<p>Las cookies son archivos con una pequeña cantidad de datos que
				pueden incluir un identificador exclusivo anónimo. Las cookies son
				enviadas a su navegador desde un sitio web y se almacenan en su
				dispositivo. Otras tecnologías de seguimiento también utilizadas son
				balizas, etiquetas y scripts para recopilar y rastrear la
				información, así como para mejorar y analizar nuestro Servicio.</p>
			<p>
				Usted puede ordenar a su navegador que rechace todas las cookies o
				que le avise cuando se envía una cookie. Sin embargo, si no acepta
				cookies, es posible que no pueda utilizar algunas partes de nuestro
				Servicio. Puede obtener más información sobre cómo administrar las
				cookies en la <a
					href="https://privacypolicies.com/blog/how-to-delete-cookies/">Guía
					de cookies del navegador</a>.
			</p>
			<p>Ejemplos de Cookies que utilizamos:</p>
			<ul>
				<li><strong>Cookies de sesión.</strong> Utilizamos Cookies de
					sesión para operar nuestro Servicio.</li>
				<li><strong>Cookies de preferencia.</strong> Utilizamos Cookies
					de preferencia para recordar sus preferencias y diversos ajustes.</li>
				<li><strong>Cookies de seguridad.</strong> Utilizamos Cookies
					de seguridad para fines de seguridad.</li>
			</ul>

			<h2>Uso de datos</h2>
			<p>Spanpal utiliza los datos recopilados con diversas
				finalidades:</p>
			<ul>
				<li>Suministrar y mantener nuestro Servicio</li>
				<li>Notificarle cambios en nuestro Servicio</li>
				<li>Permitirle participar en funciones interactivas de nuestro
					Servicio cuando decida hacerlo</li>
				<li>Prestar asistencia al cliente</li>
				<li>Recopilar análisis o información valiosa que nos permitan
					mejorar nuestro Servicio</li>
				<li>Controlar el uso de nuestro Servicio</li>
				<li>Detectar, evitar y abordar problemas técnicos</li>
			</ul>

			<h2>Transferencia de datos</h2>
			<p>Su información, incluyendo Datos personales, puede ser
				transferida a —y mantenida en— ordenadores localizados fuera de su
				estado, provincia, país u otra jurisdicción gubernamental donde las
				leyes de protección de datos pueden diferir de las de su
				jurisdicción.</p>
			<p>Si usted se encuentra fuera de Korea, Republic of y decide
				facilitarnos información, tenga en cuenta que nosotros transferimos
				los datos, incluyendo Datos personales, a Korea, Republic of y que
				los tratamos allí.</p>
			<p>Su aceptación de esta Política de privacidad seguida de su
				envío de esta información representa que está de acuerdo con dicha
				transferencia.</p>
			<p>Spanpal emprenderá todas las medidas razonables necesarias
				para garantizar que sus datos sean tratados de forma segura y de
				conformidad con esta Política de privacidad y no se realizará
				ninguna transferencia de sus Datos personales a una organización o
				país, salvo que existan unos controles adecuados establecidos
				incluyendo la seguridad de sus datos y otra información personal.</p>

			<h2>Divulgación de datos</h2>

			<h3>Requisitos legales</h3>
			<p>Spanpal puede divulgar sus Datos personales de buena fe cuando
				considere que esta acción es necesaria para lo siguiente:</p>
			<ul>
				<li>Cumplir una obligación legal</li>
				<li>Proteger y defender los derechos o bienes de Spanpal</li>
				<li>Prevenir o investigar posibles infracciones en relación con
					el Servicio</li>
				<li>Proteger la seguridad personal de usuarios del Servicio o
					del público</li>
				<li>Protegerse frente a consecuencias legales</li>
			</ul>

			<h2>Seguridad de los datos</h2>
			<p>La seguridad de sus datos es importante para nosotros, pero
				recuerde que ningún método de transmisión por Internet o método de
				almacenamiento electrónico resulta 100% seguro. A pesar de que nos
				esforzamos por utilizar medios comercialmente aceptables para
				proteger sus Datos personales, no podemos garantizar su seguridad
				absoluta.</p>

			<h2>Proveedores de servicios</h2>
			<p>Podemos contratar a personas físicas y jurídicas terceras para
				facilitar nuestro Servicio ("Proveedores de servicios"), para que
				presten el Servicio en nuestro nombre, para que suministren
				servicios relacionados con el Servicio o para que nos ayuden a
				analizar cómo se utiliza nuestro Servicio.</p>
			<p>Estos terceros tienen acceso a sus Datos personales únicamente
				para realizar estas tareas en nuestro nombre y están obligados a no
				divulgarlos ni utilizarlos con ningún otro fin.</p>



			<h2>Enlaces a otros sitios</h2>
			<p>Nuestro Servicio puede contener enlaces a otros sitios no
				operados por nosotros. Si hace clic en el enlace de un tercero, será
				dirigido al sitio de ese tercero. Le recomendamos encarecidamente
				que revise la Política de privacidad de todos los sitios que visite.</p>
			<p>No tenemos ningún control ni asumimos responsabilidad alguna
				con respecto al contenido, las políticas o prácticas de privacidad
				de sitios o servicios de terceros.</p>


			<h2>Privacidad del menor</h2>
			<p>Nuestro servicio no está dirigido a ningún menor de 18 años
				(en adelante, "Menor").</p>
			<p>No recopilamos de forma consciente información personalmente
				identificable de menores de 18 años. Si es usted un padre/madre o
				tutor y tiene conocimiento de que su hijo nos ha facilitado Datos
				personales, contacte con nosotros. Si tenemos conocimiento de que
				hemos recopilado Datos personales de menores sin verificación del
				consentimiento parental, tomamos medidas para eliminar esa
				información de nuestros servidores.</p>


			<h2>Cambios en esta Política de privacidad</h2>
			<p>Podemos actualizar nuestra Política de privacidad
				periódicamente. Le notificaremos cualquier cambio publicando la
				nueva Política de privacidad en esta página.</p>
			<p>Le informaremos a través del e-mail y/o de un aviso destacado
				sobre nuestro Servicio antes de que el cambio entre en vigor y
				actualizaremos la «fecha efectiva» en la parte superior de esta
				Política de privacidad.</p>
			<p>Le recomendamos que revise esta Política de privacidad
				periódicamente para comprobar si se ha introducido algún cambio. Los
				cambios en esta Política de privacidad entran en vigor cuando se
				publican en esta página.</p>


			<h2>Contacte con nosotros</h2>
			<p>Si tiene alguna pregunta sobre esta Política de privacidad,
				contacte con nosotros:</p>
			<ul>
				<li>Por e-mail: gkseorjs123@naver.com</li>

			</ul>
		</div>
		<div class="text-center clear">
			<input id="term_act" name="" type="checkbox"> I accept this term and policy.
		</div>
		<div class="text-center clear">
			<button class="btn btn-info sign-in" form="signup">Sign Up</button>
		</div>
		</form>
	</div>
	<%@include file="/WEB-INF/views/footer/footer.jsp"%>
</body>
<script>
	if ("${vo.user_gender }" == "F") {
		$("#female").prop("checked", true);
	} else {
		$("#male").prop("checked", true);
	}
</script>
</html>