
package soapservice;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ArrayOfInforReRoom complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ArrayOfInforReRoom">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="InforReRoom" type="{http://tempuri.org/}InforReRoom" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ArrayOfInforReRoom", propOrder = {
    "inforReRoom"
})
public class ArrayOfInforReRoom {

    @XmlElement(name = "InforReRoom", nillable = true)
    protected List<InforReRoom> inforReRoom;

    /**
     * Gets the value of the inforReRoom property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the inforReRoom property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getInforReRoom().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link InforReRoom }
     * 
     * 
     */
    public List<InforReRoom> getInforReRoom() {
        if (inforReRoom == null) {
            inforReRoom = new ArrayList<InforReRoom>();
        }
        return this.inforReRoom;
    }

}
