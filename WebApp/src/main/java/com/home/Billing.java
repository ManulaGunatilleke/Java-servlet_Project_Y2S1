/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.home;

/**
 *
 * @author Ajay
 */
public class Billing implements java.io.Serializable
{
    public String nameOnCard;
    public String creditCardType;
    public String creditCardNumber;
    public String creditCardExpiration;

    public Billing()
    {
    }

    public String getNameOnCard() { return nameOnCard; }
    public void setNameOnCard(String aName) { nameOnCard = aName; }

    public String getCreditCardType() { return creditCardType; }
    public void setCreditCardType(String aCreditCardType)
        { creditCardType = aCreditCardType; }

    public String getCreditCardNumber() { return creditCardNumber; }
    public void setCreditCardNumber(String aCreditCardNumber)
        { creditCardNumber = aCreditCardNumber; }

    public String getCreditCardExpiration()
        { return creditCardExpiration; }
    public void setCreditCardExpiration(String aCreditCardExpiration)
        { creditCardExpiration = aCreditCardExpiration; }
}
