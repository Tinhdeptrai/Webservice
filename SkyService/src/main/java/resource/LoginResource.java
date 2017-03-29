package resource;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import entity.Users;
import services.LoginService;

@Path("/login")
public class LoginResource {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Users loginService(@QueryParam("email") String email, @QueryParam("password") String password) {
		System.out.println(email + " pass " + password);
		LoginService loginService = new LoginService();
		return loginService.login(email, password);
	}

}
