
package soapservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ROOM complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ROOM">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="ID" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="ROOMNAME" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="GROUPROOM" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="GROUPROOM1" type="{http://tempuri.org/}GROUPROOM" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ROOM", propOrder = {
    "id",
    "roomname",
    "grouproom",
    "grouproom1"
})
public class ROOM {

    @XmlElement(name = "ID")
    protected int id;
    @XmlElement(name = "ROOMNAME")
    protected String roomname;
    @XmlElement(name = "GROUPROOM", required = true, type = Integer.class, nillable = true)
    protected Integer grouproom;
    @XmlElement(name = "GROUPROOM1")
    protected GROUPROOM grouproom1;

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
     * Gets the value of the roomname property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getROOMNAME() {
        return roomname;
    }

    /**
     * Sets the value of the roomname property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setROOMNAME(String value) {
        this.roomname = value;
    }

    /**
     * Gets the value of the grouproom property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getGROUPROOM() {
        return grouproom;
    }

    /**
     * Sets the value of the grouproom property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setGROUPROOM(Integer value) {
        this.grouproom = value;
    }

    /**
     * Gets the value of the grouproom1 property.
     * 
     * @return
     *     possible object is
     *     {@link GROUPROOM }
     *     
     */
    public GROUPROOM getGROUPROOM1() {
        return grouproom1;
    }

    /**
     * Sets the value of the grouproom1 property.
     * 
     * @param value
     *     allowed object is
     *     {@link GROUPROOM }
     *     
     */
    public void setGROUPROOM1(GROUPROOM value) {
        this.grouproom1 = value;
    }

}
