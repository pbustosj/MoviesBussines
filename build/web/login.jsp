<%
    if (session.getAttribute("objUserCon") != null) {
        response.sendRedirect("home.jsp");
    } else {

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->


        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">

        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>

        <title>Login - Peliculas</title>
    </head>
    <body class="">
        <div class="container green">
            <br>
            <h2 class="center  lime-text darken-4"><strong>Sistema Administación Peliculas</strong></h2>
            <div class=" card-panel" style="margin-top:10%;background: rgba(238, 238, 238, 0.5);">
                <div class="row">
                    <div class="col l12 center"><h5 style="font-weight: bold;">Login<br>Ingrese sus credenciales para acceder</h5> <hr></div>  

                </div>
                <div class="row">
                    <form class="col s12" action="./loginServlet" method="POST" id="frmLogin">
                        <div class="col l2 center"></div>  
                        <div class="col l8 center">
                            <div class="row">
                                <div class="input-field col s2">
                                </div>

                                <div class="input-field col s8">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input id="usuarioQl" name="usuarioQl" type="text" class="validate">
                                    <label for="icon_prefix">First Name</label>
                                </div>
                                <div class="input-field col s2">
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s2">
                                </div>

                                <div class="input-field col s8">
                                    <i class="material-icons prefix">phone</i>
                                    <input id="contraQl" name="contraQl" type="password" class="validate">
                                    <label for="icon_telephone">Telephone</label>
                                </div>
                                <div class="input-field col s2">
                                </div>


                            </div>
                            <div class="row">
                                <div class="col l4 center">
                                    <!-- <a class="btn-large green waves-effect waves-light" href="ingresoVenta.jsp">Ingreso Venta</a>
                                    --> </div>
                                <div class="col l4 center">
                                    <a class="btn-large green waves-effect waves-light" id="ingresar">Ingresar</a>

                                </div>
                                <div class="col l4 center">
                                    <!--<a class="btn-large orange waves-effect waves-light " href="listadoVenta.jsp">Listado Venta</a>
                                    -->
                                </div>

                            </div>
                        </div>  
                        <div class="col l2 center"></div>  

                    </form>
                </div>
            </div>
        </div>
     
    </body>
</html>

<script>
    $(document).ready(function () {
        $('#ingresar').click(function () {
            $('#frmLogin').submit();
        });
    });
</script>

<%    }
%>