
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
 *         &lt;element name="getRoomResult" type="{http://tempuri.org/}ArrayOfInforReRoom" minOccurs="0"/>
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
    "getRoomResult"
})
@XmlRootElement(name = "getRoomResponse")
public class GetRoomResponse {

    protected ArrayOfInforReRoom getRoomResult;

    /**
     * Gets the value of the getRoomResult property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfInforReRoom }
     *     
     */
    public ArrayOfInforReRoom getGetRoomResult() {
        return getRoomResult;
    }

    /**
     * Sets the value of the getRoomResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfInforReRoom }
     *     
     */
    public void setGetRoomResult(ArrayOfInforReRoom value) {
        this.getRoomResult = value;
    }

}
