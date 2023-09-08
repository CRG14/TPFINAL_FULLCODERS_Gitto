Algoritmo Trabajo_Final
	Definir NombreAgente Como Caracter
	Definir TipoInasistencia Como Entero
	Definir CantidadInasistencia Como Entero
	Definir Finbucle Como Caracter
	Escribir "Ingrese Nombre y Apellido del  agente"
	Leer  NombreAgente
	Escribir "Ingrese tipo de inasistencia"
	Escribir "1. Por enfermedad"
	Escribir "2. Por vacaciones"
	Escribir "3. Por examen"
	Escribir "4. Por maternidad"
	Leer TipoInasistencia
	Escribir "Ingrese cantidad de dias de inasistencia"
	Leer CantidadInasistencia
	
	Segun TipoInasistencia Hacer
		1:
			Escribir "El agente:" NombreAgente "posee " CantidadInasistencia "Dias  de inasistencia por enfermedad"
		2:
			Escribir "El agente:" NombreAgente "posee " CantidadInasistencia "Dias  de inasistencia por vacaciones"
		3:
			Escribir "El agente:" NombreAgente "posee " CantidadInasistencia "Dias  de inasistencia por examen"
		De Otro Modo:
			Escribir "El agente:" NombreAgente "posee " CantidadInasistencia "Dias  de inasistencia por maternidad"
	Fin Segun
FinAlgoritmo
