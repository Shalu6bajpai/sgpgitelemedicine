/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectpackage;

import java.util.Random;

/**
 *
 * @author Rajan Nishu Krishna
 */
public class CaptchaGenerator {
    
    public String getCode()
    {
        String capcode="";
        capcode+=(char)randInt(65, 90);
        capcode+=(char)randInt(65, 90);
        capcode+=(char)randInt(48, 57);  //AscII of 0 to 9
        capcode+=(char)randInt(48,57);
        capcode+=(char)randInt(97, 122);
        capcode+=(char)randInt(97, 122);
        return capcode;
    }
    public int randInt(int min, int max)
    {
        int randNumber;
        Random r=new Random();
        randNumber=r.nextInt((max-min)+1)+min;
        return randNumber;
    }
    
    
}
