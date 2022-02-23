/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package kz.iitu.baurcalculator;

/**
 *
 * @author LT.Mark
 */

public class Calculator {
    
    private float valor1;
    private float valor2;
    private String operacion;

    public Calculator(float valor1, float valor2, String operation) {
        this.valor1 = valor1;
        this.valor2 = valor2;
        this.operacion = operacion;
    }

    public float getValor1() {
        return valor1;
    }

    public void setValor1(float valor1) {
        this.valor1 = valor1;
    }

    public float getValor2() {
        return valor2;
    }

    public void setValor2(float valor2) {
        this.valor2 = valor2;
    }
    
    public String getOperacion() {
        return operacion;
    }
    
    public void setOperacion(String operacion) {
        this.operacion = operacion;
    }
    
}
