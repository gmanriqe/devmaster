<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body {
            margin: 0;
            background-color: #fafafa;
        }
        .main-container {
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
            padding-left: 10px;
            padding-right: 10px;
        }
        h1 {
            text-align: center;
        }
        .banner {
            min-height: 450px;
            background-image: url("banner.jpeg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 50%;
        }
        .table {
            margin-top: 20px;
            width: 100%;
            border-collapse: collapse;
        }
        .table, th, td {
            border: 1px solid #000;
            text-align: center;
        }
        .btn-form {
            text-decoration: none;
            background-color: #A2CEDD;
            display: inline-block;
            padding: 10px 23px;
            border-radius: 4px;
            color: #000;
        }
    </style>
</head>
<body>
        <?php 
            $arreglo = array(
            array( '1','Té Dharamsala','Exotic Liquids','Bebidas','10 cajas x 20 bolsas',18,39),
            array( '2','Cerveza tibetana Barley','Exotic Liquids','Bebidas','24 - bot. 12 l',18,17),
            array( '3','Sirope de regaliz','Exotic Liquids','Condimentos','12 - bot. 550 ml',10,13),
            array( '4','Especias Cajun del chef Anton','New Orleans Cajun Delights','Condimentos','48 - frascos 6 l',22,53),
            array( '5','Mezcla Gumbo del chef Anton','New Orleans Cajun Delights','Condimentos','36 cajas',21.35,0),
            array( '6','Mermelada de grosellas de la abuela','Grandma Kellys Homestead','Condimentos','12 - frascos 8 l',25,120),
            array( '7','Peras secas orgánicas del tío Bob','Grandma Kellys Homestead','Frutas/Verduras','12 - paq. 1 kg',30,15),
            array( '8','Salsa de arándanos Northwoods','Grandma Kellys Homestead','Condimentos','12 - frascos 12 l',40,6),
            array( '9','Buey Mishi Kobe','Tokyo Traders','Carnes','18 - paq. 500 g',97,29),
            array( '10','Pez espada','Tokyo Traders','Pescado/Marisco','12 - frascos 200 ml',31,31),
            array( '11','Queso Cabrales','Cooperativa de Quesos Las Cabras','Lácteos','paq. 1 kg',21,22),
            array( '12','Queso Manchego La Pastora','Cooperativa de Quesos Las Cabras','Lácteos','10 - paq. 500 g',38,86),
            array( '13','Algas Konbu','Mayumis','Pescado/Marisco','caja 2 kg',6,24),
            array( '14','Cuajada de judías','Mayumis','Frutas/Verduras','40 - paq. 100 g',23.25,35),
            array( '15','Salsa de soja baja en sodio','Mayumis','Condimentos','24 - bot. 250 ml',15.5,39),
            array( '16','Postre de merengue Pavlova','Pavlova, Ltd.','Repostería','32 - cajas 500 g',17.45,29),
            array( '17','Cordero Alice Springs','Pavlova, Ltd.','Carnes','20 - latas 1 kg',39,0),
            array( '18','Langostinos tigre Carnarvon','Pavlova, Ltd.','Pescado/Marisco','paq. 16 kg',62.5,42),
            array( '19','Pastas de té de chocolate','Specialty Biscuits, Ltd.','Repostería','10 cajas x 12 piezas',9.2,25),
            array( '20','Mermelada de Sir Rodneys','Specialty Biscuits, Ltd.','Repostería','30 cajas regalo',81,40),
            array( '21','Bollos de Sir Rodneys','Specialty Biscuits, Ltd.','Repostería','24 paq. x 4 piezas',10,3),
            array( '22','Pan de centeno crujiente estilo Gustafs','PB Knäckebröd AB','Granos/Cereales','24 - paq. 500 g',21,104),
            array( '23','Pan fino','PB Knäckebröd AB','Granos/Cereales','12 - paq. 250 g',9,61),
            array( '24','Refresco Guaraná Fantástica','Refrescos Americanas LTDA','Bebidas','12 - latas 355 ml',4.5,20),
            array( '25','Crema de chocolate y nueces NuNuCa','Heli Süßwaren GmbH & Co. KG','Repostería','20 - vasos  450 g',14,76),
            array( '26','Ositos de goma Gumbär','Heli Süßwaren GmbH & Co. KG','Repostería','100 - bolsas 250 g',31.23,15),
            array( '27','Chocolate Schoggi','Heli Süßwaren GmbH & Co. KG','Repostería','100 - piezas 100 g',43.9,49),
            array( '28','Col fermentada Rössle','Plutzer Lebensmittelgroßmärkte AG','Frutas/Verduras','25 - latas 825 g',45.6,26),
            array( '29','Salchicha Thüringer','Plutzer Lebensmittelgroßmärkte AG','Carnes','50 bolsas x 30 salch',123.79,0),
            array( '30','Arenque blanco del noroeste','Nord-Ost-Fisch Handelsgesellschaft mbH','Pescado/Marisco','10 - vasos 200 g',25.89,10),
            array( '31','Queso gorgonzola Telino','Formaggi Fortini s.r.l.','Lácteos','12 - paq. 100 g',12.5,0),
            array( '32','Queso Mascarpone Fabioli','Formaggi Fortini s.r.l.','Lácteos','24 - paq. 200 g',32,9),
            array( '33','Queso de cabra','Norske Meierier','Lácteos','500 g',2.5,112),
            array( '34','Cerveza Sasquatch','Bigfoot Breweries','Bebidas','24 - bot. 12 l',14,111),
            array( '35','Cerveza negra Steeleye','Bigfoot Breweries','Bebidas','24 - bot. 12 l',18,20),
            array( '36','Escabeche de arenque','Svensk Sjöföda AB','Pescado/Marisco','24 - frascos 250 g',19,112),
            array( '37','Salmón ahumado Gravad','Svensk Sjöföda AB','Pescado/Marisco','12 - paq. 500 g',26,11),
            array( '38','Vino Côte de Blaye','Aux joyeux ecclésiastiques','Bebidas','12 - bot. 75 cl',263.5,17),
            array( '39','Licor verde Chartreuse','Aux joyeux ecclésiastiques','Bebidas','750 cc por bot.',18,69),
            array( '40','Carne de cangrejo de Boston','New England Seafood Cannery','Pescado/Marisco','24 - latas 4 l',18.4,123),
            array( '41','Crema de almejas estilo Nueva Inglaterra','New England Seafood Cannery','Pescado/Marisco','12 - latas 12 l',9.65,85),
            array( '42','Tallarines de Singapur','Leka Trading','Granos/Cereales','32 - 1 kg paq.',14,26),
            array( '43','Café de Malasia','Leka Trading','Bebidas','16 - latas 500 g',46,17),
            array( '44','Azúcar negra Malacca','Leka Trading','Condimentos','20 - bolsas 2 kg',19.45,27),
            array( '45','Arenque ahumado','Lyngbysild','Pescado/Marisco','paq. 1k',9.5,5),
            array( '46','Arenque salado','Lyngbysild','Pescado/Marisco','4 - vasos 450 g',12,95),
            array( '47','Galletas Zaanse','Zaanse Snoepfabriek','Repostería','10 - cajas 4 l',9.5,36),
            array( '48','Chocolate holandés','Zaanse Snoepfabriek','Repostería','10 paq.',12.75,15),
            array( '49','Regaliz','Karkki Oy','Repostería','24 - paq. 50 g',20,10),
            array( '50','Chocolate blanco','Karkki Oy','Repostería','12 - barras 100 g',16.25,65),
            array( '51','Manzanas secas Manjimup','Gday, Mate','Frutas/Verduras','50 - paq. 300 g',53,20),
            array( '52','Cereales para Filo','Gday, Mate','Granos/Cereales','16 - cajas 2 kg',7,38),
            array( '53','Empanada de carne','Gday, Mate','Carnes','48 porc.',32.8,0),
            array( '54','Empanada de cerdo','Ma Maison','Carnes','16 tartas',7.45,21),
            array( '55','Paté chino','Ma Maison','Carnes','24 cajas x 2 tartas',24,115),
            array( '56','Gnocchi de la abuela Alicia','Pasta Buttini s.r.l.','Granos/Cereales','24 - paq. 250 g',38,21),
            array( '57','Raviolis Angelo','Pasta Buttini s.r.l.','Granos/Cereales','24 - paq. 250 g',19.5,36),
            array( '58','Caracoles de Borgoña','Escargots Nouveaux','Pescado/Marisco','24 porc.',13.25,62),
            array( '59','Raclet de queso Courdavault','Gai pâturage','Lácteos','paq. 5 kg',55,79),
            array( '60','Camembert Pierrot','Gai pâturage','Lácteos','15 - paq. 300 g',34,19),
            array( '61','Sirope de arce','Forêts dérables','Condimentos','24 - bot. 500 ml',28.5,113),
            array( '62','Tarta de azúcar','Forêts dérables','Repostería','48 tartas',49.3,17),
            array( '63','Sandwich de vegetales','Pavlova, Ltd.','Condimentos','15 - frascos 625 g',43.9,24),
            array( '64','Bollos de pan de Wimmer','Plutzer Lebensmittelgroßmärkte AG','Granos/Cereales','20 bolsas x 4 porc.',33.25,22),
            array( '65','Salsa de pimiento picante de Luisiana','New Orleans Cajun Delights','Condimentos','32 - bot. 8 l',21.05,76),
            array( '66','Especias picantes de Luisiana','New Orleans Cajun Delights','Condimentos','24 - frascos 8 l',17,4),
            array( '67','Cerveza Laughing Lumberjack','Bigfoot Breweries','Bebidas','24 - bot. 12 l',14,52),
            array( '68','Barras de pan de Escocia','Specialty Biscuits, Ltd.','Repostería','10 cajas x 8 porc.',12.5,6),
            array( '69','Queso Gudbrandsdals','Norske Meierier','Lácteos','paq. 10 kg',36,26),
            array( '70','Cerveza Outback','Pavlova, Ltd.','Bebidas','24 - bot. 355 ml',15,15)
        );    
        ?>
        <div class="banner">
        </div>
        <div class="content">
            <div class="main-container">
                <h1>Tienda de Abarrotes <strong>Don Pepito</strong></h1>
                <p>Visualizacion del producto a consultar: </p>
                <a class="btn-form" href="ejercicio01.php">← Formulario</a>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre Producto</th>
                            <th>Proveedor</th>
                            <th>Categoría</th>
                            <th>CantidadPorUnidad</th>
                            <th>PrecioUnidad</th>
                            <th>UnidadesEnExistencia</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <?php

                            $id = $_POST['id'];

                            for ($i=0; $i < count($arreglo); $i++) { 
                                if($id == $arreglo[$i][0]){
                                echo "<td>".$arreglo[$i][0]."</td>";
                                echo "<td>".$arreglo[$i][1]."</td>";
                                echo "<td>".$arreglo[$i][2]."</td>";
                                echo "<td>".$arreglo[$i][3]."</td>";
                                echo "<td>".$arreglo[$i][4]."</td>";
                                echo "<td>".$arreglo[$i][5]."</td>";
                                echo "<td>".$arreglo[$i][6]."</td>";
                                }
                            }
                            ;?>
                        </tr>
                    </tbody>
                </table>
                
            </div>
        </div>
        
</body>
</html>