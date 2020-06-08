// Juego simple que pide al usuario que adivine un numero en 10 intentos //
//Este algoritmo ha sido editado, arreglado y mejorado por Alejandro Mart�nez Men�ndez de 2�BTO A//

//Arreglados n�merosos errores e incomodidades relacionados con el indentado//
//Se han incorporado y modificado instrucciones para hacer el juego m�s comprensible y accesible//

Algoritmo Adivina_Numero
	
	intentos<-10
	
	num_secreto <- azar(100)+1
	
	Escribir "Adivine el numero (de 1 a 100):"
	
	Leer num_ingresado
	//Se ha introducido una validaci�n de datos que impide insertar valores ajenos al juego//
	Mientras num_ingresado<1 o num_ingresado>100 Hacer
		Escribir "El n�mero que usted ha tratado de introducir no cumple los requisitos del juego"
		Escribir ""
		Escribir "Es un requisito fundamental que el n�mero se encuentre entre 1 y 100 estando ambos inclu�dos"
		Escribir ""
		Escribir "Por Favor, introduzca un nuevo n�mero que se ajuste a lo indicado previamente"
		Leer num_ingresado
	Fin Mientras
	
	Mientras num_secreto<>num_ingresado Y intentos>1 Hacer
		
		
		Si num_secreto>num_ingresado Entonces
			
			
			Escribir "El n�mero que trata de adivinar es m�s alto"
			
		SiNo 
			
			
			Escribir "El n�mero que trata de adivinar es m�s bajo"
			
			
		FinSi
		
		
		intentos <- intentos-1
		
		//Corregido error en el registro de intentos//
		Escribir "Le quedan ",intentos," intentos:"
		
		//Se ha introducido una validaci�n de datos que impide insertar valores ajenos al juego//
		Leer num_ingresado
		
		Mientras num_ingresado<1 o num_ingresado>100 Hacer
			Escribir "El n�mero que usted ha tratado de introducir no cumple los requisitos del juego"
			Escribir ""
			Escribir "Es un requisito fundamental que el n�mero se encuentre entre 1 y 100 estando ambos inclu�dos"
			Escribir ""
			Escribir "Por Favor, introduzca un nuevo n�mero que se ajuste a lo indicado previamente"
			Leer num_ingresado
		Fin Mientras
		
		
	FinMientras
	
	Si num_secreto=num_ingresado Entonces
		
		//Corregido error en el recuento final de intentos//
		Escribir "Exacto! Usted adivino en ",11-intentos," intentos."
		
		
	SiNo
		
		Escribir "Lo sentimos, usted no ha adivinado el n�mero"
		Escribir ""
		Escribir "El numero secreto era: ",num_secreto
		
		
	FinSi
	
FinAlgoritmo