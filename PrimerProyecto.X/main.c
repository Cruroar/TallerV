/*
 * File:   main.c
 * Author: Carlos Buitrago
 * 
 * Created on 25 de febrero de 2016, 08:49 AM
 * Last modiified 29 de febrero de 2016, 8:53 AM
 */


#include <xc.h>

//Declaraci�n de variables
int Dog = 3;
char Cat = 'a';
float Rat = 3.45; //Valor cualquiera
double Mouse = 2.3456;
float Ans;
int i = 0;

void main(void) {

Inicio:
    Ans = Rat + Cat;
    /*for(INICIO,CONDICI�N DE FIN,INCREMENTO)*/
    for (i = 0; i < 10; i++) {
        /*Usar '+=' equivale a un acumulador*/
        Ans += i*Mouse;
        Ans = 2;
        if (Ans > 10) {
            /*'break' rompe el ciclo que se est� corriendo*/
            break;
            /*�ATENCI�N! Para realizar la comparaci�n booleana es necesario usar
               un doble igual '==', de lo contrario, se estar�a asignando el valor.*/
        } else if (Mouse == 3) {
            Mouse = 2;
        } else {
            Mouse = 2.3456;
        }
    }
    /*Usar la forma 'while(CONSTANTE)' fuerza la creaci�n de un ciclo infinito, 
      en tanto que el condicionante siempre ser� verdadero*/
    while (1) {
        Mouse = Rat + 1;
        Rat = 2 / 3;
        /*Nuevamente, puede usarse un 'break' para salir del ciclo*/
        if (Rat < 1) {
            break;
        }
    }
    /*El ciclo de tipo SWITCH-CASE es equivalente a un anidado de If-ElseIf.
     Entra a un caso de ejecuci�n seg�n el calor de la variable elegida y ejecuta
     todos los comandos que le sigan hasta el fin del switch o hasta un break.*/
    switch (i) {
        case 0:
            goto Inicio; //Dirige a la posici�n de la instrucci�n anterior del lable
            break;
        case 1:
            Rat = 0;
            break;
        case 2:

        case 3:

        case 4:
            Rat = 10;
        default: //El caso default es equivalente a un caso "ELSE"
            Rat = 100;
            break;
    }
    return;
}
