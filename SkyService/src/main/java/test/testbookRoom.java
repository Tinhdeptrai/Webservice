package test;

import com.google.gson.Gson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import entity.BookingService;

public class testbookRoom {
	public static void main(String[] args) {
		try {

			Client client = Client.create();
			WebResource webResource = client.resource("http://localhost:8080/SkyService/rest/infor/25/room/bookroom");
			Gson gson = new Gson();



			BookingService bookingService = new BookingService();
			bookingService.setDatein("01-01-2011");
			bookingService.setDateout("02-02-2012");
			bookingService.setDetail("detail");
			bookingService.setQuanlity(2);
			bookingService.setRoom(2);
			bookingService.setUsers(5);

			String input = gson.toJson(bookingService);
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
