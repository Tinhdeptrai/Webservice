
package soapservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for BOOKROOM complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="BOOKROOM">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="ID" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="CUSTOMER" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="ROOM" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="CHECKIN" type="{http://www.w3.org/2001/XMLSchema}dateTime"/>
 *         &lt;element name="CHECKOUT" type="{http://www.w3.org/2001/XMLSchema}dateTime"/>
 *         &lt;element name="QUANTITY" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="CUSTOMER1" type="{http://tempuri.org/}CUSTOMER" minOccurs="0"/>
 *         &lt;element name="GROUPROOM" type="{http://tempuri.org/}GROUPROOM" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "BOOKROOM", propOrder = {
    "id",
    "customer",
    "room",
    "checkin",
    "checkout",
    "quantity",
    "customer1",
    "grouproom"
})
public class BOOKROOM {

    @XmlElement(name = "ID")
    protected int id;
    @XmlElement(name = "CUSTOMER")
    protected int customer;
    @XmlElement(name = "ROOM")
    protected int room;
    @XmlElement(name = "CHECKIN", required = true)
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar checkin;
    @XmlElement(name = "CHECKOUT", required = true, nillable = true)
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar checkout;
    @XmlElement(name = "QUANTITY")
    protected int quantity;
    @XmlElement(name = "CUSTOMER1")
    protected CUSTOMER customer1;
    @XmlElement(name = "GROUPROOM")
    protected GROUPROOM grouproom;

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
     * Gets the value of the customer property.
     * 
     */
    public int getCUSTOMER() {
        return customer;
    }

    /**
     * Sets the value of the customer property.
     * 
     */
    public void setCUSTOMER(int value) {
        this.customer = value;
    }

    /**
     * Gets the value of the room property.
     * 
     */
    public int getROOM() {
        return room;
    }

    /**
     * Sets the value of the room property.
     * 
     */
    public void setROOM(int value) {
        this.room = value;
    }

    /**
     * Gets the value of the checkin property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getCHECKIN() {
        return checkin;
    }

    /**
     * Sets the value of the checkin property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setCHECKIN(XMLGregorianCalendar value) {
        this.checkin = value;
    }

    /**
     * Gets the value of the checkout property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getCHECKOUT() {
        return checkout;
    }

    /**
     * Sets the value of the checkout property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setCHECKOUT(XMLGregorianCalendar value) {
        this.checkout = value;
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
     * Gets the value of the customer1 property.
     * 
     * @return
     *     possible object is
     *     {@link CUSTOMER }
     *     
     */
    public CUSTOMER getCUSTOMER1() {
        return customer1;
    }

    /**
     * Sets the value of the customer1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link CUSTOMER }
     *     
     */
    public void setCUSTOMER1(CUSTOMER value) {
        this.customer1 = value;
    }

    /**
     * Gets the value of the grouproom property.
     * 
     * @return
     *     possible object is
     *     {@link GROUPROOM }
     *     
     */
    public GROUPROOM getGROUPROOM() {
        return grouproom;
    }

    /**
     * Sets the value of the grouproom property.
     * 
     * @param value
     *     allowed object is
     *     {@link GROUPROOM }
     *     
     */
    public void setGROUPROOM(GROUPROOM value) {
        this.grouproom = value;
    }

}
