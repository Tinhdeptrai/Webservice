package resource;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import org.json.JSONObject;

import entity.Users;
import services.LoginService;

@Path("/user")
@Consumes("application/json")
public class LoginResource {

	@GET
	@Path("/login")
	@Produces(MediaType.APPLICATION_JSON)
	public Users loginService(@QueryParam("email") String email, @QueryParam("password") String password) {
		// System.out.println(email + " pass " + password);
		LoginService loginService = new LoginService();
		return loginService.login(email, password);
	}

	/*
	 * @GET
	 * 
	 * @Path("registry")
	 * 
	 * @Produces(MediaType.APPLICATION_JSON) public String
	 * registryService(@QueryParam("email") String
	 * email, @QueryParam("password") String password,
	 * 
	 * @QueryParam("phone") String phone, @QueryParam("name") String name) { //
	 * System.out.println(email + " pass " + password); LoginService
	 * loginService = new LoginService(); Boolean bl =
	 * loginService.Registry(email, password, name, phone); JSONObject object =
	 * new JSONObject(); object.put("result", String.valueOf(bl)); return
	 * object.toString(); }
	 */

	@GET
	@Path("checkemail")
	@Produces(MediaType.APPLICATION_JSON)
	public String checkmail(@QueryParam("email") String email) {
		// System.out.println(email + " pass " + password);
		LoginService loginService = new LoginService();

		Boolean bl = loginService.checkEmail(email);
		JSONObject object = new JSONObject();
		object.put("result", String.valueOf(bl));
		return object.toString();
	}

	@POST
	@Path("registry")
	public String registry(Users user) {
		LoginService loginService = new LoginService();

		Boolean bl = loginService.addUser(user);
		JSONObject object = new JSONObject();
		object.put("result", String.valueOf(bl));
		return object.toString();
	}

	@PUT
	@Path("/updatauser")
	public String checkmail(Users user) {
		LoginService loginService = new LoginService();
		Boolean bl = loginService.updataUser(user);
		JSONObject object = new JSONObject();
		object.put("result", String.valueOf(bl));
		return object.toString();
	}

}
