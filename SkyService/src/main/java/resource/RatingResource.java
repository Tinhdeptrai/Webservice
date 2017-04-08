package resource;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import entity.DetailInfor;
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

}
