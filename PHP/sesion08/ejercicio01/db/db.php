<?php
   //   function get_usuario($query){
        $servidor = "localhost";
        $usuario = "root";
        $contrasenia = "root";
        $basedatos = "clasephp"; // esta base de datos, en mi caso la tengo como clasephp
   
        $conn = new mysqli($servidor, $usuario, $contrasenia, $basedatos) or die (mysqli_erro($mysqli));
      //   $result = $conn->query($query);
   
       //  si trajo un error de conexion
      //   if($login->connect_errno > 0) {
      //      die("No se encuentra la base de datos!".$login->connect_error);
      //   }
   
       //  si trajo un error en la consulta sql
      //   if(!$result = $login->query($query)){
      //       echo "No se puede ejecutar";
      //       exit;
      //   }
   
      //   $res = array();
   
      //   while ($row = $result->fetch_assoc()){
      //      array_push($res, array(
      //          'dni'=>$row['dni'],
      //          'nombre'=>$row['nombreUsuario'],
      //          'password'=>$row['password'])
      //       );
      //   }
   
      //   $login->close();
      //   return $res;
   //   }

   //   function get_list_product($query){
   //      $servidor = "localhost";
   //      $usuario = "root";
   //      $contrasenia = "root";
   //      $basedatos = "clasephp";

   //      $cn = new mysqli($servidor, $usuario, $contrasenia, $basedatos);

   //      //  si trajo un error de conexion
   //      if($cn->connect_errno > 0) {
   //          die("No se encuentra la base de datos!".$cn->connect_error);
   //       }
    
   //      //  si trajo un error en la consulta sql
   //       if(!$result = $cn->query($query)){
   //           echo "No se puede ejecutar";
   //           exit;
   //       }

   //      $res = array();
   //       while($row = $result->fetch_assoc()){
   //          //  echo $row['iIdProducto'];
   //          //  echo $row['vNombreProducto'];
   //          //  echo $row['vProveedor'];
   //          //  echo $row['vCategoría'];
   //          //  echo $row['CantidadPorUnidad'];
   //          //  echo $row['PrecioUnidad'];
   //          //  echo $row['UnidadesEnExistencia'];
   //           array_push($res, array(
   //              'idProducto'        => $row['iIdProducto'],
   //              'nombreProducto'    => $row['vNombreProducto'],
   //              'proveedor'         => $row['vProveedor'],
   //              'categoria'         => $row['vCategoría'],
   //              'cantidadUnidad'    => $row['CantidadPorUnidad'],
   //              'precioUnidad'      => $row['PrecioUnidad'],
   //              'unidadExistente'   => $row['UnidadesEnExistencia']
   //           ));
   //       }

   //       $cn->close();
   //      //  var_dump($res);
   //       return $res;
   //   }
?>