package test;

import org.json.JSONObject;

import entity.RatingId;
import services.ratingService;

public class testlikeUnlike {

	public static void main(String[] args) {

		RatingId ratingId = new RatingId(60, 4);
		ratingService ratingService = new ratingService();
		Boolean bl = ratingService.like(ratingId);
		JSONObject object = new JSONObject();
		object.put("result", String.valueOf(bl));
		System.out.println(object.toString());
		
		System.out.println("complete");
		/*
		RatingId ratingId1 = new RatingId(60, 4);
		Boolean bl1 = ratingService.unLike(ratingId1);
		JSONObject object1 = new JSONObject();
		object1.put("result", String.valueOf(bl1));
		System.out.println(object1.toString());*/

	}

}
