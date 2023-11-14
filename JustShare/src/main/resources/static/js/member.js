function login_check()
{

	if ($("input[name=save_id]:checkbox" ).is( ":checked"))
	{
		var userInputId = $("#user_email").val();
		setCookie("userInputId", userInputId, 60); 
		setCookie("setCookieYN", "Y", 60);
	} 
	else 
	{
		deleteCookie("userInputId");
		deleteCookie("setCookieYN");
	}

	if ($("#user_email").val() == '')
	{
		$("#user_email_text").show();
		$("#user_email").addClass("warning");
		$("#user_email").focus();

		return false;
	}

	var emailVal	= $("#user_email").val();
	var check_email	= email_check(emailVal);
	if (check_email == false)
	{
		$("#user_email").focus();
		n = $("#user_email").attr("name");
		$(this).addClass("warning");
		$("#" + n + "_text").show();

		return false;
	}

	if ($("#user_pw").val() == '')
	{
		$("#user_pw_text").show();
		$("#user_pw").addClass("warning");
		$("#user_pw").focus();

		return false;
	}
}

//�뚯썝媛��� 鍮꾨�踰덊샇 泥댄겕
function check_password()
{
	var pw = $("#user_pw").val();
	var num = pw.search(/[0-9]/g);
	var eng = pw.search(/[a-z]/ig);

	if(pw.length < 8 || pw.length > 20)
	{
		$("#user_pw").focus();
		$("#user_pw").addClass("warning");
		$("#user_pw_text").html("鍮꾨�踰덊샇瑜� �ㅼ떆�쒕쾲 �뺥솗�� �낅젰�댁＜�몄슂. (8 ~ 20�� �ъ씠)");
		$("#user_pw_text").show();

		return false;
	}
	else if (pw.search(/\s/) != -1)
	{
		$("#user_pw").focus();
		$("#user_pw").addClass("warning");
		$("#user_pw_text").html("鍮꾨�踰덊샇�� 怨듬갚 �놁씠 �낅젰�댁＜�몄슂.");
		$("#user_pw_text").show();

		return false;
	}
	else if(num < 0 || eng < 0)
	{
		$("#user_pw").focus();
		$("#user_pw").addClass("warning");
		$("#user_pw_text").html("�곷Ц,�レ옄瑜� �쇳빀�섏뿬 �낅젰�댁＜�몄슂.");
		$("#user_pw_text").show();

		return false;
	}
	else 
	{
		return true;
	}
}

//�뚯썝媛��� 泥댄겕
function register_check()
{
	var fail_cnt	= 0;
	$(".required").each(function () {
		v = $(this).val();
		n = $(this).attr("name");

		if (v == '')
		{
			$(this).focus();
			$(this).addClass('warning');
			$("#" + n + "_text").show();
			fail_cnt++;

			return false;
		}
	});

	if (fail_cnt > 0)
		return false;

	var emailVal	= $("#user_email").val();
	var check_email	= email_check(emailVal);
	if (check_email == false)
	{
		$("#user_email").focus();
		n = $("#user_email").attr("name");
		$(this).addClass("warning");
		$("#user_email_text").show();

		return false;
	}

	if ($("#user_pw").val()  != $("#user_pw2").val())
	{
		$("#user_pw2").focus();
		n = $("#user_pw2").attr("name");
		$(this).addClass("warning");
		$("#user_pw2_text").html("鍮꾨�踰덊샇瑜� �ㅼ떆�쒕쾲 �뺥솗�� �낅젰�댁＜�몄슂.");
		$("#user_pw2_text").show();

		return false;
	}

	//鍮꾨�踰덊샇 泥댄겕
	var pass_result	= check_password();
	if (pass_result == false)
		return false;
}

$(function () {

	$(".required").keydown(function () {

		n = $(this).attr("name");
		$(this).removeClass("warning");
		$("#" + n + "_text").hide();
	});

	$(".selectBox").change(function () {

		n = $(this).attr("name");
		$(this).removeClass("warning");
		$("#" + n + "_text").hide();
	});
});

function find_form_check()
{
	fail_cnt	= 0;
	$("#find_form .required").each(function () {
		v = $(this).val();
		n = $(this).attr("name");

		if (v == '')
		{
			$(this).focus();
			$(this).addClass('warning');
			$("#" + n + "_text").show();
			fail_cnt++;

			return false;
		}
	});

	if (fail_cnt > 0)
		return false;

	var emailVal	= $("#find_user_email").val();
	var check_email	= email_check(emailVal);
	if (check_email == false)
	{
		$("#find_user_email").focus();
		$("#find_user_email").addClass("warning");
		$("#find_user_email_text").show();

		return false;
	}

	return true;
}

function modify_form_check()
{
	fail_cnt	= 0;
	$("#modify_form .required").each(function () {
		v = $(this).val();
		n = $(this).attr("name");

		if (v == '')
		{
			$(this).focus();
			$(this).addClass('warning');
			$("#" + n + "_text").show();
			fail_cnt++;

			return false;
		}
	});

	if (fail_cnt > 0)
		return false;

	var emailVal	= $("#user_email").val();
	var check_email	= email_check(emailVal);
	if (check_email == false)
	{
		$("#user_email").focus();
		$("#user_email").addClass("warning");
		$("#user_email_text").show();

		return false;
	}

	user_pw	= $("#user_pw").val();
	if (user_pw)
	{
		pw_result = check_password();
		if (!pw_result)
		{
			$("#user_pw").focus();
			$("#user_pw").addClass("warning");
			$("#user_pw_text").show();

			return false;
		}

		if (user_pw != $("#user_pw2").val())
		{
			$("#user_pw2").focus();
			$("#user_pw2").addClass("warning");
			$("#user_pw2_text").show();

			return false;
		}
	}

	return true;
}