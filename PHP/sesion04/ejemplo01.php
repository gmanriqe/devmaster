<?php
	class pagina_web
	{
		var $titulo;

		private function setTitulo($titulo = "Titulo por defecto")
		{
			$this->titulo = $titulo;
		}

		function getTitulo()
		{
			return $this->titulo;
		}

		function cabecera ()
		{
			echo "<html><head><title>";
			echo $this->titulo;
			echo "</title></head><body>";
		}

		function cuerpo()
		{
			echo "Este es el cuerpo de la pagina Web";
		}

		function pie()
		{
			echo "</body></html>";
		}

		function mostrar_pagina()
		{
			echo $this->cabecera();
			echo $this->cuerpo();
			echo $this->pie();
		}
	}

	class pagina_web_formulario extends pagina_web
	{
		
		function formulario_inicio($accion)
		{
			echo "<form action=\"$accion\">";
		}

		function formulario_fin()
		{
			echo "</form>";
		}

		function formulario_caja_texto($nombre)
		{
			echo "$nombre <input type=\"text\"name=\"$nombre\"><br>";
		}

		function formulario_boton()
		{
			echo "<input type=\"submit\"name=\"Submit\"value=\"Enviar\">";
		}

		function mostrar_pagina()
		{
			$this->cabecera();
			$this->formulario_inicio("formulario.php");
			$this->formulario_caja_texto("Nombre");
			$this->formulario_caja_texto("Apellidos");
			$this->formulario_caja_texto("Correo");
			$this->formulario_boton();
			$this->formulario_fin();
			$this->pie();
		}

	}

	class Nombre
	{
		var $sNombre;
		function setNombre($nombre){
			$this->sNombre = $nombre;
		}

		protected function getNombre()
		{
			return $this->sNombre;
		}

	}

	function cambiaNombre($objeto,$nombre)
	{
		$objeto -> setObjeto($nombre);
	}

	$luis= new Nombre;

	$luis -> setNombre("Luis Angel");

	echo "El nombre del objeto es :". $luis->getNombre()."<br>";

	cambiaNombre($luis,"Pedro");

	echo "El nombre del objeto es : ". $luis->getNombre(). "<br>";


	$pagina = new pagina_web_formulario("Pagina con Formulario");
	$pagina -> setTitulo("Pagina Web nueva");
	$pagina -> mostrar_pagina();



	abstract class Web
	{
		protected $titulo;
		public function setTitulo ($titulo = "Titulo por defecto")
		{
			$this->titulo = $titulo;
		}

		abstract public function getTitulo();
	}

	class Nombre
	{
		protected $nombre;

		public function getNombre(){
			return $this->nombre;
		}

		public function setNombre($nom){
			$this->nombre = $nom;
		}

        // esta es una funcion estatic por que no resive ningun valor
		public function nombreDefecto()
		{
			return "Luis Angel<br>";
		}
	}

	$luis = new Nombre;

	echo $luis->nombreDefecto();

    // solo puedes hacer el llamado de esta forma a un metodo estatico: linea 137
    echo Nombre::nombreDefecto(); // esto es simplificando linea 143 + 145
    
    
    
?>