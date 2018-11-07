/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modele;

/**
 *
 * @author Spard
 */
class Discount_Code {
    
    private String code;
    private float taux;
    
    
    public Discount_Code(String c, float t) {        
        this.code = c;
        this.taux = t;        
    }   
    
    public String getCode(){    
        return this.code;
    }
    
    public float getTaux(){
        return this.taux;
    }
    
    
}
