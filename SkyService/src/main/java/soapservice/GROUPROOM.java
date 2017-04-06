
package soapservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for GROUPROOM complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="GROUPROOM">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="ID" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="TYPEROOM" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="PRICE" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="QUANTITY" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="IMAGE" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="BOOKROOMs" type="{http://tempuri.org/}ArrayOfBOOKROOM" minOccurs="0"/>
 *         &lt;element name="ROOMs" type="{http://tempuri.org/}ArrayOfROOM" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GROUPROOM", propOrder = {
    "id",
    "typeroom",
    "price",
    "quantity",
    "image",
    "bookrooMs",
    "rooMs"
})
public class GROUPROOM {

    @XmlElement(name = "ID")
    protected int id;
    @XmlElement(name = "TYPEROOM")
    protected String typeroom;
    @XmlElement(name = "PRICE")
    protected int price;
    @XmlElement(name = "QUANTITY")
    protected int quantity;
    @XmlElement(name = "IMAGE")
    protected String image;
    @XmlElement(name = "BOOKROOMs")
    protected ArrayOfBOOKROOM bookrooMs;
    @XmlElement(name = "ROOMs")
    protected ArrayOfROOM rooMs;

    /**
     * Gets the value of the id property.
     * 
     */
    public int getID() {
        return id;
    }

    /**
     * Sets the value of the id property.
     * 
     */
    public void setID(int value) {
        this.id = value;
    }

    /**
     * Gets the value of the typeroom property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTYPEROOM() {
        return typeroom;
    }

    /**
     * Sets the value of the typeroom property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTYPEROOM(String value) {
        this.typeroom = value;
    }

    /**
     * Gets the value of the price property.
     * 
     */
    public int getPRICE() {
        return price;
    }

    /**
     * Sets the value of the price property.
     * 
     */
    public void setPRICE(int value) {
        this.price = value;
    }

    /**
     * Gets the value of the quantity property.
     * 
     */
    public int getQUANTITY() {
        return quantity;
    }

    /**
     * Sets the value of the quantity property.
     * 
     */
    public void setQUANTITY(int value) {
        this.quantity = value;
    }

    /**
     * Gets the value of the image property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIMAGE() {
        return image;
    }

    /**
     * Sets the value of the image property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIMAGE(String value) {
        this.image = value;
    }

    /**
     * Gets the value of the bookrooMs property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfBOOKROOM }
     *     
     */
    public ArrayOfBOOKROOM getBOOKROOMs() {
        return bookrooMs;
    }

    /**
     * Sets the value of the bookrooMs property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfBOOKROOM }
     *     
     */
    public void setBOOKROOMs(ArrayOfBOOKROOM value) {
        this.bookrooMs = value;
    }

    /**
     * Gets the value of the rooMs property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfROOM }
     *     
     */
    public ArrayOfROOM getROOMs() {
        return rooMs;
    }

    /**
     * Sets the value of the rooMs property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfROOM }
     *     
     */
    public void setROOMs(ArrayOfROOM value) {
        this.rooMs = value;
    }

}
