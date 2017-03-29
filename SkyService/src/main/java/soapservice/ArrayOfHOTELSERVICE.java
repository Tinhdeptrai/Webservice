
package soapservice;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ArrayOfHOTELSERVICE complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ArrayOfHOTELSERVICE">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="HOTELSERVICE" type="{http://tempuri.org/}HOTELSERVICE" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ArrayOfHOTELSERVICE", propOrder = {
    "hotelservice"
})
public class ArrayOfHOTELSERVICE {

    @XmlElement(name = "HOTELSERVICE", nillable = true)
    protected List<HOTELSERVICE> hotelservice;

    /**
     * Gets the value of the hotelservice property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the hotelservice property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getHOTELSERVICE().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link HOTELSERVICE }
     * 
     * 
     */
    public List<HOTELSERVICE> getHOTELSERVICE() {
        if (hotelservice == null) {
            hotelservice = new ArrayList<HOTELSERVICE>();
        }
        return this.hotelservice;
    }

}
