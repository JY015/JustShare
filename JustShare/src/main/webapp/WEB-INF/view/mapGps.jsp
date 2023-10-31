<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<div id="map" style="width:100%; height:350px;"></div> 
<script>

	let latitude, longitude;

	navigator.geolocation.getCurrentPosition(function(position) {
	    latitude = position.coords.latitude;
	    longitude = position.coords.longitude;
	    
	   $.ajax({
            url: "./mapGps",
            type: "post",
            dataType:"json",
            data:{
                latitude: latitude,
                longitude:longitude
            },

            success: function(data) {
                console.log(data.result);
            },
            error: function(error) {
                alert(error);
            }
        });
    }, (err) => {
       alert("에러"+err);
    });
</script>
</body>
</html>