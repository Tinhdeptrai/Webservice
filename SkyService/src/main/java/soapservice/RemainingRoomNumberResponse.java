
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
 *         &lt;element name="remainingRoomNumberResult" type="{http://www.w3.org/2001/XMLSchema}int"/>
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
    "remainingRoomNumberResult"
})
@XmlRootElement(name = "remainingRoomNumberResponse")
public class RemainingRoomNumberResponse {

    protected int remainingRoomNumberResult;

    /**
     * Gets the value of the remainingRoomNumberResult property.
     * 
     */
    public int getRemainingRoomNumberResult() {
        return remainingRoomNumberResult;
    }

    /**
     * Sets the value of the remainingRoomNumberResult property.
     * 
     */
    public void setRemainingRoomNumberResult(int value) {
        this.remainingRoomNumberResult = value;
    }

}
