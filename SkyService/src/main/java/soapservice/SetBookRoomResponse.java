
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
 *         &lt;element name="setBookRoomResult" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
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
    "setBookRoomResult"
})
@XmlRootElement(name = "setBookRoomResponse")
public class SetBookRoomResponse {

    protected boolean setBookRoomResult;

    /**
     * Gets the value of the setBookRoomResult property.
     * 
     */
    public boolean isSetBookRoomResult() {
        return setBookRoomResult;
    }

    /**
     * Sets the value of the setBookRoomResult property.
     * 
     */
    public void setSetBookRoomResult(boolean value) {
        this.setBookRoomResult = value;
    }

}
