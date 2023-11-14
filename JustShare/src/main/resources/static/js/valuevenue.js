var schedule_color				= new Object;	// �ㅼ�以� �됱긽 媛앹껜
schedule_color.reserved 	   	= "#20D060"; 	// 李몄뿬�� �쇱젙
schedule_color.precise         	= "#003CE0"; 	// �뺥솗�� �쇱젙
schedule_color.favorite        	= "#FA4D56"; 	// 李쒗븳 �쇱젙
schedule_color.similar         	= "#9CAEEB"; 	// �좎궗�� �쇱젙
schedule_color.neutral         	= "#E0E0E0"; 	// �대룄���� �꾨땶 �쇱젙

//李쒗븯湲� 湲곕뒫 : 李쒖씠 �섏뼱 �덈뒗 寃쎌슦�� �먮룞�쇰줈 痍⑥냼, �덈맂 寃쎌슦�� �먮룞�쇰줈 李쒗븯湲� �깅줉

document.addEventListener('click', function (e) {
	if(e.target.classList.contains('btn_like') || e.target.classList.contains('btn_like-16') || e.target.classList.contains('likeBtn')){
		var id		= e.target.dataset.id;
		var gubun	= e.target.dataset.gubun;

		$.ajax({
			type: "POST",
			url: '/member/_handle/',
			data: {
				act: 'set_favorite',
				id: id,
				gubun: gubun
			},
			success: function(result) {
				if (result == 9)
				{
					alert('濡쒓렇�� �� �댁슜�� 媛��ν빀�덈떎.');
				}
				else
				{
					if (result == 'Y')
					{
						if(e.target.classList.contains('btn_like'))
							e.target.classList.add("btn_dislike");
						else if(e.target.classList.contains('btn_like-16'))
							e.target.classList.add("btn_dislike-16");
						else if(e.target.classList.contains('likeBtn'))
							e.target.classList.add("dislikeBtn");

						if(typeof fullcalendar != 'undefined'){
							var eventObj = fullcalendar.getEventById(e.target.dataset.fcId);
							if(eventObj != null) {
								var currentPage = window.location.href;
								if(currentPage.includes('schedule/my_schedule')){
									eventObj.setProp('backgroundColor', schedule_color.favorite);
									eventObj.setExtendedProp('isFavorite', 'Y')
								}else{
									if (eventObj.backgroundColor != schedule_color.reserved) {
										eventObj.setProp('backgroundColor', schedule_color.favorite);
										eventObj.setExtendedProp('isFavorite', 'Y')
									}
								}
							}
						}
					}
					else if (result == 'N')
					{
						if(e.target.classList.contains('btn_like'))
							e.target.classList.remove("btn_dislike");
						else if(e.target.classList.contains('btn_like-16'))
							e.target.classList.remove("btn_dislike-16");
						else if(e.target.classList.contains('likeBtn'))
							e.target.classList.remove("dislikeBtn");

						if(typeof fullcalendar != 'undefined'){
							var eventObj = fullcalendar.getEventById(e.target.dataset.fcId);

							if(eventObj != null){
								eventObj.setProp('backgroundColor', eventObj.extendedProps.originalColor);
								eventObj.setExtendedProp('isFavorite', 'N')
							}
						}
					}
				}
			}
		});
	}
});

// $(".btn_like").click(function () {
// 	console.log('李�')
// 	var id		= $(this).data('id');
// 	var gubun	= $(this).data('gubun');
//
// 	var obj	= $(this);
// 	$.ajax({
// 		type: "POST",
// 		url: '/member/_handle/',
// 		data: {
// 			act: 'set_favorite',
// 			id: id,
// 			gubun: gubun
// 		},
// 		success: function(result) {
// 			if (result == 9)
// 			{
// 				alert('濡쒓렇�� �� �댁슜�� 媛��ν빀�덈떎.');
// 			}
// 			else
// 			{
// 				if (result == 'Y')
// 					obj.addClass("btn_dislike");
// 				else if (result == 'N')
// 					obj.removeClass("btn_dislike");
// 			}
// 		}
// 	});
// });

