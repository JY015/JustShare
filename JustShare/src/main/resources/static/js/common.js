/*醫뗭븘��*/
function btnLike(item) {
  item.classList.toggle("btn_dislike");
}

var $calendar;

function simpleCalendar() {
  if ($("div").hasClass(".calendar-container")) {
    let container = $("#container").simpleCalendar({
      fixedStartDay: 0, // begin weeks by sunday
      disableEmptyDetails: true,
      events: [
        // generate new event after tomorrow for one hour
        {
          startDate: new Date(new Date().setHours(new Date().getHours() + 24)).toDateString(),
          endDate: new Date(new Date().setHours(new Date().getHours() + 25)).toISOString(),
          summary: "Visit of the Eiffel Tower",
        },
        // generate new event for yesterday at noon
        {
          startDate: new Date(new Date().setHours(new Date().getHours() - new Date().getHours() - 12, 0)).toISOString(),
          endDate: new Date(new Date().setHours(new Date().getHours() - new Date().getHours() - 11)).getTime(),
          summary: "Restaurant",
        },
        // generate new event for the last two days
        {
          startDate: new Date(new Date().setHours(new Date().getHours() - 48)).toISOString(),
          endDate: new Date(new Date().setHours(new Date().getHours() - 24)).getTime(),
          summary: "Visit of the Louvre",
        },
      ],
    });
    $calendar = container.data("plugin_simpleCalendar");
  }
}
simpleCalendar();

//移댄뀒怨좊━ �앹뾽 紐⑤컮�쇱뿉�쒕쭔 carousel
function categoryPop() {
  let checkWidth = $(window).width();
  let categoryPop = $(".card__type2.card__carousel");

  if (matchMedia("screen and (max-width: 720px)").matches) {
    categoryPop.addClass("owl-carousel");
    categoryPop.owlCarousel({
      items: 1,
      slideSpeed: 500,
      animateOut: "fadeOut",
      margin: 16,
      autoplay: true,
      autoplaySpeed: 8000,
      autoplayTimeout: 8000,
      dots: false,
      loop: false,
      stagePadding: 20,
    });
  } else if (matchMedia("screen and (min-width: 721px)").matches) {
    if (typeof categoryPop.data("owl.carousel") != "undefined") {
      categoryPop.data("owl.carousel").destroy();
    }
    categoryPop.removeClass("owl-carousel");
  }
}
categoryPop();
$(window).resize(categoryPop);

//space detail, category 紐⑤컮�쇱뿉�쒕쭔 carousel
function spacePop() {
  let spacePop = $(".lightbox_type");
  if (matchMedia("screen and (max-width: 720px)").matches) {
	$('.no_img').remove(); //紐⑤컮�쇰줈 蹂대뒗寃쎌슦 罹먮윭�먯뿉�� '�대�吏� 以�鍮꾩쨷' �쒖쇅�쒗궎湲�
	var card_img_cnt = $('.img_cnt').length;

	spacePop.addClass("owl-carousel");	
	if(card_img_cnt > 1){
		spacePop.owlCarousel({
		  items: 1,
		  slideSpeed: 500,
		  animateOut: "fadeOut",
		  margin: 16,
		  autoplay: true,
		  autoplaySpeed: 3500,
		  autoplayTimeout: 3500,
		  dots: false,
		  loop: true,
		});
	}else{
		spacePop.owlCarousel({
		  items: 1,
		  slideSpeed: 500,
		  animateOut: "fadeOut",
		  margin: 16,
		  autoplay: false,
		  dots: false,
		  loop: false,
		});
	}	
	
  } else if (matchMedia("screen and (min-width: 721px)").matches) {
	//console.log("desktop");
    if (typeof spacePop.data("owl.carousel") != "undefined") {
      spacePop.data("owl.carousel").destroy();
	  //諛깊솕�먰뙘��, 怨듦컙���� �곸꽭�섏씠吏��먯꽌 pc�먯꽌 紐⑤컮��,pc踰꾩쟾�쇰줈 蹂대뒗寃쎌슦 '�대�吏�以�鍮꾩쨷' �ㅼ떆 留뚮뱾�댁＜湲�	  
	  var img_cnt = $('.img_cnt').length;
	  var img_html = '';
	  if(img_cnt > 0 && img_cnt < 5){
		for(var i=img_cnt; i<5; i++){
		  img_html += '<div class="no_img card__item">';
		  img_html += '<img src="/images/no_image.png" title="�대�吏� 以�鍮꾩쨷�낅땲��."/>';
		  img_html += '</div>';
		}
	  }

	  if(img_html != ''){
		   $('.img_cnt:last-child').after(img_html);
	  }
    }
    spacePop.removeClass("owl-carousel");
  }
}
spacePop();
$(window).resize(spacePop);

