package Modele;

/**
 *
 * @author Spard
 */
public class Discount_Code {
    
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
