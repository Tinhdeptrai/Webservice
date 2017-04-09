package test;

import org.json.JSONObject;

import com.google.gson.Gson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import entity.BookingService;
import entity.RatingId;
import services.ratingService;

public class testlikeUnlike {

	public static void main(String[] args) {

	/*	RatingId ratingId = new RatingId(60, 4);
		ratingService ratingService = new ratingService();
		Boolean bl = ratingService.like(ratingId);
		JSONObject object = new JSONObject();
		object.put("result", String.valueOf(bl));
		System.out.println(object.toString());
		
		System.out.println("complete");*/
		/*
		RatingId ratingId1 = new RatingId(60, 4);
		Boolean bl1 = ratingService.unLike(ratingId1);
		JSONObject object1 = new JSONObject();
		object1.put("result", String.valueOf(bl1));
		System.out.println(object1.toString());*/

		
		try {

			Client client = Client.create();
			WebResource webResource = client.resource("http://localhost:8080/SkyService/rest/rating/like");
			Gson gson = new Gson();



			RatingId ratingId = new RatingId(60, 8);
			String input = gson.toJson(ratingId);
			
			System.out.println(input);

			ClientResponse response = webResource.type("application/json").put(ClientResponse.class, input);

			if (response.getStatus() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());
			}

			System.out.println("Output from Server .... \n");
			String output = response.getEntity(String.class);
			System.out.println(output);

		} catch (Exception e) {

			e.printStackTrace();

		}
		System.out.println(".........................");
		
		try {

			Client client = Client.create();
			WebResource webResource = client.resource("http://localhost:8080/SkyService/rest/rating/unlike");
			Gson gson = new Gson();



			RatingId ratingId = new RatingId(60, 7);
			String input = gson.toJson(ratingId);
			
			System.out.println(input);

			ClientResponse response = webResource.type("application/json").delete(ClientResponse.class, input);

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
