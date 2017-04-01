package resource;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import entity.Food;
import services.FoodService;

@Path("/food")
@Produces(MediaType.APPLICATION_JSON)
@Consumes("application/json")
public class FoodResource {

	private FoodService foodService = new FoodService();

	@GET
	public List<Food> getFood(@PathParam("InforID") int inforID) {
		return foodService.searchFood(inforID);
	}
}
