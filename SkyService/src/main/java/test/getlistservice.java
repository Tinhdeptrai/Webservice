package test;

import services.RoomService;

public class getlistservice {
	public static void main(String[] args) {

		/*
		 * ratingService ratingService = new ratingService(); List<Service>
		 * lstService = new ArrayList<>();
		 * 
		 * lstService = ratingService.getListService(25); for (Service service :
		 * lstService) { System.out.println(service.getName()); }
		 */

		RoomService roomService = new RoomService();

		roomService.saveBookRoom(7, "02-09-2017", "02-11-2017", 78, 1, "abc");

	}
}
