package callservice;

import java.text.ParseException;

import services.Inforservice;

public class Updata {
	public static void main(String[] args) throws ParseException {
		Inforservice inforservice = new Inforservice();
		inforservice.getService();
		inforservice.getPartnerService();
	}
}