function execDaumPostcode(zip_id, addr1_id, addr2_id) 
{
	new daum.Postcode({
		oncomplete: function(data) {
			// �앹뾽�먯꽌 寃��됯껐怨� ��ぉ�� �대┃�덉쓣�� �ㅽ뻾�� 肄붾뱶瑜� �묒꽦�섎뒗 遺�遺�.

			// 媛� 二쇱냼�� �몄텧 洹쒖튃�� �곕씪 二쇱냼瑜� 議고빀�쒕떎.
			// �대젮�ㅻ뒗 蹂��섍� 媛믪씠 �녿뒗 寃쎌슦�� 怨듬갚('')媛믪쓣 媛�吏�誘�濡�, �대� 李멸퀬�섏뿬 遺꾧린 �쒕떎.
			var addr = ''; // 二쇱냼 蹂���
			var extraAddr = ''; // 李멸퀬��ぉ 蹂���

			//�ъ슜�먭� �좏깮�� 二쇱냼 ���낆뿉 �곕씪 �대떦 二쇱냼 媛믪쓣 媛��몄삩��.
			if (data.userSelectedType === 'R') { // �ъ슜�먭� �꾨줈紐� 二쇱냼瑜� �좏깮�덉쓣 寃쎌슦
				addr = data.roadAddress;
			} else { // �ъ슜�먭� 吏�踰� 二쇱냼瑜� �좏깮�덉쓣 寃쎌슦(J)
				addr = data.jibunAddress;
			}

			// �ъ슜�먭� �좏깮�� 二쇱냼媛� �꾨줈紐� ���낆씪�� 李멸퀬��ぉ�� 議고빀�쒕떎.
			if(data.userSelectedType === 'R'){
				// 踰뺤젙�숇챸�� �덉쓣 寃쎌슦 異붽��쒕떎. (踰뺤젙由щ뒗 �쒖쇅)
				// 踰뺤젙�숈쓽 寃쎌슦 留덉�留� 臾몄옄媛� "��/濡�/媛�"濡� �앸궃��.
				if(data.bname !== '' && /[��|濡�|媛�]$/g.test(data.bname)){
					extraAddr += data.bname;
				}
				// 嫄대Ъ紐낆씠 �덇퀬, 怨듬룞二쇳깮�� 寃쎌슦 異붽��쒕떎.
				if(data.buildingName !== '' && data.apartment === 'Y'){
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// �쒖떆�� 李멸퀬��ぉ�� �덉쓣 寃쎌슦, 愿꾪샇源뚯� 異붽��� 理쒖쥌 臾몄옄�댁쓣 留뚮뱺��.
				if(extraAddr !== ''){
					extraAddr = ' (' + extraAddr + ')';
				}
				// 議고빀�� 李멸퀬��ぉ�� �대떦 �꾨뱶�� �ｋ뒗��.
				//document.getElementById("sample6_extraAddress").value = extraAddr;

			} else {
				//document.getElementById("sample6_extraAddress").value = '';
			}

			// �고렪踰덊샇�� 二쇱냼 �뺣낫瑜� �대떦 �꾨뱶�� �ｋ뒗��.
			document.getElementById(zip_id).value = data.zonecode;
			document.getElementById(addr1_id).value = addr;

			$('#'+addr1_id).removeClass('warning');
			$('#'+addr1_id+'_text').hide();

			// 而ㅼ꽌瑜� �곸꽭二쇱냼 �꾨뱶濡� �대룞�쒕떎.
			document.getElementById(addr2_id).focus();
		}
	}).open();
}

//�レ옄�� 肄ㅻ쭏 李띻린
function comma(str)
{
	str = String(str);
	var minus = str.substring(0, 1);

	str = str.replace(/[^\d]+/g, '');
	str = str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');

	if(minus == "-")
		str = "-"+str;

	return str;
}

function email_check(emailVal)
{
	var regExp = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;

	//�대찓�쇱씠 �뺥솗�좊븣
	if (emailVal.match(regExp) != null) 
		return true;
	else
		return false;
}

function phone_check(phoneVal)
{
	var regExp = /^[0-9]*$/;
	if (phoneVal.match(regExp) != null)
		return true;
	else
		return false;

}

/*
document.addEventListener('click', function (e) {
	if (e.target.classList.contains('btn_like')) {
		if(typeof fullcalendar != 'undefined'){
			var eventObj = fullcalendar.getEventById(e.target.dataset.fcId);
		}else{
			var eventObj = null;
		}

		if (e.target.classList.contains('btn_dislike')) {
			console.log('李� 痍⑥냼')
			var result = deleteFavorite(e.target.dataset.realId, e.target.dataset.gubun);

			if(result == 1){
				if(eventObj != null){
					eventObj.setProp('backgroundColor', eventObj.extendedProps.originalColor);
					eventObj.setExtendedProp('isFavorite', 'N')
				}

				document.querySelectorAll('button[data-real-id="'+e.target.dataset.realId+'"][data-gubun="'+e.target.dataset.gubun+'"]').forEach(function(target){
					target.classList.remove('btn_dislike');
					console.log(target)
				})
			}else{
				alert('李� 痍⑥냼 怨쇱젙�먯꽌 �먮윭媛� 諛쒖깮�섏��듬땲��.');
			}
		} else {
			console.log('李� �깅줉')
			var result = addFavorite(e.target.dataset.realId, e.target.dataset.gubun, e.target.dataset.title, e.target.dataset.memo);

			if(result == 1){
				if(eventObj != null) {
					if (eventObj.backgroundColor != schedule_color.reserved) {
						eventObj.setProp('backgroundColor', schedule_color.favorite);
						eventObj.setExtendedProp('isFavorite', 'Y')
					}
				}
				document.querySelectorAll('button[data-real-id="'+e.target.dataset.realId+'"][data-gubun="'+e.target.dataset.gubun+'"]').forEach(function(target){
					target.classList.add('btn_dislike');
					console.log(target)
				})
			}else{
				alert('李� �깅줉 怨쇱젙�먯꽌 �먮윭媛� 諛쒖깮�섏��듬땲��.');
			}
		}

	}
});

*/

//�대�吏� 誘몃━蹂댁뿬二쇨린
/* 
  * �대�吏� 誘몃━蹂댁뿬二쇨린
  * inputObject : input type file�� id 媛�
  * view_id : 蹂댁뿬以� 怨녹쓽 id 媛�
*/
function readUploadImage(inputObject, viewObj) 
{
	if ( window.File && window.FileReader ) 
	{
		/*
		�낅젰�� �뚯씪�� 1媛� �댁긽 �덈뒗吏� �뺤씤~
		*/
		if ( inputObject.files && inputObject.files[0]) 
		{
			/* �대�吏� �뚯씪�몄��� 泥댄겕�� 二쇰㈃ 醫뗭�~ */
			if ( !(/image/i).test(inputObject.files[0].type ) )
			{
				alert("�대�吏� �뚯씪�� �좏깮�� 二쇱꽭��!");
				return false;
			}

			/* FileReader 瑜� 以�鍮� �쒕떎. */
			var reader = new FileReader();
			reader.onload = function (e) {
				/* reader媛� �� �쎌쑝硫� imagePreview�� 肉뚮젮 二쇰㈃ ��~  */
				$(viewObj).attr('src', e.target.result);
			}
			/* input file�� �덈뒗 �뚯씪 �섎굹瑜� �쎌뼱�⑤떎. */
			reader.readAsDataURL(inputObject.files[0]);
		}
	} 
	else 
	{
		console.log("�대�吏� 誘몃━蹂닿린 誘몄���");
	}
}

//荑좏궎媛� Set
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" +
    exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}

