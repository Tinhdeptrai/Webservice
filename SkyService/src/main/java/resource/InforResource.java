package resource;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.json.JSONArray;
import org.json.JSONObject;

import entity.Information;
import entity.InformationRating;
import entity.Serviceinfor;
import services.Inforservice;

@Path("/infor")
@Consumes("application/json")
public class InforResource {

	/*
	 * @Path("/{ratingRestaurant}")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<Information>
	 * ratingRes(@QueryParam("province") String province) { Inforservice
	 * inforservice = new Inforservice(); System.out.println("so 1"); return
	 * inforservice.searchProvince(province);
	 * 
	 * }
	 */
	/*
	 * @Path("/searchType")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<Information>
	 * search(@Context UriInfo uri) { String param =
	 * uri.getRequestUri().getQuery(); String[] words = param.split("=");
	 * Inforservice inforservice = new Inforservice(); // System.out.println(
	 * "param : " + param); return inforservice.search(words[0], words[1]); }
	 */

	/*
	 * @Path("/{name}")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<Information>
	 * findName(@PathParam("name") String name) { Inforservice inforservice =
	 * new Inforservice(); return inforservice.search("name", name); }
	 */
	/*
	 * @Path("/name")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<InformationRating>
	 * findName(@QueryParam("name") String name,@QueryParam("partner") int
	 * partner) { Inforservice inforservice = new Inforservice(); return
	 * inforservice.search("name", name,partner); }
	 */

	@Path("/type")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String search() {
		Inforservice inforservice = new Inforservice();
		ArrayList<String> strList = inforservice.listType();
		JSONArray array_s = new JSONArray();

		for (String string : strList) {
			JSONObject object1 = new JSONObject();
			object1.put("result", String.valueOf(string));
			array_s.put(object1);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("type", array_s);
		return jsonObject.toString();

	}

	/*
	 * @Path("/listinfor")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<Information>
	 * lstInfor(@QueryParam("partner") String partner) { Inforservice
	 * inforservice = new Inforservice(); int tamp = Integer.parseInt(partner);
	 * return inforservice.lstInfor(tamp); }
	 */

	@Path("/inforroomservice")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Serviceinfor> roomservice(@QueryParam("id") String id) {
		Inforservice inforservice = new Inforservice();
		int temp = Integer.parseInt(id);
		return inforservice.getListInforRoom(temp);
	}

	@Path("/listinfor")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<InformationRating> rating(@QueryParam("partner") String partner) {
		Inforservice inforservice = new Inforservice();
		int tamp = Integer.parseInt(partner);
		return inforservice.lstInfor1(tamp);
	}

	@Path("/searchName")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<InformationRating> searchName(@QueryParam("partner") String partner, @QueryParam("key") String key) {
		Inforservice inforservice = new Inforservice();
		int tamp = Integer.parseInt(partner);
		return inforservice.searchName(tamp, key);
	}

	@Path("/searchProvince")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<InformationRating> searchProvince(@QueryParam("partner") String partner,
			@QueryParam("key") String key) {
		Inforservice inforservice = new Inforservice();
		int tamp = Integer.parseInt(partner);
		return inforservice.searchProvinces(tamp, key);
	}

	/*
	 * @Path("/price")
	 * 
	 * @GET
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public List<InformationRating>
	 * searchPrice(@QueryParam("partner") int partner,@QueryParam("pricestart")
	 * String priceStart,
	 * 
	 * @QueryParam("priceend") String priceEnd) { Inforservice inforservice =
	 * new Inforservice(); int moneyStart = Integer.parseInt(priceStart); int
	 * moneyEnd = Integer.parseInt(priceEnd);
	 * 
	 * return inforservice.searchMoney(partner,moneyStart, moneyEnd); }
	 */
	@Path("/search")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<InformationRating> findDistricAndProvinceAndType(@QueryParam("partner") String partnerTamp,
			@QueryParam("province") String province, @QueryParam("district") String distric,
			@QueryParam("type") String type) {
		Inforservice inforservice = new Inforservice();

		int partner = Integer.parseInt(partnerTamp);
		if (distric == null && type == null) {
			return inforservice.searchProvinces(partner, province);
		} else if (type == null && distric != null && province != null) {
			return inforservice.searchDistrictAndProvince(partner, province, distric);
		} else if (distric == null && type != null && province != null) {
			return inforservice.searchTypeAndProvince(partner, province, type);
		} else if (province == null && distric == null) {
			return inforservice.searchType(partner, type);
		} else
			return inforservice.searchDistrictAndProvinceAndType(partner, province, distric, type);
	}

	@Path("/searchmoney")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<InformationRating> searchMone(@QueryParam("partner") String partner,
			@QueryParam("pricestart") String priceStart, @QueryParam("priceend") String priceEnd) {
		Inforservice inforservice = new Inforservice();
		int partnerInt = Integer.parseInt(partner);
		int priceStartInt = Integer.parseInt(priceStart);
		int priceEndInt = Integer.parseInt(priceEnd);
		return inforservice.searchMoney(partnerInt, priceStartInt, priceEndInt);
	}

	@Path("/{InforID}/room")
	public RoomResource getRoomResource() {
		return new RoomResource();
	}

	@Path("/{InforID}/food")
	public FoodResource getFoodResource() {
		return new FoodResource();
	}

	@Path("/getinforfollowroom")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Information getinforfollowroom(@QueryParam("id") String id) {
		Inforservice inforservice = new Inforservice();
		int tamp = Integer.parseInt(id);
		return inforservice.room(tamp);
	}

}
