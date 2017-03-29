
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
 *         &lt;element name="lstServiceResult" type="{http://tempuri.org/}ArrayOfHOTELSERVICE" minOccurs="0"/>
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
    "lstServiceResult"
})
@XmlRootElement(name = "lstServiceResponse")
public class LstServiceResponse {

    protected ArrayOfHOTELSERVICE lstServiceResult;

    /**
     * Gets the value of the lstServiceResult property.
     * 
     * @return
     *     possible object is
     *     {@link ArrayOfHOTELSERVICE }
     *     
     */
    public ArrayOfHOTELSERVICE getLstServiceResult() {
        return lstServiceResult;
    }

    /**
     * Sets the value of the lstServiceResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link ArrayOfHOTELSERVICE }
     *     
     */
    public void setLstServiceResult(ArrayOfHOTELSERVICE value) {
        this.lstServiceResult = value;
    }

}
