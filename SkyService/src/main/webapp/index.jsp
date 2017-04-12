<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SKYSERVICE REST API</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

	<div>
		<h3>SKYSERVICE REST API</h3>

	</div>

	<div class="container">
		<table class="table">
			<tr>
				<th>End Point</th>
				<th>Param</th>
				<th>Detail</th>
				<th>Method</th>
			</tr>

			<tr>
				<td>/SkyService/rest/infor/searchName</td>
				<td>partner, key</td>
				<td>trả về danh sách các khách sạn(1) hay nhà hàng(2) theo tên</td>
				<td>GET</td>
			</tr>
			<tr>
				<td>/SkyService/rest/infor/listinfor</td>
				<td>partner</td>
				<td>trả về danh sách nhà hàng or khách sạn</td>
				<td>GET</td>
			</tr>
			<tr>
				<td>/SkyService/rest/infor/type</td>
				<td>none</td>
				<td>Danh sách các thể loại của nhà hàng</td>
				<td>GET</td>
			</tr>


			<tr>
				<td>/SkyService/rest/infor/searchmoney</td>
				<td>pricestart, pticeend</td>
				<td>trả về danh các phòng có giá theo điều kiện</td>
				<td>GET</td>
			</tr>

			<tr>
				<td>/SkyService/rest/infor/search</td>
				<td>district</td>
				<td>trả về danh sách các khách sạn(1) hay nhà hàng(2) theo
					huyện</td>
				<td>GET</td>
			</tr>

			<tr>
				<td>/SkyService/rest/infor/search</td>
				<td>type</td>
				<td>trả về danh sách các khách sạn(1) hay nhà hàng(2) theo thể
					loại</td>
				<td>GET</td>
			</tr>

			<tr>
				<td>/SkyService/rest/infor/search</td>
				<td>province</td>
				<td>trả về danh sách các khách sạn(1) hay nhà hàng(2) theo tỉnh</td>
				<td>GET</td>
			</tr>

			<tr>
				<td>/SkyService/rest/{InforID}/room</td>
				<td>none</td>
				<td>trả về danh sách các phòng của khách sạn</td>
				<td>GET</td>
			</tr>

			<tr>
				<td>/SkyService/rest/user/registry</td>
				<td>Users (object)</td>
				<td>Đăng ký thành viên</td>
				<td>POST</td>
			</tr>
			<tr>
				<td>/SkyService/rest/bookroom/{idinfor}</td>
				<td>BookroomService (object)</td>
				<td>Đặt phòng</td>
				<td>POST</td>
			</tr>

			<tr>
				<td>/SkyService/rest/{InforID}/food</td>
				<td>none</td>
				<td>trả về danh sách các món ăn của nhà hàng</td>
				<td>GET</td>
			<tr>
				<td>/SkyService/rest/user/login</td>
				<td>email,password</td>
				<td>trả về thông tin người dùng</td>
			</tr>
			<tr>
				<td>/SkyService/rest/user/registry</td>
				<td>Users(object)</td>
				<td>trả về kết quả đăng ký</td>
				<td>POST</td>
			</tr>
			<tr>
				<td>/SkyService/rest/user/checkemail</td>
				<td>email</td>
				<td>trả về kết quả kiểm tra email</td>
				<td>GET</td>
			</tr>
			<tr>
				<td>/SkyService/rest/user/updatauser</td>
				<td>Users(object)</td>
				<td>trả về kết quả đăng ký</td>
				<td>PUT</td>
			</tr>
			<tr>
				<td>/SkyService/rest/rating/{idinfor}</td>
				<td>user,partner</td>
				<td>trả về kết quả danh sách đã kiểm tra thích với user</td>
				<td>GET</td>
			</tr>
			<tr>
				<td>/SkyService/rest/rating/like</td>
				<td>RatingId (object)</td>
				<td>trả về kết quả like thành công hay không</td>
				<td>PUT</td>
			</tr>
			<tr>
				<td>/SkyService/rest/rating/unlike</td>
				<td>RatingId (object)</td>
				<td>trả về kết quả unlike thành công hay không</td>
				<td>DELETE</td>
			</tr>
			<tr>
				<td>/SkyService/rest/infor/{idinfor}/room/checkroom</td>
				<td>datein,dateout</td>
				<td>trả về kết quả có thể đặt phòng hay không</td>
				<td>GET</td>
			</tr>
			<tr>
				<td>/SkyService/oauth/token?grant_type=password&username=?&password=?</td>
				<td>username, password</td>
				<td>get Token</td>
				<td>POST</td>
			</tr>
				<tr>
				<td>?access_token=</td>
				<td>username, password</td>
				<td>Access Token</td>
				<td></td>
			</tr>
		
			</tr>
		</table>
		<tr>* Đối với API /SkyService/rest/infor/search có thể truyền
			nhiều param trong cùng một lúc


		</tr>
	</div>
	<br />
	<br />

</body>
</html>