//mypopup application
function applicationPop() {
  let checkWidth = $(window).width();
  let categoryPop = $(".applicationList.card__carousel");

  if (matchMedia("screen and (max-width: 720px)").matches) {
    categoryPop.addClass("owl-carousel");
    categoryPop.owlCarousel({
      items: 1,
      slideSpeed: 500,
      animateOut: "fadeOut",
      margin: 16,
      autoplay: false,
      autoplaySpeed: 8000,
      autoplayTimeout: 8000,
      dots: false,
      loop: false,
      stagePadding: 65,
    });
  } else if (matchMedia("screen and (min-width: 721px)").matches) {
    if (typeof categoryPop.data("owl.carousel") != "undefined") {
      categoryPop.data("owl.carousel").destroy();
    }
    categoryPop.removeClass("owl-carousel");
  }
}
applicationPop();
$(window).resize(applicationPop);

//storypage mobile carousel
function storypageCard() {
  let checkWidth = $(window).width();
  let categoryPop = $(".storypage.card__carousel");

  if (matchMedia("screen and (max-width: 720px)").matches) {
    categoryPop.addClass("owl-carousel");
    categoryPop.owlCarousel({
      items: 1,
      slideSpeed: 500,
      animateOut: "fadeOut",
      margin: 16,
      autoplay: false,
      autoplaySpeed: 8000,
      autoplayTimeout: 8000,
      dots: false,
      loop: false,
      stagePadding: 65,
    });
  } else if (matchMedia("screen and (min-width: 721px)").matches) {
    if (typeof categoryPop.data("owl.carousel") != "undefined") {
      categoryPop.data("owl.carousel").destroy();
    }
    categoryPop.removeClass("owl-carousel");
  }
}
storypageCard();
$(window).resize(storypageCard);


// //mobile scroll nav
function mobileNav() {
  let lastScrollTop = 0;
  let delta = 5;
  let fixBox = document.querySelector(".bottomNav");
  let fixBoxHeight = fixBox.offsetHeight;
  let didScroll;
  let padding = 70;
  //�ㅽ겕濡� �대깽��
  window.onscroll = function (e) {
    didScroll = true;
  };

  //0.25珥덈쭏�� �ㅽ겕濡� �щ� 泥댄겕
  setInterval(function () {
    if (didScroll) {
      hasScrolled();
      didScroll = false;
    }
  }, 250);

  function hasScrolled() {
    let nowScrollTop = window.scrollY;
    if (Math.abs(lastScrollTop - nowScrollTop) <= delta) {
      return;
    }
    if (nowScrollTop > lastScrollTop && nowScrollTop > fixBoxHeight) {
      //Scroll down - �섎떒 怨좎젙硫붾돱 �④�
      fixBox.classList.remove("show");
    } else {
      if (nowScrollTop + window.innerHeight < document.body.offsetHeight) {
        //Scroll up - �섎떒 怨좎젙硫붾돱 �몄텧
        fixBox.classList.add("show");
      }
    }

    //諛붾떏�� 媛먯��섎㈃ �섎떒 怨좎젙硫붾돱 �몄텧
    if (nowScrollTop + window.innerHeight >= document.body.offsetHeight) {
      fixBox.classList.add("show");
    }

    lastScrollTop = nowScrollTop;
  }
  //泥� �붾㈃ 濡쒕뵫�� �섎떒 怨좎젙硫붾돱 蹂댁엫
  function loadFirstScreen() {
    if (lastScrollTop == 0) {
      fixBox.classList.add("show");
    }
  }
  loadFirstScreen();
}
if ($("nav").hasClass("bottomNav")) {
  mobileNav();
}

/***************************************************** */
// header fixed
let headerTag = document.getElementById("header");

