
package soapservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for InforHotel complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="InforHotel">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Hotline" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Name" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Timeopen" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Timeclose" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Type" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Intro" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Number" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Ward" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Stret" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="District" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Province" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Urlpartner" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "InforHotel", propOrder = {
    "hotline",
    "name",
    "timeopen",
    "timeclose",
    "type",
    "intro",
    "number",
    "ward",
    "stret",
    "district",
    "province",
    "urlpartner"
})
public class InforHotel {

    @XmlElement(name = "Hotline")
    protected String hotline;
    @XmlElement(name = "Name")
    protected String name;
    @XmlElement(name = "Timeopen")
    protected String timeopen;
    @XmlElement(name = "Timeclose")
    protected String timeclose;
    @XmlElement(name = "Type")
    protected String type;
    @XmlElement(name = "Intro")
    protected String intro;
    @XmlElement(name = "Number")
    protected String number;
    @XmlElement(name = "Ward")
    protected String ward;
    @XmlElement(name = "Stret")
    protected String stret;
    @XmlElement(name = "District")
    protected String district;
    @XmlElement(name = "Province")
    protected String province;
    @XmlElement(name = "Urlpartner")
    protected String urlpartner;

    /**
     * Gets the value of the hotline property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getHotline() {
        return hotline;
    }

    /**
     * Sets the value of the hotline property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setHotline(String value) {
        this.hotline = value;
    }

    /**
     * Gets the value of the name property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the value of the name property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setName(String value) {
        this.name = value;
    }

    /**
     * Gets the value of the timeopen property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTimeopen() {
        return timeopen;
    }

    /**
     * Sets the value of the timeopen property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTimeopen(String value) {
        this.timeopen = value;
    }

    /**
     * Gets the value of the timeclose property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTimeclose() {
        return timeclose;
    }

    /**
     * Sets the value of the timeclose property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTimeclose(String value) {
        this.timeclose = value;
    }

    /**
     * Gets the value of the type property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getType() {
        return type;
    }

    /**
     * Sets the value of the type property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setType(String value) {
        this.type = value;
    }

    /**
     * Gets the value of the intro property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIntro() {
        return intro;
    }

    /**
     * Sets the value of the intro property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIntro(String value) {
        this.intro = value;
    }

    /**
     * Gets the value of the number property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNumber() {
        return number;
    }

    /**
     * Sets the value of the number property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNumber(String value) {
        this.number = value;
    }

    /**
     * Gets the value of the ward property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getWard() {
        return ward;
    }

    /**
     * Sets the value of the ward property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setWard(String value) {
        this.ward = value;
    }

    /**
     * Gets the value of the stret property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getStret() {
        return stret;
    }

    /**
     * Sets the value of the stret property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setStret(String value) {
        this.stret = value;
    }

    /**
     * Gets the value of the district property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDistrict() {
        return district;
    }

    /**
     * Sets the value of the district property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDistrict(String value) {
        this.district = value;
    }

    /**
     * Gets the value of the province property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getProvince() {
        return province;
    }

    /**
     * Sets the value of the province property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setProvince(String value) {
        this.province = value;
    }

    /**
     * Gets the value of the urlpartner property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUrlpartner() {
        return urlpartner;
    }

    /**
     * Sets the value of the urlpartner property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUrlpartner(String value) {
        this.urlpartner = value;
    }

}
