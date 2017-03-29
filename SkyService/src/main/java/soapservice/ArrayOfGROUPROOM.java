
package soapservice;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for ArrayOfGROUPROOM complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ArrayOfGROUPROOM">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="GROUPROOM" type="{http://tempuri.org/}GROUPROOM" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ArrayOfGROUPROOM", propOrder = {
    "grouproom"
})
public class ArrayOfGROUPROOM {

    @XmlElement(name = "GROUPROOM", nillable = true)
    protected List<GROUPROOM> grouproom;

    /**
     * Gets the value of the grouproom property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the grouproom property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getGROUPROOM().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link GROUPROOM }
     * 
     * 
     */
    public List<GROUPROOM> getGROUPROOM() {
        if (grouproom == null) {
            grouproom = new ArrayList<GROUPROOM>();
        }
        return this.grouproom;
    }

}
