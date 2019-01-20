<?php  
	class OperacionesMatematicas{
		var $resultado;
		function getResultado(){
			return $this->resultado;
		}

		public function Calcular($num1,$num2,$operador){
			if ($operador == "+") {
				$this->resultado = $num1 + $num2;
			}elseif ($operador == "-") {
				$this->resultado = $num1 - $num2;
			}elseif ($operador == "x") {
				$this->resultado = $num1 * $num2;
			}else {
				$this->resultado = $num1 / $num2;
			}
		}

		public function Suma($num1,$num2){
			$this->resultado = $num1 + $num2;
		}

		public function Resta($num1,$num2){
			$this->resultado = $num1 - $num2;
		}	

		public function Multiplicacion($num1,$num2){
			$this->resultado = $num1 * $num2;
		}

		public function Division($num1,$num2){
			$this->resultado = $num1 / $num2;
		}
	}

	$var = new OperacionesMatematicas;

	foreach ($_POST as $key => $value) {
		echo $key.',  '.$value."<br>";
	}
/*
	if (isset($_POST["Sumar"])) {
		$var->Suma($_POST["num1"],$_POST["num2"]);
		echo $var->getResultado();
	}
	if (isset($_POST["Restar"])) {
		$var->Resta($_POST["num1"],$_POST["num2"]);
		echo $var->getResultado();
	}
	if (isset($_POST["Multiplicar"])) {
		$var->Multiplicacion($_POST["num1"],$_POST["num2"]);
		echo $var->getResultado();
	}
	if (isset($_POST["Dividir"])) {
		$var->Division($_POST["num1"],$_POST["num2"]);
		echo $var->getResultado();
	}
*/
	$var->Calcular($_POST["num1"],$_POST["num2"],$_POST["boton"]);
	echo $var->getResultado();
?>