//荑좏궎媛� Delete
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

//荑좏궎媛� 媛��몄삤湲�
function getCookie(cookie_name) {
    var x, y;
    var val = document.cookie.split(';');

    for (var i = 0; i < val.length; i++) {
        x = val[i].substr(0, val[i].indexOf('='));
        y = val[i].substr(val[i].indexOf('=') + 1);
        x = x.replace(/^\s+|\s+$/g, ''); // �욊낵 �ㅼ쓽 怨듬갚 �쒓굅�섍린

        if (x == cookie_name) {
          return unescape(y); // unescape濡� �붿퐫�� �� 媛� 由ы꽩
        }
    }
}

// 異쒖꽍 泥댄겕
// view_date �덉떆: 2022-02-22
function workCheckIn(schedule_id, brand_id, view_date)
{
	var checkin_result = false;
	$.ajax({
		type: "POST",
		url: '/schedule/_handle/',
		data: {
			act: 'work_check_in',
			scheduleId: schedule_id,
			brandId: brand_id,
			viewDate: view_date
		},
		async: false,
		error: function(request, status, error) {},
		success: function(result) {
			if(result) {
				checkin_result = true;
			}
		}
	});
	return checkin_result;
}

// �ㅼ썙�� �쇱껜��
function search_check(only_keyword = false)
{
	var global_keyword 			= $('#global_keyword').val().trim();

	var local_space_category 	= $('#local_space_category').val() ?? '';
	var brand_category 			= $('#brand_category').val() ?? '';
	var date_start 				= $('#date_start').val() ?? '';
	var area 					= $('#area').val() ?? '';
	var space_category			= $('#space_category').val() ?? '';
	var space_category_flag		= space_category == 'wholeCategory' || space_category == '' ? true : false;
	var duration				= $('#duration').val() ?? '';
	var duration_flag			= duration == '' ? true : false;

	// console.log(global_keyword);
	// console.log(local_space_category);
	// console.log(brand_category);
	// console.log(date_start);
	// console.log(area);
	// console.log(space_category_flag);
	// console.log(duration_flag);

	if(local_space_category == '' && brand_category == '' && area == '' && date_start == '' && global_keyword == '' && space_category_flag && duration_flag){
		if(only_keyword)
			alert('寃��됱뼱瑜� �낅젰�댁＜�몄슂.');
		else
			alert('�섎굹�댁긽�� 寃��� 議곌굔�� �낅젰 �먮뒗 �좏깮�댁＜�몄슂.');
		return false;
	}
}