if ($(headerTag).hasClass("header_bg") === true) {
  function headerFixed() {
    if (matchMedia("screen and (max-width: 720px)").matches) {
      let header = document.querySelector(".header_bg");
      $(".sign-in").addClass("btn--outlined-white");
      $(".sign-up").addClass("btn--white-primary");

      header.classList.add("nav-bar-top");

      $(window).on("scroll", function () {
        if ($(window).scrollTop() > 56) {
          $(".header_bg .header__wrap").addClass("bg");
          btnSeries1();
          $(".alarm-group").addClass("fixed");
          $(".message-group").addClass("fixed");
        } else {
          $(".header_bg .header__wrap").removeClass("bg");
          btnSeries2();
          $(".alarm-group").removeClass("fixed");
          $(".message-group").removeClass("fixed");
        }
      });
    } else if (matchMedia("screen and (max-width: 1023px)").matches) {
      // console.log("tablet");
      btnSeries1();
    } else if (matchMedia("screen and (min-width: 1024px)").matches) {
      // console.log("desktop");
      btnSeries1();
    }

    function btnSeries1() {
      $(".sign-in").removeClass("btn--outlined-white");
      $(".sign-up").removeClass("btn--white-primary");
      $(".sign-in").addClass("btn--outlined-primary");
      $(".sign-up").addClass("btn--primary");
    }

    function btnSeries2() {
      $(".sign-in").removeClass("btn--outlined-primary");
      $(".sign-up").removeClass("btn--primary");
      $(".sign-in").addClass("btn--outlined-white");
      $(".sign-up").addClass("btn--white-primary");
    }
  }

  headerFixed();
  $(window).resize(headerFixed);
}

//�쒕툕�섏씠吏� 紐⑤컮�쇱뿉�쒕룄 header fixed �쒗궗��
// else {
//   $(window).scroll(function () {
//     if ($(window).scrollTop() >= 56) {
//       $("header").addClass("fixed");
//     } else {
//       $("header").removeClass("fixed");
//     }
//   });
// }

/*single selectBox*/
$(function () {
  $(".selectBox").each(function () {
    var $this = $(this),
      numberOfOptions = $(this).children("option").length;

    $this.addClass("select-hidden");
    $this.wrap('<div class="selectBox"></div>');
    $this.after('<div class="select-styled"></div>');

    var $styledSelect = $this.next("div.select-styled");
    $styledSelect.text($this.children("option:selected").eq(0).text());

    var $list = $("<ul ></ul>", {
      class: "select-options",
    }).insertAfter($styledSelect);

    for (var i = 0; i < numberOfOptions; i++) {
      $("<li ></li>", {
        text: $this.children("option").eq(i).text(),
        rel: $this.children("option").eq(i).val(),
      }).appendTo($list);
    }

    var $listItems = $list.children("li");

    $styledSelect.click(function (e) {
      e.stopPropagation();
      $("div.select-styled.active").each(function () {
        $(this).removeClass("active").next("ul.select-options").hide();
      });
      $(this).toggleClass("active").next("ul.select-options").toggle();
    });

    $listItems.click(function (e) {
      // e.stopPropagation();
      $styledSelect.text($(this).text()).removeClass("active");
      $this.val($(this).attr("rel")).change();
      $list.hide();
      //console.log($this.val());
      if ($this.attr("id") == "sort") {
        $("#hidden_sort").val($(this).attr("rel"));
        var search_form = document.getElementById('search-form');
        if(search_form != null)
          search_form.submit();

        // fullcalendar_reload = true;
        // fullcalendar.gotoDate(next_month_string);
      }
    });

    $(document).click(function () {
      $styledSelect.removeClass("active");
      $list.hide();
    });
  });
});

