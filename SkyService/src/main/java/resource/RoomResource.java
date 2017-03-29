package resource;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import entity.Room;
import services.RoomService;

@Path("/")
@Produces(MediaType.APPLICATION_JSON)
public class RoomResource {

	private RoomService roomService = new RoomService();

	@GET
	public List<Room> getRoom(@PathParam("InforID") int inforID) {
		return roomService.searchRoom(inforID);
	}
}
