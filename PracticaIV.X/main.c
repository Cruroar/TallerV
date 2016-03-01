/*
 * Archivo: main.c
 * Autor:   Carlos Andr�s Buitrago
 * ID:      1.152.453.501
 *
 * PR�CTICA IV: Fundamentos de programaci�n en C para microcontroladores
 * [Taller V - Electr�nica digital y microcontroladores]
 * 
 * �ltima modificaci�n el 29 de febrero de 2016, 11:30 PM
 */


#include <xc.h>     // Compilador XC8
#include <math.h>   // Directorio de funciones matem�ticas adicionales

// Definici�n de variables
float A, B, C, Det, X1, X2, Root; // Operadores para Ejercicio 2
int i, V; // Operadores para Ejercicio 3
int MaquinaEstado, X; // Operadores para Ejercicio 4

void main(void) {
Ejercicio2: // SOLUCI�N DE UNA ECUACI�N GENERAL DE SEGUNDO GRADO
    // Inicialmente, se definen los coeficientes de la forma Ax^2 + Bx + C = 0
    A = 3; // Coeficiente cuadr�tico
    B = 9; // Coeficiente lineal
    C = -84; // T�rmino independiente
    // Antes de operar, es necesario verificar la validez de la ecuaci�n
    if (A == 0) {
        return; // Si A vale 0, NO se trata de una ecuaci�n cuadr�tica...
    } else {
        // Se verifica que las soluciones pertenezcan al dominio de los reales
        Det = B * B - 4 * A * C;
        if (Det < 0) {
            /*Un determinante negativo indica que las soluciones de la
             ecuaci�n pertenecen al dominio de los complejos. En tanto que
             el programa no debe encargase de estas situaciones, se rompe el
             ciclo cuando este caso aparezca*/
            return;
        } else {
            /*Si se llega a este punto, se ha comprobado que la ecuaci�n
             corresponde a una formulaci�n cuadr�tica con soluciones en el
             dominio de los reales. Por lo tanto, las ra�ces pueden calcularse
             mediante la expresi�n Xi = -B +- sqrt(B^2 - 4AC) / 2A*/
            Root = sqrt(Det);
            X1 = (-B + Root) / (2 * A); // Primera soluci�n de la ecuaci�n
            X2 = (-B - Root) / (2 * A); // Segunda soluci�n de la ecuaci�n
        }
    }
Ejercicio3: // DISMINUCI�N DE UNA VARIABLE EN TRES UNIDADES
    // En primer lugar, se asigna el valor inicial de la variable a operar
    V = 160; // Esta es la variable que ser� disminuida progresivamente
    i = 0; // Contador de verificaci�n para limitar las iteraciones posibles
    // A continuaci�n, se establece el ciclo de trabajo
    while (V >= 3) { // Si V tiene un valor menor a 3, no debe operarse sobre �l
        V -= 3; // Resta acumulativa de 3 unidades sobre el valor actual de V
        i++; // Aumento del contador de verificaci�n en cada iteraci�n
        if (i == 50) { // Condici�n de rompimiento en el l�mite de iteraciones
            break;
        }
    }
Ejercicio4: // M�QUINA DE ESTADO DEL PROBLEMA 05 DE LA PR�CTICA II
    // En primer lugar, se establece un valor inicial para las variables
    MaquinaEstado = 0b000; // Variable de estado
    X = 0b0000; // Variable indicadora de sentido de cambio
    while (1) { // Ciclo de repetici�n infinita para emular la m�quina de estado
        switch (X) { // Analiza el estado de X para determinar el tipo de cambio
                /*Por cada iteraci�n debe ejecutarse una �NICA l�nea de instrucci�n,
                 por lo tanto, cada uno de los casos debe estar restringido por un
                 juego condicional que limite su acci�n y un punto de ruptura*/
            case 0: // Cambios que pueden ocurrir si X vale 0
                if (MaquinaEstado = 0b000) {
                } else if (MaquinaEstado = 0b001) {
                    MaquinaEstado = 0b000;
                } else if (MaquinaEstado = 0b101) {
                    MaquinaEstado = 0b111;
                } else if (MaquinaEstado = 0b111) {
                    MaquinaEstado = 0b001;
                }
                break; // Ruptura para evitar ingreso al caso 1
            case 1: // Cambios que pueden ocurrir si X vale 1
                if (MaquinaEstado = 0b000) {
                    MaquinaEstado = 0b111;
                } else if (MaquinaEstado = 0b001) {
                    MaquinaEstado = 0b101;
                } else if (MaquinaEstado = 0b101) {
                } else if (MaquinaEstado = 0b111) {
                }
                break; // Ruptura para evitar ingreso al caso 2
        }
    }
    return;
}