/*fullcalendar */
if ($("#calendar").hasClass("monthlyCal") == true) {
  document.addEventListener("DOMContentLoaded", function () {
    let colorSchema = {
      colorCalendar1: "#20d060",
      colorCalendar2: "rgba(0, 60, 224,0.4)",
      colorCalendar3: "#fa4d56",
      colorCalendar4: "#003ce0",
    };

    var calendarEl = document.getElementById("calendar");
    var calendar = new FullCalendar.Calendar(calendarEl, {
      locale: "ko",
      headerToolbar: {
        left: "",
        center: "",
        right: "prev,title,next",
      },
      footerToolbar: {
        left: "",
        center: "custom1, custom2, custom3",
        right: "",
      },
      customButtons: {
        custom1: {
          text: "�� 湲곗〈 �앹뾽 �쇱젙",
          click: function () {
            alert("clicked custom button 1!");
          },
        },
        custom2: {
          text: "李멸� �좎껌 以� �앹뾽",
          click: function () {
            alert("clicked custom button 2!");
          },
        },
        custom3: {
          text: "�� 愿��� �앹뾽 �쇱젙",
          click: function () {
            alert("clicked custom button 3!");
          },
        },
      },
      // initialDate: "2022-01-12",
      // navLinks: true,
      // editable: true,
      dayMaxEvents: true,
      events: [
        {
          title: "�뚯뒪��",
          start: "2022-02-10",
          end: "2022-02-25",
          backgroundColor: colorSchema.colorCalendar1,
        },

        {
          groupId: 999,
          title: "Repeating Event",
          start: "2022-02-25",
          backgroundColor: colorSchema.colorCalendar2,
          textColor: colorSchema.colorCalendar4,
          color: "#ffffff",
        },
        {
          groupId: 999,
          title: "Repeating Event",
          start: "2022-02-25T16:00:00",
          end: "2022-02-26",
        },
        {
          title: "Conference",
          start: "2022-02-13",
          end: "2022-02-25T10:00:00",
          backgroundColor: colorSchema.colorCalendar3,
        },
        {
          title: "Meeting",
          start: "2022-02-12T10:30:00",
          end: "2022-02-25T12:30:00",
          // color: "#FF0000",
          // textColor: "#FFFF00",
        },
        {
          title: "Lunch",
          start: "2022-02-25T12:00:00",
          end: "2022-02-25T12:30:00",

          color: "#FF0000",
          textColor: "#FFFF00",
        },
        {
          title: "Meeting",
          // start: "2022-01-12T14:30:00",
        },
        {
          title: "Happy Hour",
          // start: "2022-01-12T17:30:00",
        },
        {
          title: "Dinner",
          // start: "2022-01-12T20:00:00",
        },
        {
          title: "Birthday Party",
          // start: "2022-01-13T07:00:00",
          eventBackgroundColor: "ff0000",
        },
        {
          title: "Click for Google",
          url: "http://google.com/",
          // start: "2022-01-28",
          eventColor: "red",
        },
      ],
      eventRender: function (event, element) {
        element.css("font-size", "1.2em");
        element.css("padding", "5px");
        element.css("color", "red");
      },
    });

    calendar.render();
  });
}

/*mobile search result*/
if ($("div").hasClass("tab_view_result")) 
{
	function tabViewSwitch() 
	{
		let resultArea = document.querySelector("#result_area");
		let searchCal = document.querySelector(".search_cal");
		let tabView = document.querySelector(".tab_view_result");
		let floating = document.querySelector(".floating");
		let anchor = document.querySelector(".anchorBack");
		searchCal.addEventListener("click", function () {
		  tabView.classList.add("on", "scrollAble");
		  // tabView.classList.add("on");
		  anchor.classList.add("on");
		  floating.style.visibility = "hidden";
		  $("body, .body__container").css({ position: "fixed" }).addClass("scrollDisable");
		  // $("body").css({ border: "2px solid blue" });

		  resultArea.style.display = "none";
		  $("#result_type").val('calendar');

		  fullcalendar.render();
		});
		anchor.addEventListener("click", function () {
		  // tabView.style.display = "none";
		  $(".search_result_list").show();
		  tabView.classList.remove("on", "scrollAble");

		  $("#result_type").val('list');
		  anchor.classList.remove("on");
		  floating.style.visibility = "visible";

		  resultArea.style.display = "block";

		  $("body, .body__container").css({ position: "initial" }).removeClass("scrollDisable");
		});
	}
	tabViewSwitch();
}

