// Juego simple que pide al usuario que adivine un numero en 10 intentos //
//Este algoritmo ha sido editado, arreglado y mejorado por Alejandro Martínez Menéndez de 2ºBTO A//

//Arreglados númerosos errores e incomodidades relacionados con el indentado//
//Se han incorporado y modificado instrucciones para hacer el juego más comprensible y accesible//

Algoritmo Adivina_Numero
	
	intentos<-10
	
	num_secreto <- azar(100)+1
	
	Escribir "Adivine el numero (de 1 a 100):"
	
	Leer num_ingresado
	//Se ha introducido una validación de datos que impide insertar valores ajenos al juego//
	Mientras num_ingresado<1 o num_ingresado>100 Hacer
		Escribir "El número que usted ha tratado de introducir no cumple los requisitos del juego"
		Escribir ""
		Escribir "Es un requisito fundamental que el número se encuentre entre 1 y 100 estando ambos incluídos"
		Escribir ""
		Escribir "Por Favor, introduzca un nuevo número que se ajuste a lo indicado previamente"
		Leer num_ingresado
	Fin Mientras
	
	Mientras num_secreto<>num_ingresado Y intentos>1 Hacer
		
		
		Si num_secreto>num_ingresado Entonces
			
			
			Escribir "El número que trata de adivinar es más alto"
			
		SiNo 
			
			
			Escribir "El número que trata de adivinar es más bajo"
			
			
		FinSi
		
		
		intentos <- intentos-1
		
		//Corregido error en el registro de intentos//
		Escribir "Le quedan ",intentos," intentos:"
		
		//Se ha introducido una validación de datos que impide insertar valores ajenos al juego//
		Leer num_ingresado
		
		Mientras num_ingresado<1 o num_ingresado>100 Hacer
			Escribir "El número que usted ha tratado de introducir no cumple los requisitos del juego"
			Escribir ""
			Escribir "Es un requisito fundamental que el número se encuentre entre 1 y 100 estando ambos incluídos"
			Escribir ""
			Escribir "Por Favor, introduzca un nuevo número que se ajuste a lo indicado previamente"
			Leer num_ingresado
		Fin Mientras
		
		
	FinMientras
	
	Si num_secreto=num_ingresado Entonces
		
		//Corregido error en el recuento final de intentos//
		Escribir "Exacto! Usted adivino en ",11-intentos," intentos."
		
		
	SiNo
		
		Escribir "Lo sentimos, usted no ha adivinado el número"
		Escribir ""
		Escribir "El numero secreto era: ",num_secreto
		
		
	FinSi
	
FinAlgoritmo