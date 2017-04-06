package test;

import java.util.Arrays;
import java.util.LinkedHashMap;

import org.apache.commons.codec.binary.Base64;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import entity.AuthTokenInfo;
import entity.BookingService;

public class testgettoken {
	public static final String REST_SERVICE_URI = "http://localhost:8080/SkyService";

	public static final String AUTH_SERVER_URI = "http://localhost:8080/SkyService/oauth/token";

	public static final String QPM_PASSWORD_GRANT = "?grant_type=password&username=nguyentinh0410@gmail.com&password=123";

	public static final String QPM_ACCESS_TOKEN = "?access_token=";

	private static HttpHeaders getHeaders() {
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		return headers;
	}

	/*
	 * Add HTTP Authorization header, using Basic-Authentication to send
	 * client-credentials.
	 */
	private static HttpHeaders getHeadersWithClientCredentials() {
		String plainClientCredentials = "my-trusted-client:secret";
		String base64ClientCredentials = new String(Base64.encodeBase64(plainClientCredentials.getBytes()));

		HttpHeaders headers = getHeaders();
		headers.add("Authorization", "Basic " + base64ClientCredentials);
		return headers;
	}

	/*
	 * Send a POST request [on /oauth/token] to get an access-token, which will
	 * then be send with each request.
	 */
	@SuppressWarnings({ "unchecked" })
	private static AuthTokenInfo sendTokenRequest() {
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<String> request = new HttpEntity<String>(getHeadersWithClientCredentials());
		ResponseEntity<Object> response = restTemplate.exchange(AUTH_SERVER_URI + QPM_PASSWORD_GRANT, HttpMethod.POST,
				request, Object.class);
		LinkedHashMap<String, Object> map = (LinkedHashMap<String, Object>) response.getBody();
		AuthTokenInfo tokenInfo = null;

		if (map != null) {
			tokenInfo = new AuthTokenInfo();
			tokenInfo.setAccess_token((String) map.get("access_token"));
			tokenInfo.setToken_type((String) map.get("token_type"));
			tokenInfo.setRefresh_token((String) map.get("refresh_token"));
			tokenInfo.setExpires_in((int) map.get("expires_in"));
			tokenInfo.setScope((String) map.get("scope"));
			System.out.println(tokenInfo);
			// System.out.println("access_token ="+map.get("access_token")+",
			// token_type="+map.get("token_type")+",
			// refresh_token="+map.get("refresh_token")
			// +", expires_in="+map.get("expires_in")+",
			// scope="+map.get("scope"));;
		} else {
			System.out.println("No user exist----------");

		}
		return tokenInfo;
	}

	public static void main(String[] args) {
		AuthTokenInfo authTokenInfo = sendTokenRequest();
		System.out.println(authTokenInfo.getAccess_token());

		try {

			Client client = Client.create();
			WebResource webResource = client.resource(
					"http://localhost:8080/SkyService/rest/bookroom" + QPM_ACCESS_TOKEN + authTokenInfo.getAccess_token());
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