/* input file */
(function ($) {
  var $fileBox = null;

  $(function () {
    init();
  });

  function init() {
    $fileBox = $(".input-file");
    fileLoad();
  }

  function fileLoad() {
    $.each($fileBox, function (idx) {
      var $this = $fileBox.eq(idx),
        $btnUpload = $this.find('[type="file"]'),
        $label = $this.find(".file-label");

      $btnUpload.on("change", function () {
        var $target = $(this),
          fileName = $target.val(),
          $fileText = $target.siblings(".file-name");
        $fileText.val(fileName);
      });

      $btnUpload.on("focusin focusout", function (e) {
        e.type == "focusin" ? $label.addClass("file-focus") : $label.removeClass("file-focus");
      });
    });
  }
})(jQuery);

/* checkbox all check */
function allCheck(allCheck) {
  const allChecks = document.querySelectorAll('input[type="checkbox"]');

  allChecks.forEach((checkbox) => {
    checkbox.checked = allCheck.checked;
  });
}

/* �몃꽕�� �대�吏� */
$("header .my-thumb").click(function () {
  let thisH = $(this).height();
  let divLeft = $(this).offset().left;
  let divTop = $(this).offset().top;
  let layerW = $(".myinfo__pop").width();
  $(".myinfo__pop")
    .toggle()
    .css({
      top: divTop + thisH + 30,
      left: divLeft - layerW + 24,
      position: "absolute",
    });
});

/* popup */

let layerPop = $(".layer-wrap");
let openModalBtns = $(".openModalBtn");
let btnClose = $(".btnClose, .btn-close, .mask, .btn-cancel");
let funcs = [];

function layerPopup(num) {
  return function () {
    openModalBtns[num].onclick = function () {
      modal_id = $(this).attr("modal");

      if (modal_id) {
        $("#" + modal_id).addClass("open scrollAble");
        layerPop.scrollTop(0);
        maskScrollDisable();
      } else {
		$(layerPop).addClass("open scrollAble");
        $(layerPop[num]).addClass("open scrollAble");
        layerPop.scrollTop(0);
        maskScrollDisable();
      }
    };
    popupClose();
  };
}
for (let i = 0; i < openModalBtns.length; i++) {
  funcs[i] = layerPopup(i);
}
for (let j = 0; j < openModalBtns.length; j++) {
  funcs[j]();
}

function layerPopupCommon() {
  $(".search_option").click(function () {
    $(layerPop).addClass("open scrollAble");
    maskScrollDisable();
  });

  popupClose();
}
layerPopupCommon();

function maskScrollDisable() {
  $("body, .body__container").addClass("scrollDisable");
  $(".mask").show();
}
function popupClose() {
  $(btnClose).click(function () {
    $(this).parents(".layerPopup").removeClass("open");
    $(layerPop).each(function () {
      $(this).removeClass("open");
    });
    $(".mask").hide();
    $("body, .body__container").removeClass("scrollDisable");
  });
}

function alarm() {
  $(".alarm-group").click(function (e) {
    let icoAlarmLeft = e.clientX + 15;

    $(".alarmPop")
      .addClass("open scrollAble")
      .css({
        top: 104,
        right: window.innerWidth - icoAlarmLeft,
        position: "absolute",
      });
    $(".mask").css({ background: "transparent" }).show();
    $("body, .body__container").addClass("scrollDisable");
  });
}
alarm();

/* tab label width auto */
const tabFrame = document.querySelectorAll(".tab-frame");
tabFrame.forEach((item) => {
  const tabLabel = item.querySelectorAll("input[type='radio'] + label");
  const tabLeng = tabLabel.length;
  if (tabLeng >= 1) {
    for (i = 0; i < tabLabel.length; i++) {
      tabLabel[i].style.width = `calc(100% / ${tabLeng}`;
    }
  }
});

/* message detail mobile */
$(function () {
  $(".msgTxt ul li img").click(function () {
    $(".msg_userInfo").addClass("open");
    $(".mask")
      .css({ "z-index": "1", background: "transparent" })
      .show()
      .click(function () {
        $(".msg_userInfo").removeClass("open");
      });
  });
});

/* space detail fac - sticky */

