
package soapservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for InforReRoom complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="InforReRoom">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Typeroom" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Qty" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "InforReRoom", propOrder = {
    "typeroom",
    "qty"
})
public class InforReRoom {

    @XmlElement(name = "Typeroom")
    protected String typeroom;
    @XmlElement(name = "Qty")
    protected int qty;

    /**
     * Gets the value of the typeroom property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTyperoom() {
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
    public void setTyperoom(String value) {
        this.typeroom = value;
    }

    /**
     * Gets the value of the qty property.
     * 
     */
    public int getQty() {
        return qty;
    }

    /**
     * Sets the value of the qty property.
     * 
     */
    public void setQty(int value) {
        this.qty = value;
    }

}
