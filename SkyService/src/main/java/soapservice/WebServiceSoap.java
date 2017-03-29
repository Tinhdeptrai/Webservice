
package soapservice;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebService(name = "WebServiceSoap", targetNamespace = "http://tempuri.org/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface WebServiceSoap {


    /**
     * 
     * @param typeRoom
     * @return
     *     returns org.tempuri.ArrayOfGROUPROOM
     */
    @WebMethod(action = "http://tempuri.org/getListTypeRoom")
    @WebResult(name = "getListTypeRoomResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "getListTypeRoom", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetListTypeRoom")
    @ResponseWrapper(localName = "getListTypeRoomResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.GetListTypeRoomResponse")
    public ArrayOfGROUPROOM getListTypeRoom(
        @WebParam(name = "typeRoom", targetNamespace = "http://tempuri.org/")
        int typeRoom);

    /**
     * 
     * @return
     *     returns org.tempuri.ArrayOfHOTELSERVICE
     */
    @WebMethod(action = "http://tempuri.org/lstService")
    @WebResult(name = "lstServiceResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "lstService", targetNamespace = "http://tempuri.org/", className = "org.tempuri.LstService")
    @ResponseWrapper(localName = "lstServiceResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.LstServiceResponse")
    public ArrayOfHOTELSERVICE lstService();

    /**
     * 
     * @param loaiPhong
     * @param dtOut
     * @param dtIn
     * @return
     *     returns int
     */
    @WebMethod(action = "http://tempuri.org/remainingRoomNumber")
    @WebResult(name = "remainingRoomNumberResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "remainingRoomNumber", targetNamespace = "http://tempuri.org/", className = "org.tempuri.RemainingRoomNumber")
    @ResponseWrapper(localName = "remainingRoomNumberResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.RemainingRoomNumberResponse")
    public int remainingRoomNumber(
        @WebParam(name = "loaiPhong", targetNamespace = "http://tempuri.org/")
        int loaiPhong,
        @WebParam(name = "dtIn", targetNamespace = "http://tempuri.org/")
        XMLGregorianCalendar dtIn,
        @WebParam(name = "dtOut", targetNamespace = "http://tempuri.org/")
        XMLGregorianCalendar dtOut);

    /**
     * 
     * @param sdt
     * @param iDcard
     * @param mail
     * @param name
     */
    @WebMethod(action = "http://tempuri.org/setInforCustomer")
    @RequestWrapper(localName = "setInforCustomer", targetNamespace = "http://tempuri.org/", className = "org.tempuri.SetInforCustomer")
    @ResponseWrapper(localName = "setInforCustomerResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.SetInforCustomerResponse")
    public void setInforCustomer(
        @WebParam(name = "name", targetNamespace = "http://tempuri.org/")
        String name,
        @WebParam(name = "mail", targetNamespace = "http://tempuri.org/")
        String mail,
        @WebParam(name = "sdt", targetNamespace = "http://tempuri.org/")
        String sdt,
        @WebParam(name = "IDcard", targetNamespace = "http://tempuri.org/")
        String iDcard);

    /**
     * 
     * @param dtCheckOut
     * @param mail
     * @param dtCheckIn
     * @param loaiPhong
     * @return
     *     returns boolean
     */
    @WebMethod(action = "http://tempuri.org/setBookRoom")
    @WebResult(name = "setBookRoomResult", targetNamespace = "http://tempuri.org/")
    @RequestWrapper(localName = "setBookRoom", targetNamespace = "http://tempuri.org/", className = "org.tempuri.SetBookRoom")
    @ResponseWrapper(localName = "setBookRoomResponse", targetNamespace = "http://tempuri.org/", className = "org.tempuri.SetBookRoomResponse")
    public boolean setBookRoom(
        @WebParam(name = "mail", targetNamespace = "http://tempuri.org/")
        String mail,
        @WebParam(name = "LoaiPhong", targetNamespace = "http://tempuri.org/")
        int loaiPhong,
        @WebParam(name = "dtCheckIn", targetNamespace = "http://tempuri.org/")
        XMLGregorianCalendar dtCheckIn,
        @WebParam(name = "dtCheckOut", targetNamespace = "http://tempuri.org/")
        XMLGregorianCalendar dtCheckOut);

}