function facSticky() {
  if (matchMedia("screen and (min-width: 1024px)").matches) {
    let sticky = $(".sticky");
    let stickyStopper = $("footer");
    // let stickyStopper = $("#fac-stop");
    if (!!sticky.offset()) {
      let generalSidebarHeight = sticky.innerHeight();
      let stickyTop = sticky.offset().top;
      let stickOffset = 0;
      let stickyStopperPosition = stickyStopper.offset().top;
      let stopPoint = stickyStopperPosition - generalSidebarHeight - stickOffset;
      // let diff = stopPoint + stickOffset;
      $(window).scroll(function () {
        let windowTop = $(window).scrollTop();
        if (stopPoint < windowTop) {
          sticky.removeClass("fixed");
        } else if (stickyTop < windowTop + stickOffset) {
          sticky.addClass("fixed");
        } else {
          sticky.removeClass("fixed");
        }
		
		if(sticky.hasClass('sticky_limit') === true){
			var footer_h = $(".slide_limit").height();
		}else{
			var footer_h = $("footer").height();
		}
		let scrollBottom = windowTop + $(window).height();
        
        let d_height = $(document).height() - footer_h;
        if (scrollBottom > d_height) {
           sticky.addClass("end");
        } else {
           sticky.removeClass("end");
        }
      });
    }
  } else if (matchMedia("screen and (max-width: 1024px)").matches) {
    $(".btn_fac").click(function () {
      $(".fac").addClass("open");
      $(".mask")
        .css({ "z-index": "1", background: "transparent" })
        .show()
        .click(function () {
          $(".fac").removeClass("open");
        });
    });
    $(".fac .btnClose").click(function () {
      $(".fac").removeClass("open");
    });
  }
}

$(window).resize(facSticky);
if ($("div").hasClass("fac")) {
  facSticky();
}

function openModal() {
  $(".lightbox-modal").addClass("open");
  $(".lightthumbWrap2").addClass("scrollAble");
  $(".mask").show();
  $("body, .body__container").addClass("scrollDisable");
}

function closeModal() {
  $("body, .body__container").removeClass("scrollDisable");
  $(".mask").click(function () {
    $(".lightbox-modal").removeClass("open");
    $(this).css({
      background: "#000",
      opacity: "0.5",
    });
  });
}
$(".mask").click(function () {
  //mobile_app_func();
  $(".lightbox-modal").removeClass("open");
  $(this).css({
    background: "#000",
    opacity: "0.5",
  });
});

var slideIndex = 1;

function currentSlide(n) {
  showSlides((slideIndex = n));
}

function showSlides(n) {
  var i;
  var dots = document.querySelectorAll(".column2 img");
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  dots[slideIndex - 1].className += " active";
}

if ($("div").hasClass("lightbox-modal")) {
  showSlides(slideIndex);
  let thumbPos = document.querySelectorAll(".column2 img");

  for (let i = 0; i < thumbPos.length; i++) {
    // console.log(thumbPos[i]);
    thumbPos[i].addEventListener("click", function () {
      thumbPos[i].scrollIntoView({ behavior: "smooth", block: "center", inline: "center" });
    });
  }
}

