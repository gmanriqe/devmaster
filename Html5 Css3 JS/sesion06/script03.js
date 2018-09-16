var total = 100;
var mensaje = "Hola Mundo";

total = total + 300;
// total += 100;

// console.log(total);

var alumno = true;

if (alumno) {
  // alert('es un alumno');
} else {
  // alert('no es alumno');
}

var x = 5;
var y = 6;

var suma = x + y;
var resta = x - y;
var multiplicacion = x * y;
var division = x / y;

// console.log(suma);
// console.log(resta);
// console.log(multiplicacion);
// console.log(division);

// si va despues, va realizar la multiplicacion y luego el incremento
var mulOne = x++ * y;
// si va antes, va realizar el incremento y luego la operacion
var mulTwo = ++x * y;

// funciones
myFunction(20, 40);
function myFunction(a, b) {
  var result = a + b;
  console.log(result);
}

myResult(18);
function myResult(edad) {
  if (edad >= 18) {
    console.log("eres mayor de edad");
  } else {
    console.log("eres menor de edad");
  }
}

var w = "5";
var y = 5;

if (w == y) {
  console.log("tener en cuenta");
}

console.log(mulOne);
console.log(mulTwo);
console.log(x);

var diaSemana = new Date().getDay();
console.log(diaSemana);

var dia = "";
switch (6) {
  case 0:
    dia = "Es Domingo";
    document.getElementById("day").innerHTML = dia;
    break;
  case 1:
    dia = "Es Lunes";
    document.getElementById("day").innerHTML = dia;
    break;
  case 2:
    dia = "Es Martes";
    document.getElementById("day").innerHTML = dia;
    console.log("Es Martes");
    break;
  case 3:
    dia = "Es Miercoles";
    document.getElementById("day").innerHTML = dia;
    console.log("Es Miercoles");
    break;
  case 4:
    dia = "Es Jueves";
    document.getElementById("day").innerHTML = dia;
    console.log("Es Jueves");
    break;
  case 5:
    dia = "Es Viernes";
    document.getElementById("day").innerHTML = dia;
    console.log("Es Viernes");
    break;
  default:
    dia = "Es Sabado";
    document.getElementById("day").innerHTML = dia;
    console.log("Es Sabado");
}

function fnDesaparece() {
  document.getElementById("day").style.display = "none";
}

function fnAparece() {
  document.getElementById("day").style.display = "block";
  document.getElementById("day").style.color = "#eea40e";
}

//  LOOP
var i = 0;
while (i < 8) {
  console.log(i);
  i++;
}

var dias = [
  "lunes",
  "martes",
  "miercoles",
  "jueves",
  "viernes",
  "sabado",
  "domingo"
];
for (let index = 0; index < dias.length; index++) {
  const element = dias[index];
  console.log(element);
}
