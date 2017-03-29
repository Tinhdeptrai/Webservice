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

			</tr>
			<tr>
				<td>/SkyService/rest/infor/{name restaurant}</td>
				<td>none</td>
				<td>Tìm theo tên của nhà hàng</td>

			</tr>

			<tr>
				<td>/SkyService/rest/infor/rating</td>
				<td>none</td>
				<td>trả về danh sách bảng xếp hạng nhà hàng</td>
			</tr>

			<tr>
				<td>/SkyService/rest/infor/rating</td>
				<td>none</td>
				<td>trả về danh sách bảng xếp hạng nhà hàng</td>
			</tr>

			<tr>
				<td>/SkyService/rest/infor/pricestart=1&priceend=10</td>
				<td>pricestart, pticeend</td>
				<td>trả về danh các phòng có giá theo điều kiện</td>
			</tr>
			<tr>
				<td>/SkyService/rest/infor/search</td>
				<td>partner</td>
				<td>trả về danh sách các khách sạn(1) hay nhà hàng(2)</td>
			</tr>
			<tr>
				<td>/SkyService/rest/infor/search</td>
				<td>province</td>
				<td>trả về danh sách các khách sạn(1) hay nhà hàng(2) theo tỉnh</td>
			</tr>
			<tr>
				<td>/SkyService/rest/infor/search</td>
				<td>district</td>
				<td>trả về danh sách các khách sạn(1) hay nhà hàng(2) theo
					huyện</td>
			</tr>

			<tr>
				<td>/SkyService/rest/price</td>
				<td>type</td>
				<td>trả về danh sách các khách sạn(1) hay nhà hàng(2) theo thể
					loại</td>
			</tr>

			<tr>
				<td>/SkyService/rest/{InforID}/room</td>
				<td>none</td>
				<td>trả về danh sách các phòng của khách sạn/td>
			</tr>
			<tr>
				<td>/SkyService/rest/login</td>
				<td>email,password</td>
				<td>trả về thông tin người dùng/td>
			</tr>


			<tr>
				<td>3</td>
				<td>Sugar</td>
				<td>Good</td>

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