/* main date layer + search */
function mSearch() {
  if (matchMedia("screen and (max-width: 720px)").matches && ($("input").hasClass("input--search") === true || $("li").hasClass("input--search") === true)) {
    $(".input--search").addClass("m_search_input");

    $(".m_search_input").click(function () {
      $(".section--m--search").addClass("open");
      $(".input--search").css({ "caret-color": "transparent" });
      $(".mask, .btnClose")
        .show()
        .click(function () {
          $(".section--m--search").removeClass("open");
        });

      $("body, .body__container").addClass("scrollDisable");

      $(".datepick").click(function () {
        if($(this).hasClass('has--schedule')){
          var $calendar = $("#container").data('plugin_simpleCalendar')
          $calendar.setEvents(get_calendar_info(new Date().getFullYear(), new Date().getMonth() + 1));
        }

        $(".dateLayer").addClass("open");
        $(".section--m--search").addClass("scrollAble");

        if ($(".section--m--search").hasClass("open") === true && $(".dateLayer").hasClass("open") === false) {
          $(".mask")
            .css({
              "z-index": "21",
              display: "block",
              background: "transparent",
            })
            .click(function () {
              $(".section--m--search").addClass("open").removeClass("scrollAble");
              $(".dateLayer").removeClass("open");
              // console.log("dateLayer click scrolldisable");

              $("body, .body__container").addClass("scrollDisable");

              $(".mask")
                .css({
                  "z-index": "20",
                  display: "block",
                  background: "#000",
                  opacity: "0.5",
                })
                .click(function () {
                  $(".section--m--search").removeClass("open scrollAble");
                  $(".mask").hide();
                  $("body, .body__container").removeClass("scrollDisable");
                });
            });
        } else if ($(".section--m--search").hasClass("open") === true && $(".dateLayer").hasClass("open") === true) {
          $(".mask")
            .css({
              "z-index": "21",
              display: "block",
              background: "transparent",
              // background: "red",
              // opacity: 0.25,
            })
            .click(function () {
              $(".section--m--search").addClass("open").removeClass("scrollAble");
              $(".dateLayer").removeClass("open");
              $(".mask")
                .css({
                  "z-index": "20",
                  display: "block",
                  background: "#000",
                  opacity: "0.5",
                })
                .click(function () {
                  $(".section--m--search").removeClass("open scrollAble");
                  $(".mask").hide();
                  $("body, .body__container").removeClass("scrollDisable");
                });
            });
        } else {
          $(".mask")
            .css({
              "z-index": "20",
              display: "block",
              background: "transparent",
              // background: "blue",
              // opacity: 0.25,
            })
            .click(function () {
              $(".dateLayer").removeClass("open");
            });
        }

        let datePickH = $(this).height();
        let divTop = $(this).offset().top;
        $(".dateLayer")
          .addClass("open")
          .css({
            top: divTop + datePickH + 12,
            left: 20,
            position: "absolute",
          });
      });
    });
  } else {
    $(".datepick").click(function () {
      let datePickH = $(this).height();
      let divLeft = $(this).offset().left;
      let divTop = $(this).offset().top;

      if($(this).hasClass('has--schedule')){
        var $calendar = $("#container").data('plugin_simpleCalendar')
        $calendar.setEvents(get_calendar_info(new Date().getFullYear(), new Date().getMonth() + 1));
      }

      $(".dateLayer")
        .addClass("open")
        .css({
          top: divTop + datePickH + 12,
          left: divLeft - 44,
          position: "absolute",
        });
      $(".mask")
        .css({ background: "transparent" })
        .show()
        .click(function () {
          $(".dateLayer").removeClass("open");
        });
    });
  }
}

mSearch();

function datepick2() {
  $(".search_date .datein, .dateout").click(function () {
    let datePickH = $(this).height();
    let divLeft = $(".datein").offset().left;
    let divTop = $(this).offset().top;
    $(".dateLayer")
      .toggleClass("open")
      .css({
        top: divTop + datePickH + 12,
        left: divLeft - 190,
        position: "absolute",
      });
    $(".mask")
      .css({ background: "transparent" })
      .show()
      .click(function () {
        $(".dateLayer").removeClass("open");
      });

    if (matchMedia("screen and (max-width: 720px)").matches) {
      $(".dateLayer")
        .addClass("open")
        .css({
          top: divTop + datePickH + 12,
          left: 20,
          // right: 0,
          position: "absolute",
        });
    }
  });
}
datepick2();

function Mobile() {
  return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
}

if (Mobile()) {		

	cookiedata = document.cookie; 

	//mobile�닿퀬 硫붿씤�대㈃ 硫붿씤 �곷떒�� �깅떎�대줈�� �덈궡 
	if($(".is_app_banner").val() == 1 && $(".is_phpself").val() == '/index.php'){		
		
		if(cookiedata.indexOf("mobile_top_popup=done") < 0){ //�곷떒 �앹뾽�� 荑좏궎 �뺤씤
			$(".top_app_banner").show(); 
		}else{
			$(".top_app_banner").hide();			
		}				
	}else{
		$(".top_app_banner").hide();
	}    	

	function mobile_pop(){
		$(".mask").show();
		$("body, .body__container").addClass("notScroll");
		$(".mobile_pop").show();
	}
	
	if($(".is_app_banner").val() == 1 && $(".is_phpself").val() == '/index.php'){
		if(cookiedata.indexOf("mobile_bottom_popup=done") < 0){ //�섎떒 �앹뾽�� 荑좏궎 �뺤씤
			mobile_pop(); //理쒖큹 �묎렐�쒖뿉留� �깆쑝濡� 蹂닿린 沅뚯쑀 
		}
	}

} else {

  $(".mask").hide();
  $("body, .body__container").removeClass("notScroll");
  $(".mobile_pop").hide();

  // 紐⑤컮�� ��
  window.onresize = function () {
    document.location.reload();
  }; 
}

