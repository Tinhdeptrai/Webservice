package test;

import com.google.gson.Gson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import entity.Users;

public class testbookRoom {
public static void main(String[] args) {
	try {

		Client client = Client.create();

		WebResource webResource = client.resource("http://localhost:8080/SkyService/rest/user/registry");
		Gson gson = new Gson();
		Users user = new Users();
		user.setEmail("nguyenvantinh123123@gmail.com");
		user.setFullname("nguyen van tinh");
		user.setPassword("123");
		user.setPhone("01654116641");
		user.setPoint(1);
		String input = gson.toJson(user);
		System.out.println(input);

		ClientResponse response = webResource.type("application/json").post(ClientResponse.class, input);

		if (response.getStatus() != 200) {
			throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());
		}

		System.out.println("Output from Server .... \n");
		String output = response.getEntity(String.class);
		System.out.println(output);

	} catch (Exception e) {

		e.printStackTrace();

	}

}
}