// �ㅼ썙�� �쇱껜�� (紐⑤컮��)
function search_check_m()
{
	var global_keyword 			= $('#global_keyword_m').val().trim();

	var local_space_category 	= $('#local_space_category').val() ?? '';
	var brand_category 			= $('#brand_category').val() ?? '';
	var date_start 				= $('#date_start_m').val() ?? '';
	var area 					= $('#area').val() ?? '';
	var space_category			= $('#space_category_m').val() ?? '';
	var space_category_flag		= space_category == 'wholeCategory' ? true : false;
	var duration				= $('#duration_m').val() ?? '';
	var duration_flag			= duration == '' ? true : false;

	if(local_space_category == '' && brand_category == '' && area == '' && date_start == '' && global_keyword == '' && space_category_flag && duration_flag){
		alert('�섎굹�댁긽�� 寃��� 議곌굔�� �낅젰 �먮뒗 �좏깮�댁＜�몄슂.');
		return false;
	}
}

// �щ젰(�곗씠�명뵾而�) �명똿�� �쇱젙 �뺣낫 遺덈윭�ㅺ린
function get_calendar_info(year, month){
	var event_array = [];

	$.ajax({
		type: "POST",
		url: '/schedule/_handle/',
		dataType: 'json',
		data: {
			act: 'get_calendar_info',
			year: year,
			month: month
		},
		async: false,
		success: function(result) {
			result.forEach(function(day){
				var date_json = {};

				var date = new Date(year + '/' + month + '/' + day);

				var d = date.getDate();
				var m = date.getMonth();
				var y = date.getFullYear();

				date_json.startDate = new Date(y, m, d);
				date_json.endDate = date_json.startDate;
				event_array.push(date_json);
			});

		}
	});

	return event_array;
}

// �щ젰(�곗씠�명뵾而�) �명똿�� �쇱젙 �뺣낫 遺덈윭�ㅺ린
function get_m_search_schedule_list(top = false, pop = false){
	$.ajax({
		type: "POST",
		url: '/schedule/_handle/',
		dataType: 'json',
		data: {
			act: 'get_m_search_schedule_list',
			top: top,
			pop: pop
		},
		async: false,
		success: function(data) {
			$("#m_search_schedule_list").html(data);
			$("#m_search_schedule_list .owl-carousel").owlCarousel({
				loop: false,
				margin: 16,
				nav: false,
				dots: false,
				// autoplay: true,
				autoplayTimeout: 3000,
				autoHeight: false,
				// touchDrag: false,
				// responsiveClass: true,

				responsive: {
					0: {
						items: 1,
						stagePadding: 20,
					},
					720: {
						items: 3,
						nav: false,
						stagePadding: 0,
					},
					1000: {
						items: 4,
						mouseDrag: false
					},
				},
			});
		}
	});
}


//�뚮옯�� 諛쏆븘�ㅺ린 : 湲곌린�뺣낫
function reg_push_token(platform, token)
{
	$.ajax({
		type: "POST",
		url: '/member/_handle/',
		dataType : 'html',
		data: {
			act: 'set_device_id',
			device_id: token,
			platform: platform
		},
		success: function(data) {
		}
	});
}

//�좏뵆 濡쒓렇�몄슜
function b64DecodeUnicode(str) 
{
	return decodeURIComponent(
		atob(str).replace(/(.)/g, function (m, p) {
			var code = p.charCodeAt(0).toString(16).toUpperCase();
			if (code.length < 2) {
				code = "0" + code;
			}
			return "%" + code;
		})
	);
}

//�좏뵆 濡쒓렇�몄슜
function base64_url_decode(str) 
{
	var output = str.replace(/-/g, "+").replace(/_/g, "/");
	switch (output.length % 4) {
	case 0:
		break;
	case 2:
		output += "==";
		break;
	case 3:
		output += "=";
		break;
	default:
		throw "Illegal base64url string!";
	}

	try {
		return b64DecodeUnicode(output);
	} catch (err) {
		return atob(output);
	}
}

// 紐⑤컮�� 寃��됱갹 耳쒓린
function toggleSearch(){
	window.location.href = '#';
	const search_btn = document.querySelector('li.input--search.m_search_input');
	search_btn.click();


}

// �レ옄留� �낅젰諛쏅뒗 �⑥닔 : onkeydown
function onlyNumber() 
{ 
    if (( event.keyCode >= 48 && event.keyCode <= 57 )
        || ( event.keyCode >= 96 && event.keyCode <= 105 )
        || ( event.keyCode == 8 ) //諛� �ㅽ럹�댁뒪
        || ( event.keyCode == 9 ) //��궎
        || ( event.keyCode == 46 )
        || ( event.keyCode == 13 )
    ) {
        event.returnValue=true;

    } else {
        alert("�レ옄留� �낅젰�댁＜�몄슂! ");
        event.returnValue=false;
        event.preventDefault();
    }
}