//x�� �꾨Ⅴ硫� �쇱＜�쇨컙 �댁��딄린
$(".app_div_close").click(function (){
	setCookie('mobile_top_popup', 'done', 7);			
	$(".top_app_banner").hide();
});

function setCookie(cookie_name, value, days){
	var date = new Date();
	date.setDate(date.getDate() + days);

	document.cookie = cookie_name+'='+escape(value)+';expires='+date.toUTCString()+';'
}

/*space detail - mobile textarea*/
function reviewTxtareaM() {
  if (matchMedia("screen and (max-width: 720px)").matches && $("div").hasClass(".textareaWrap")) {
    let textareaH = $(".textareaWrap ul").height() + 10;
    let txtareaMargin = $(".textareaWrap textarea");
    txtareaMargin.css({ "margin-bottom": `${textareaH}px` });
  } else if (matchMedia("screen and (min-width: 1024px)").matches && $("div").hasClass(".textareaWrap")) {
    txtareaMargin.css({ "margin-bottom": 0 });
  }
}
reviewTxtareaM();
$(window).resize(reviewTxtareaM);

function swiper_init(swipernm, sb_val, sb_val_max){
	
	if(!sb_val) var sb_val = 16; //�щ씪�대뱶 �ъ씠 媛꾧꺽
	if(!sb_val_max) var sb_val_max = 20; // �щ씪�대뱶 �ъ씠 媛꾧꺽 理쒕�媛�

	var swiper = new Swiper("."+swipernm+"_swiper", {
	  "--swiper-navigation-color": "#000",
	  "--swiper-navigation-size": "25px",
	  slidesPerView: "auto",
	  // autoplay : {  
	  // delay : 2500, 
	  // disableOnInteraction : false,  
	  // },
	  spaceBetween: sb_val,
	  pagination: {
		el: ".swiper-pagination",
		type: "fraction",
	  },
	  navigation: {
		nextEl: "."+swipernm+"_next",
		prevEl: "."+swipernm+"_prev",
	  },
	  breakpoints: {
		  
		  550: {
			spaceBetween: sb_val_max,
		  },
		},
	});
}

$(function () {
	var host_guide = getCookie("host_guide");
	if (host_guide == 'Y')
		$("#host_guide_div").hide();
	else
		$("#host_guide_div").show();

	var brand_guide = getCookie("brand_guide");
	if (brand_guide == 'Y')
		$("#brand_guide_div").hide();
	else
		$("#brand_guide_div").show();

	$(".more").click(function () {
		$(".aside-more-location").toggle();
	});

	$('.btn-aside-open').click(function(){
		$('.aside-layerpop').addClass('modal-open');
		$('body').addClass('scrollLock');
	});

	$('.btn-aside-layerpop-close').click(function(){
		$('.aside-layerpop').removeClass('modal-open');
		$('body').removeClass('scrollLock');
	});

	//var favorite_list	= '';
	//$(".btn_like-16").each(function(k){

	//	var id = $(this).data('id');
	//	var gubun = $(this).data('gubun');
	//	var classnm = gubun+'_'+id;

	//	if (favorite_list)
	//		favorite_list	+= ',' + classnm;
	//	else
	//		favorite_list	+= classnm;
	//});

	////濡쒓렇�� �� 寃쎌슦留� 泥섎━
	//if (_ss_user_id != '')
	//{
	//	$.ajax({
	//		url : '/schedule/_handle.php',
	//		data : {act:'getFavoriteList', id_list:favorite_list},
	//		dataType : 'json',
	//		method : 'post',
	//		success : function(data){
	//			
	//			$.each(data, function( key, value ){
	//				$('.'+value).addClass('btn_dislike-16');
	//			});

	//			console.log(data);
	//			//if(data == 'Y'){		
	//			//	$('.'+classnm).addClass('btn_dislike-16');
	//			//}else{
	//			//	$('.'+classnm).removeClass('btn_dislike-16');
	//			//}
	//		}
	//	});
	//}
});