<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<
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
				<li class="bt-azul">
					<a href="svlPresidencial">PRESIDENCIAL</a>
				</li>
				<li class="bt-amarillo">
					<a href="svlActas">ACTAS</a>
				</li>
				<li class="bt-rojo act-rojo">
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
							<li><a href="Resultado.jsp">RESULTADOS PRESIDENCIALES</a></li>
							<li><a href="Resultado2.jsp" class="act-izq">RESULTADOS POR TIPO DE VOTOS</a></li>
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
							<p class="subtitle">
                                GRÁFICO DE RESULTADOS DE VOTOS VÁLIDOS, BLANCOS Y NULOS
                            </p>
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
										<div id="departamentos">
                                        <select name="cdgoDep" id="cdgoDep" class="form-control">
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
                        <div id="provincias">
                        <select name="cdgoProv" id="cdgoProv" class="form-control">
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
                    <div id="distritos">
                    <select name="cdgoDist" id="cdgoDist" class="form-control">
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

							<div id="divDetalle"><br>

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
	<div class="col-xs-12 pbot30">
		
		<div class="row cont-recto">
			<div class="col-lg-8 centered">
																																																<p><b>GRÁFICO DE RESULTADOS DE VOTOS VÁLIDOS, BLANCOS Y NULOS</b></p>
			<img class="img-responsive" src="images/votos_validos.png">
			</div>
		</div>
		
		<div id="page-wrap">
			<table class="table03_2">
				<thead>
					<tr>
						<th>VOTOS VÁLIDOS</th>
						<th>VOTOS BLANCOS</th>
						<th>VOTOS NULOS</th>
						<th>TOTAL</th>
					</tr>
				</thead>
				<tbody>
					<tr>
                        <td style="text-align:center">16,802,878</td>
                        <td>147,185</td>
                        <td>1,003,304</td>
                        <td>17,953,367</td>
                        </tr>
                        <tr>
                        <td style="text-align:center">93.592%</td>
                        <td>0.820%</td>
                        <td>5.588%</td>
                        <td>100.000%</td>
					</tr>
				</tbody>
			</table>
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

<div id="divDetalle"></div>
    <%@include file="WEB-INF/footer.jsp" %>
</body>
</html>
