<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
    <head>
        <title>ONPE - Oficina Nacional de Procesos Electorales</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  /> 
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
		 
        <link href="css/bootstrap.css"       rel="stylesheet" type="text/css" media="screen"/>
        <link href="css/style.css"       rel="stylesheet" type="text/css" media="screen"/>
    </head>
<body>
  <%@include file="WEB-INF/header.jsp" %>
  
<div class="container">

	<img src="images/f-presidencial.jpg" width="1170" height="248" class="img-responsive mg30top">
	<section class="menu navbar-default menu05">
		<a name="posicion"></a>
		<nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
			<ul class="nav navbar-nav">
				<li class="bt-azul act-azul">
					<a href="svlPresidencial">PRESIDENCIAL</a>
				</li>
				<li class="bt-amarillo oculto1">
					<a href="svlActas">ACTAS</a>
				</li>
				<li class="bt-rojo">
					<a href="svlParticipacion">PARTICIPACIÓN CIUDADANA</a>
				</li>
			</ul>
		</nav>
	</section>

		<section class="contenedor">
			<div class="row">
				<div class="col-xs-12 col-md-3">
					<div class="menu-interna">
						<ul>
							<li><a href="svlPresidencial">RESUMEN GENERAL</a></li>
							<li><a href="Resultado.jsp" class="act-izq">RESULTADOS PRESIDENCIALES</a></li>
							<li><a href="Resultado2.jsp" >RESULTADOS POR TIPO DE VOTOS</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-md-9" id="impreso">
					<div class="contenido-interna">
						<div class="titulos col-xs-12">
							<div class="col-xs-11">
								<h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: RESULTADOS PRESIDENCIALES</h3>
							</div>

							<div class="col-xs-1 oculto-boton-print">
								<button><i class="fa fa-print ico-print"></i></button>
							</div>
						</div>

						<div class="col-xs-12">
							<p class="subtitle">RESULTADOS DE ELECCIONES PRESIDENCIALES</p>
							<form id="frmBuscar" name="frmBuscar" action="" method="post" class="horizontal-form">
							<div id="divUbicombo" class="row">
								<div class="col-md-3" style="display:block">
									<label class="control-label">Ámbito:</label>
									<div id="ambito" class="form-group">
										<select name="cdgoAmbito" id="cdgoAmbito" class="form-control">
										  <option value="">TODOS</option>
										  <option value="P">PERÚ</option>
										  <option value="E">EXTRANJERO</option>
										</select>
									</div>
								</div>
								<div id="dvNombreDepartamento" class="col-md-3" style="">
									<div class="form-group">
										<label id="lblDepartamento" class="control-label">Departamento:</label>
										<div id="departamentos"><select name="cdgoDep" id="cdgoDep" class="form-control">
                                            <option selected="selected" value="">TODOS</option>
                                                    <option value="010000">AMAZONAS</option>
                                                    <option value="020000">ANCASH</option>
                                                    <option value="030000">APURIMAC</option>
                                                    <option value="040000">AREQUIPA</option>
                                                    <option value="050000">AYACUCHO</option>
                                                    <option value="060000">CAJAMARCA</option>
                                                    <option value="240000">CALLAO</option>
                                                    <option value="070000">CUSCO</option>
                                                    <option value="080000">HUANCAVELICA</option>
                                                    <option value="090000">HUANUCO</option>
                                                    <option value="100000">ICA</option>
                                                    <option value="110000">JUNIN</option>
                                                    <option value="120000">LA LIBERTAD</option>
                                                    <option value="130000">LAMBAYEQUE</option>
                                                    <option value="140000">LIMA</option>
                                                    <option value="150000">LORETO</option>
                                                    <option value="160000">MADRE DE DIOS</option>
                                                    <option value="170000">MOQUEGUA</option>
                                                    <option value="180000">PASCO</option>
                                                    <option value="190000">PIURA</option>
                                                    <option value="200000">PUNO</option>
                                                    <option value="210000">SAN MARTIN</option>
                                                    <option value="220000">TACNA</option>
                                                    <option value="230000">TUMBES</option>
                                                    <option value="250000">UCAYALI</option>
                                            </select>
                                        </div>
									</div>
								</div>
								<div id="dvNombreProvincia" class="col-md-3" style="">
									<div class="form-group">
										<label id="lblProvincia" class="control-label">Provincia:</label>
										<div id="provincias"><select name="cdgoProv" id="cdgoProv" class="form-control">
                                            <option selected="selected" value="">TODOS</option>
                                            <option value="140900">BARRANCA</option>
                                            <option value="140200">CAJATAMBO</option>
                                            <option value="140300">CANTA</option>
                                            <option value="140400">CAÑETE</option>
                                            <option value="140800">HUARAL</option>
                                            <option value="140600">HUAROCHIRI</option>
                                            <option value="140500">HUAURA</option>
                                            <option value="140100">LIMA</option>
                                            <option value="141000">OYON</option>
                                            <option value="140700">YAUYOS</option>
    									</select>
										<span id="aComentarioProvincia"></span></div>
									</div>
								</div>
								<div id="dvNombreDistrito" class="col-md-3" style="">
									<div class="form-group">
										<label id="lblDistrito" class="control-label">Distrito:</label>
										<div id="distritos"><select name="cdgoDist" id="cdgoDist" class="form-control">
                                        		<option selected="selected" value=""> TODOS </option>
                                                <option value="140102">ANCON</option>
                                                <option value="140103">ATE</option>
                                                <option value="140125">BARRANCO</option>
                                                <option value="140104">BREÑA</option>
                                                <option value="140105">CARABAYLLO</option>
                                                <option value="140107">CHACLACAYO</option>
                                                <option value="140108">CHORRILLOS</option>
                                                <option value="140139">CIENEGUILLA</option>
                                                <option value="140106">COMAS</option>
                                                <option value="140135">EL AGUSTINO</option>
                                                <option value="140134">INDEPENDENCIA</option>
                                                <option value="140133">JESUS MARIA</option>
                                                <option value="140110">LA MOLINA</option>
                                                <option value="140109">LA VICTORIA</option>
                                                <option value="140101">LIMA</option>
                                                <option value="140111">LINCE</option>
                                                <option value="140142">LOS OLIVOS</option>
                                                <option value="140112">LURIGANCHO</option>
                                                <option value="140113">LURIN</option>
                                                <option value="140114">MAGDALENA DEL MAR</option>
                                                <option value="140115">MIRAFLORES</option>
                                                <option value="140116">PACHACAMAC</option>
                                                <option value="140118">PUCUSANA</option>
                                                <option value="140117">PUEBLO LIBRE</option>
                                                <option value="140119">PUENTE PIEDRA</option>
                                                <option value="140120">PUNTA HERMOSA</option>
                                                <option value="140121">PUNTA NEGRA</option>
                                                <option value="140122">RIMAC</option>
                                                <option value="140123">SAN BARTOLO</option>
                                                <option value="140140">SAN BORJA</option>
                                                <option value="140124">SAN ISIDRO</option>
                                                <option value="140137">SAN JUAN DE LURIGANCHO</option>
                                                <option value="140136">SAN JUAN DE MIRAFLORES</option>
                                                <option value="140138">SAN LUIS</option>
                                                <option value="140126">SAN MARTIN DE PORRES</option>
                                                <option value="140127">SAN MIGUEL</option>
                                                <option value="140143">SANTA ANITA</option>
                                                <option value="140128">SANTA MARIA DEL MAR</option>
                                                <option value="140129">SANTA ROSA</option>
                                                <option value="140130">SANTIAGO DE SURCO</option>
                                                <option value="140131">SURQUILLO</option>
                                                <option value="140141">VILLA EL SALVADOR</option>
                                                <option value="140132">VILLA MARIA DEL TRIUNFO</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

		<div id="divDetalle"><br><div style="clear:both"></div>
	  		<div class="row">
			<div class="col-lg-7 centered">
				<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
					<div class="col-xs-3 col-md-1">
						<span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
					</div>

					<div class="col-xs-9 col-md-11">
						<ul>
							<li>ACTAS PROCESADAS: 100.000%</li>
							<li>ACTAS CONTABILIZADAS: 100.000%</li>
							<li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
			<button class="btn btn-primary pull-right" type="button">Ver gráfico barras</button>
				<br>
		<div class="col-xs-12">
			<div id="page-wrap">
				<table class="table03">
				<tbody>
                        <tr class="titulo_tabla">
                            <td>ORGANIZACIÓN POLÍTICA</td>
                            <td style="width: 15%">TOTAL</td>
                            <td style="width: 15%">% VOTOS VÁLIDOS</td>
                            <td style="width: 15%">% VOTOS EMITIDOS</td>
                        </tr>
					
                        <tr>
                            <td><img width="40px" height="40px" src="images/simbolo_pkk.jpg" class="spaceimg">PERUANOS POR EL KAMBIO</td>
                            <td>8,418,681</td>
                            <td>50.103</td>
                            <td>46.892</td>
                        </tr>
                        <tr>
                            <td><img width="40px" height="40px" src="images/simbolo_keyko.jpg" class="spaceimg">FUERZA POPULAR </td>
                            <td>8,384,197</td>
                            <td>49.897</td>
                            <td>46.700</td>
                        </tr>
                    </tbody>
				</table>
			</div>
		</div>
		<div class="col-xs-12 pbot30">
			<div id="page-wrap">
				<table class="table23">
					<tbody>
						<tr>
                            <td>TOTAL DE VOTOS VÁLIDOS</td>
                            <td style="width: 15%">16,802,878</td>
                            <td style="width: 15%">100.000</td>
                            <td style="width: 15%">93.592</td>
                            
                        </tr> 
                        <tr>
                            <td>VOTOS EN BLANCO</td>
                            <td> 147,185</td>
                            <td>&nbsp; </td>
                            <td>0.820</td>
                            </tr>
                        <tr>
                            <td>VOTOS NULOS</td>
                            <td> 1,003,304</td>
                            <td>&nbsp;  </td>
                            <td>5.588</td>
                        </tr>
                        <tr>
                            <td> TOTAL DE VOTOS EMITIDOS</td>
                            <td>17,953,367</td>
                            <td>&nbsp; </td>	
                            <td>100.000</td>	
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 centered">
				<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
					<div class="col-xs-3 col-md-1">
						<span class="glyphicon glyphicon-info-sign ico-info" aria-hidden="true"></span>
					</div>

					<div class="col-xs-9 col-md-11">
						<ul>
							<li>Ciudadanos que votaron (CV): 17,953,367</li>
							<li>Electores hábiles (EH): 22,017,030</li>
							<li>Estos datos corresponden a las actas contabilizadas</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-12">
				<div class="col-xs-12 col-md-6">
					<div class="cuadro01">
						<table class="table04">
							<tbody>
								<tr>
									<td class="titulo_tabla_mostaza" colspan="2" style="padding:0px;font-weight: bold;">ACTAS</td>
								</tr>
								<tr>
									<td class="bold">ACTAS PROCESADAS * 100.000%</td>
									<td>74,224</td>
								</tr>
								<tr>
									<td>- Contabilizadas Normales (A)</td>
									<td>74,013</td>
								</tr>
								<tr>
									<td class="bold">ACTAS ENVIADAS AL JEE</td>
									<td></td>
								</tr>
								<tr>
									<td>- Con Votos Impugnados</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Con Error Material</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Con Ilegibilidad</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Incompleta</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Con Solicitud de Nulidad</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Acta sin datos</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Acta Extraviada</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Acta Siniestrada</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Acta sin firmas</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Con más de un tipo de Observación</td>
									<td>0</td>
								</tr>
								<tr>
									<td class="bold">ANULADAS POR RESOLUCIÓN</td>
									<td></td>
								</tr>
								<tr>
									<td>- Contabilizadas anuladas (L)</td>
									<td>211</td>
								</tr>
								<tr>
									<td>- Actas de mesas no instaladas (M)</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Actas por procesar (0.000%)</td>
									<td>0</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-xs-12 col-md-6">
					<div class="cuadro01">
						<table class="table05">
							<thead>
								<tr>
									<th>MESAS A INSTALAR</th>
									<th style="text-align:center">74,224</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>MESAS INSTALADAS (N)</td>
									<td>74,224</td>
								</tr>
								<tr>
									<td>MESAS NO INSTALADAS (O)</td>
									<td>0</td>
								</tr>
								<tr>
									<td>MESAS POR INFORMAR (P)</td>
									<td>0</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="cuadro01">
						<table class="table05">
							<thead>
								<tr>
									<th colspan="2">INFORMACIÓN REFERENCIAL</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>MESAS AGRUPADAS</td>
									<td>0</td>
								</tr>
								<tr>
									<td>GRUPOS DE VOTACIÓN</td>
									<td>74,224</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="col-xs-12 col-md-12 col-lg-12 cont-curv1">
						<div class="col-xs-5 col-md-8">
							% Actas Contabilizadas * *
						</div>

						<div class="col-xs-7 col-md-4">
							<img src="images/formula01.jpg" class="img-responsive">
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 legend">
				<span>* Actas Procesadas: Todas aquellas actas que ingresaron al C.C. y pasaron por la digitación y verificación.</span>
				<br>
				<span>** Actas Contabilizadas: Todas aquellas actas cuyos votos han sido contabilizados.</span>
			</div>
		</div>
							
		<div id="dvResConAcordion" class="col-xs-12">
		<div class="panel panel-default">
				<h4 class="panel-title">
					<a href="#"> GLOSARIO</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse " role="tabpanel" aria-labelledby="headingOne">
				<div class="panel-body">
					<ul class="lista01">
						<li><b>ACTA CON VOTOS IMPUGNADOS:</b> Acta con votos impugnados.</li>
						<li><b>ACTA CON ERROR MATERIAL:</b> Con inconsistencias en los datos numéricos consignados.</li>
						<li><b>ACTA CON ILEGIBILIDAD:</b> Es aquella que contiene datos ilegibles.</li>
						<li><b>ACTA INCOMPLETA:</b> No consigna el total de ciudadanos que votaron.</li>
						<li><b>ACTA CON SOLICITUD DE NULIDAD:</b> Acta con solicitud de nulidad de la mesa, realizada de manera expresa en el espacio de observadores.</li>
						<li><b>ACTA SIN DATOS:</b> No se registran votos.</li>
						<li><b>ACTA EXTRAVIADA:</b> La que no llega a la ODPE y es declarada como tal por el Jefe de la ODPE.</li>
						<li><b>ACTA SINIESTRADA:</b> Acta que corresponde a una mesa de sufragio y que debido a hecho de violencia y/o atentado contra el Derecho al Sufragio que haya afectado el material electoral, no han podido ser entregadas a la ODPE o ingresadas al sistema de cómputo electoral para su procesamiento.</li>
						<li><b>ACTA SIN FIRMAS:</b> No se considera como acta observada cuando el acta de instalación, sufragio o escrutinio cuentan con por lo menos las firmas, el nombre y número de DNI de los tres miembros de mesa, en cualesquiera de estas, y en las otras dos restantes, los datos y las firmas de por lo menos dos miembros de la mesa.</li>
						<li><b>CON MÁS DE UNA OBSERVACIÓN:</b> Aquella acta que presenta alguna combinación de las observaciones anteriormente mencionadas.</li>
					</ul>
                </div>
            </div>
		</div>
	</div>

    </form>
</div>
</div>

</div>
</div>
	</section>
</div>
 <%@include file="WEB-INF/footer.jsp" %>
</body>
</html>
    