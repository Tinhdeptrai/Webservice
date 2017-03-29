
package soapservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


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
 *         &lt;element name="myNameResult" type="{http://tempuri.org/}InforHotel" minOccurs="0"/>
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
    "myNameResult"
})
@XmlRootElement(name = "myNameResponse")
public class MyNameResponse {

    protected InforHotel myNameResult;

    /**
     * Gets the value of the myNameResult property.
     * 
     * @return
     *     possible object is
     *     {@link InforHotel }
     *     
     */
    public InforHotel getMyNameResult() {
        return myNameResult;
    }

    /**
     * Sets the value of the myNameResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link InforHotel }
     *     
     */
    public void setMyNameResult(InforHotel value) {
        this.myNameResult = value;
    }

}
