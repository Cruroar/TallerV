/*
 * Archivo: main.c
 * Autor:   Carlos Andrés Buitrago
 * ID:      1.152.453.501
 *
 * PRÁCTICA IV: Fundamentos de programación en C para microcontroladores
 * [Taller V - Electrónica digital y microcontroladores]
 * 
 * Última modificación el 29 de febrero de 2016, 11:30 PM
 */


#include <xc.h>     // Compilador XC8
#include <math.h>   // Directorio de funciones matemáticas adicionales

// Definición de variables
float A, B, C, Det, X1, X2, Root; // Operadores para Ejercicio 2
int i, V; // Operadores para Ejercicio 3
int MaquinaEstado, X; // Operadores para Ejercicio 4

void main(void) {
Ejercicio2: // SOLUCIÓN DE UNA ECUACIÓN GENERAL DE SEGUNDO GRADO
    // Inicialmente, se definen los coeficientes de la forma Ax^2 + Bx + C = 0
    A = 3; // Coeficiente cuadrático
    B = 9; // Coeficiente lineal
    C = -84; // Término independiente
    // Antes de operar, es necesario verificar la validez de la ecuación
    if (A == 0) {
        return; // Si A vale 0, NO se trata de una ecuación cuadrática...
    } else {
        // Se verifica que las soluciones pertenezcan al dominio de los reales
        Det = B * B - 4 * A * C;
        if (Det < 0) {
            /*Un determinante negativo indica que las soluciones de la
             ecuación pertenecen al dominio de los complejos. En tanto que
             el programa no debe encargase de estas situaciones, se rompe el
             ciclo cuando este caso aparezca*/
            return;
        } else {
            /*Si se llega a este punto, se ha comprobado que la ecuación
             corresponde a una formulación cuadrática con soluciones en el
             dominio de los reales. Por lo tanto, las raíces pueden calcularse
             mediante la expresión Xi = -B +- sqrt(B^2 - 4AC) / 2A*/
            Root = sqrt(Det);
            X1 = (-B + Root) / (2 * A); // Primera solución de la ecuación
            X2 = (-B - Root) / (2 * A); // Segunda solución de la ecuación
        }
    }
Ejercicio3: // DISMINUCIÓN DE UNA VARIABLE EN TRES UNIDADES
    // En primer lugar, se asigna el valor inicial de la variable a operar
    V = 160; // Esta es la variable que será disminuida progresivamente
    i = 0; // Contador de verificación para limitar las iteraciones posibles
    // A continuación, se establece el ciclo de trabajo
    while (V >= 3) { // Si V tiene un valor menor a 3, no debe operarse sobre él
        V -= 3; // Resta acumulativa de 3 unidades sobre el valor actual de V
        i++; // Aumento del contador de verificación en cada iteración
        if (i == 50) { // Condición de rompimiento en el límite de iteraciones
            break;
        }
    }
Ejercicio4: // MÁQUINA DE ESTADO DEL PROBLEMA 05 DE LA PRÁCTICA II
    // En primer lugar, se establece un valor inicial para las variables
    MaquinaEstado = 0b000; // Variable de estado
    X = 0b0000; // Variable indicadora de sentido de cambio
    while (1) { // Ciclo de repetición infinita para emular la máquina de estado
        switch (X) { // Analiza el estado de X para determinar el tipo de cambio
                /*Por cada iteración debe ejecutarse una ÚNICA línea de instrucción,
                 por lo tanto, cada uno de los casos debe estar restringido por un
                 juego condicional que limite su acción y un punto de ruptura*/
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
