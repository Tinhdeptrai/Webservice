
package soapservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for CUSTOMER complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="CUSTOMER">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="ID" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="NAME" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="MAIL" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="PHONENUMBER" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="IDENTITYCARD" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="BOOKROOMs" type="{http://tempuri.org/}ArrayOfBOOKROOM" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "CUSTOMER", propOrder = {
    "id",
    "name",
    "mail",
    "phonenumber",
    "identitycard",
    "bookrooMs"
})
public class CUSTOMER {

    @XmlElement(name = "ID")
    protected int id;
    @XmlElement(name = "NAME")
    protected String name;
    @XmlElement(name = "MAIL")
    protected String mail;
    @XmlElement(name = "PHONENUMBER")
    protected String phonenumber;
    @XmlElement(name = "IDENTITYCARD")
    protected String identitycard;
    @XmlElement(name = "BOOKROOMs")
    protected ArrayOfBOOKROOM bookrooMs;

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
     * Gets the value of the name property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNAME() {
        return name;
    }

    /**
     * Sets the value of the name property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNAME(String value) {
        this.name = value;
    }

    /**
     * Gets the value of the mail property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMAIL() {
        return mail;
    }

    /**
     * Sets the value of the mail property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMAIL(String value) {
        this.mail = value;
    }

    /**
     * Gets the value of the phonenumber property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getPHONENUMBER() {
        return phonenumber;
    }

    /**
     * Sets the value of the phonenumber property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setPHONENUMBER(String value) {
        this.phonenumber = value;
    }

    /**
     * Gets the value of the identitycard property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIDENTITYCARD() {
        return identitycard;
    }

    /**
     * Sets the value of the identitycard property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIDENTITYCARD(String value) {
        this.identitycard = value;
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

}
