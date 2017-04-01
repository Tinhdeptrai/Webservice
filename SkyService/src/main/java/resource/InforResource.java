package resource;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import entity.Information;
import entity.InformationRating;
import entity.Room;
import entity.Serviceinfor;
import services.Inforservice;

@Path("/infor")
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

	/*@Path("/{name}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Information> findName(@PathParam("name") String name) {
		Inforservice inforservice = new Inforservice();
		return inforservice.search("name", name);
	}*/
/*	@Path("/name")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<InformationRating> findName(@QueryParam("name") String name,@QueryParam("partner") int partner) {
		Inforservice inforservice = new Inforservice();
		return inforservice.search("name", name,partner);
	}*/

	@Path("/type")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String search() {
		Inforservice inforservice = new Inforservice();
		return inforservice.listType();
	}
	
/*
	@Path("/listinfor")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Information> lstInfor(@QueryParam("partner") String partner) {
		Inforservice inforservice = new Inforservice();
		int tamp = Integer.parseInt(partner);
		return inforservice.lstInfor(tamp);
	}*/
	
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
	public List<InformationRating> searchName(@QueryParam("partner") String partner,@QueryParam("key") String key) {
		Inforservice inforservice = new Inforservice();
		int tamp = Integer.parseInt(partner);
		return inforservice.searchName(tamp, key);
	}
	@Path("/searchProvince")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<InformationRating> searchProvince(@QueryParam("partner") String partner,@QueryParam("key") String key) {
		Inforservice inforservice = new Inforservice();
		int tamp = Integer.parseInt(partner);
		return inforservice.searchProvinces(tamp, key);
	}
	
	
	
	
	@Path("/price")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Room> searchPrice(@QueryParam("pricestart") String priceStart,
			@QueryParam("priceend") String priceEnd) {
		Inforservice inforservice = new Inforservice();
		int moneyStart = Integer.parseInt(priceStart);
		int moneyEnd = Integer.parseInt(priceEnd);

		return inforservice.searchMoney(moneyStart, moneyEnd);
	}

	@Path("/search")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Information> findDistricAndProvinceAndType(@QueryParam("partner") String partnerTamp,
			@QueryParam("province") String province, @QueryParam("district") String distric,
			@QueryParam("type") String type) {
		Inforservice inforservice = new Inforservice();

		int partner = Integer.parseInt(partnerTamp);
		if (distric == null && type == null) {
			return inforservice.searchProvince(partner, province);
		} else if (type == null&&distric != null && province != null) {
			return inforservice.searchDistrictAndProvince(partner, province, distric);
		} else if (distric == null && type != null && province != null ) {
			return inforservice.searchTypeAndProvince(partner, province, type);
		} else if (province == null && distric == null) {
			return inforservice.searchType(partner, type);
		} else
			return inforservice.searchDistrictAndProvinceAndType(partner, province, distric, type);
	}


	@Path("/{InforID}/room")
	public RoomResource getRoomResource() {
		return new RoomResource();
	}

	@Path("/{InforID}/food")
	public FoodResource getFoodResource() {
		return new FoodResource();
	}


}
