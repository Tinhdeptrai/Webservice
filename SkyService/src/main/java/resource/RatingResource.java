package resource;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.json.JSONObject;

import entity.DetailInfor;
import entity.RatingId;
import services.ratingService;

@Path("/rating")
@Produces(MediaType.APPLICATION_JSON)
@Consumes("application/json")
public class RatingResource {

	@GET
	@Path("/{idinfor}")
	public List<DetailInfor> checkRating(@PathParam("idinfor") String infor, @QueryParam("user") String user,
			@QueryParam("partner") String partner) {
		ratingService ratingService = new ratingService();

		List<DetailInfor> list = new ArrayList<>();
		int tamp = Integer.parseInt(partner);
		int tamp1 = Integer.parseInt(user);
		int tamp2 = Integer.parseInt(infor);
		list = ratingService.detailInfor(tamp, tamp2, tamp1);
		return list;
	}

	@PUT
	@Path("/like")
	public String like(RatingId ratingId) {
		ratingService ratingService = new ratingService();
		Boolean bl = ratingService.like(ratingId);
		JSONObject object = new JSONObject();
		object.put("result", String.valueOf(bl));
		return object.toString();
	}

	@DELETE
	@Path("/unlike")
	public String unLike(RatingId ratingId) {
		ratingService ratingService = new ratingService();
		Boolean bl = ratingService.unLike(ratingId);
		JSONObject object = new JSONObject();
		object.put("result", String.valueOf(bl));
		return object.toString();
	}

}
