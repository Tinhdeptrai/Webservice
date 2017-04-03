package test;

import com.google.gson.Gson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import entity.Users;

public class testRegistry {
	public static void main(String[] args) {
		/* try { */

		/*
		 * URL url = new
		 * URL("http://localhost:8080/SkyService/rest/user/registry");
		 * HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		 * conn.setDoOutput(true); conn.setRequestMethod("POST");
		 * conn.setRequestProperty("Content-Type", "application/json");
		 */

		// String input = "{\"qty\":100,\"name\":\"iPad 4\"}";

		/*
		 * OutputStream os = conn.getOutputStream(); os.write(input.getBytes());
		 * os.flush();
		 * 
		 * if (conn.getResponseCode() != HttpURLConnection.HTTP_CREATED) { throw
		 * new RuntimeException("Failed : HTTP error code : " +
		 * conn.getResponseCode()); }
		 * 
		 * BufferedReader br = new BufferedReader(new
		 * InputStreamReader((conn.getInputStream())));
		 */
		/*
		 * String output; System.out.println("Output from Server .... \n");
		 * while ((output = br.readLine()) != null) {
		 * System.out.println(output); }
		 * 
		 * conn.disconnect();
		 */
		/*
		 * } catch (MalformedURLException e) {
		 * 
		 * e.printStackTrace();
		 * 
		 * } catch (IOException e) {
		 * 
		 * e.printStackTrace();
		 * 
		 * }
		 */

		try {

			Client client = Client.create();	
		
			Users user = new Users();
			user.setEmail("nguyenvantinh123123@gmail.com");
			user.setFullname("nguyen van tinh");
			user.setPassword("123");
			user.setPhone("01654116641");
			user.setPoint(1);
			
			Gson gson = new Gson();
			String input = gson.toJson(user);
			System.out.println(input);
			
			WebResource webResource = client.resource("http://localhost:8080/SkyService/rest/user/registry");
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
