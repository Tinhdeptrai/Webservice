
package soapservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="loaiPhong" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="dtIn" type="{http://www.w3.org/2001/XMLSchema}dateTime"/>
 *         &lt;element name="dtOut" type="{http://www.w3.org/2001/XMLSchema}dateTime"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "loaiPhong",
    "dtIn",
    "dtOut"
})
@XmlRootElement(name = "remainingRoomNumber")
public class RemainingRoomNumber {

    protected int loaiPhong;
    @XmlElement(required = true)
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar dtIn;
    @XmlElement(required = true)
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar dtOut;

    /**
     * Gets the value of the loaiPhong property.
     * 
     */
    public int getLoaiPhong() {
        return loaiPhong;
    }

    /**
     * Sets the value of the loaiPhong property.
     * 
     */
    public void setLoaiPhong(int value) {
        this.loaiPhong = value;
    }

    /**
     * Gets the value of the dtIn property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getDtIn() {
        return dtIn;
    }

    /**
     * Sets the value of the dtIn property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setDtIn(XMLGregorianCalendar value) {
        this.dtIn = value;
    }

    /**
     * Gets the value of the dtOut property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getDtOut() {
        return dtOut;
    }

    /**
     * Sets the value of the dtOut property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setDtOut(XMLGregorianCalendar value) {
        this.dtOut = value;
    }

}
