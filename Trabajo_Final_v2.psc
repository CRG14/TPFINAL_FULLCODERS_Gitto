	Algoritmo Trabajo_Final_v3
		// definicion de variables e inicialización
		Definir NombreAgente Como Caracter
		Definir TipoInasistencia Como Entero
		Definir Finbucle Como Caracter
		
		Dimension  CantidadInasistencia[4]
		
		CantidadInasistencia[1]<-0	//Inasistencia  por enfermedad
		CantidadInasistencia[2]<-0	//Inasistencia por vacaciones
		CantidadInasistencia[3]<-0	// Inasistencia por examen
		CantidadInasistencia[4]<-0	// Inasistencia por maternidad
		
		Definir TotalInasistencia como Entero
		TotalInasistencia<-0
		Definir VacacionesSiguiente Como Entero
		VacacionesSiguiente<-0
		
		Definir PremioporAsistencia Como Entero
		PremioporAsistencia<- 10000
		
		
		Definir i Como Logico
		i<-Verdadero
		
		Definir j Como Entero
		j<-1
		
		
			
		// ingreso de datos
		Escribir "Ingrese Nombre y Apellido del  agente"
		Leer  NombreAgente
		
		Mientras i=Verdadero Hacer
			Escribir "Ingrese tipo de inasistencia"
			Escribir "1. Por enfermedad"
			Escribir "2. Por fuerza mayor"
			Escribir "3. Por examen"
			Escribir "4. Por maternidad"
			Leer TipoInasistencia
			
			
			Escribir "Ingrese cantidad de dias de inasistencia"
			Leer CantidadInasistencia[TipoInasistencia]
			
			
			Escribir "Desea ingresar otra inasistencia? si/no"
			
			Leer Finbucle
			
			Si Finbucle= "si" Entonces
				i<-Verdadero
			SiNo
				i<-Falso
			FinSi
			
		FinMientras
		
		// Muestra los resultados del ingreso de datos
		Escribir "El agente " NombreAgente " tiene"
		Para j<-1 Hasta 4 Hacer
			Segun j Hacer
				1:
					Escribir CantidadInasistencia[j] " Dias  de inasistencia por enfermedad"
				2:
					Escribir CantidadInasistencia[j] " Dias  de inasistencia por razones de  fuerza mayor"
				3:
					Escribir CantidadInasistencia[j] " Dias  de inasistencia por examen"
				De Otro Modo:
					Escribir CantidadInasistencia[j] " Dias  de inasistencia por maternidad"
			Fin Segun
			
		FinPara
	
		//Calculo de las licencias y premios correspondientes
		Para j<-1 Hasta 4 Hacer
						TotalInasistencia<-TotalInasistencia+CantidadInasistencia[j]
		FinPara
		
		Si TotalInasistencia >= 0 & TotalInasistencia <= 10 Entonces
			VacacionesSiguiente<-21
			Escribir "Recibe premio de:" PremioporAsistencia " por buena asistencia"
			Escribir "La cantidad de vacaciones correspondientes es:" VacacionesSiguiente
		Fin Si
		Si TotalInasistencia>=11 & TotalInasistencia<120 Entonces
			VacacionesSiguiente<-21
			Escribir "No recibe premio"
			Escribir "La cantidad de vacaciones correspondientes es:" VacacionesSiguiente
		FinSi
		
		Si TotalInasistencia>120
			VacacionesSiguiente<-(120/2)
			Escribir "No recibe premio"
			Escribir "La cantidad de vacaciones correspondientes es:" VacacionesSiguiente
		FinSi
		
		
FinAlgoritmo

