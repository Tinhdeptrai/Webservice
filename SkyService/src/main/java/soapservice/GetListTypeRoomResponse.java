
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
 *         &lt;element name="getListTypeRoomResult" type="{http://tempuri.org/}ArrayOfGROUPROOM" minOccurs="0"/>
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
    "getListTypeRoomResult"
})
@XmlRootElement(name = "getListTypeRoomResponse")
public class GetListTypeRoomResponse {

    protected ArrayOfGROUPROOM getListTypeRoomResult;

    /**
     * Gets the value of the getListTypeRoomResult property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfGROUPROOM }
     *     
     */
    public ArrayOfGROUPROOM getGetListTypeRoomResult() {
        return getListTypeRoomResult;
    }

    /**
     * Sets the value of the getListTypeRoomResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfGROUPROOM }
     *     
     */
    public void setGetListTypeRoomResult(ArrayOfGROUPROOM value) {
        this.getListTypeRoomResult = value;
    }

}
