package test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import com.google.gson.Gson;

import entity.Users;

public class testRegistry {
	public static void main(String[] args) {
		try {

			URL url = new URL("http://localhost:8080/SkyService/rest/user/registry");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");

			// String input = "{\"qty\":100,\"name\":\"iPad 4\"}";
			Gson gson = new Gson();
			Users user = new Users();
			user.setEmail("nguyenvantinh@gmail.com");
			user.setFullname("nguyen van tinh");
			user.setPassword("123");
			user.setPhone("01654116641");
			user.setPoint(1);
			String input = gson.toJson(user);

			System.out.println(input);

			OutputStream os = conn.getOutputStream();
			os.write(input.getBytes());
			os.flush();

			if (conn.getResponseCode() != HttpURLConnection.HTTP_CREATED) {
				throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}

			conn.disconnect();

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}
	}
}
