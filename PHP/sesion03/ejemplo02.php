<?php 
    class pagina_web
    {
        var $titulo;

        // cada variable tendra su funcion como set o get(constructores)
        function setTitulo($titulo = "Titulo por defecto"){
            $this->titulo = $titulo; //$this-> = $
        }

        function getTitulo(){
            return $this->titulo;
        }

        function cabecera(){
            echo "<html><head><title>";
            echo $this->titulo; //aqui llamas a la variable y las funciones set y get
            echo "</title></head><body>";
        }

        function cuerpo(){
            echo "Este es el cuerpo de la Página Web";
        }

        function pie(){
            echo "</body></html>";
        }

        function mostrar_pagina(){
            echo $this->cabecera();
            echo $this->cuerpo();
            echo $this->pie();
        }
    }

    // Heredando metodos de la clase pagina_web para poder reutilizarlo en la clase pagina_web_formulario
    class pagina_web_formulario extends pagina_web {
        function formulario_inicio($accion){
            echo "<form action="."$accion".">";
        }

        function formulario_fin(){
            echo "</form>";
        }

        function formulario_caja_texto($nombre,$apellido){
            echo "$nombre: <input type='text' name=".$nombre."><br>";
            echo "$apellido: <input type='text' name=".$apellido.">";
        }

        function formulario_boton() {
            echo "<input type='submit' name='Submit' value='Enviar'>";
        }

        function mostrar_pagina(){
            echo $this->cabecera();
            echo $this->formulario_inicio("ejemplo01-formulario.php");
            echo $this->formulario_caja_texto("Nombre","Apellido");
            echo $this->formulario_boton();
            echo $this->formulario_fin();
            echo $this->pie();
        }
    }

    /* llamando a la clase pagina_web_formulario() */
    $pagina = new pagina_web_formulario();
    $pagina -> setTitulo("Pagina Web Formulario");

    /* llamando a la clase pagina_web(); */ 
    // $pagina = new pagina_web();
    // $pagina -> setTitulo("Pagina Web Nueva");
    $pagina -> mostrar_pagina();
;?>