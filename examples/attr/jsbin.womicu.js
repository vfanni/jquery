function getAttr(){
$("#results").append("href: " + $("#image").attr("src") + "<br>title: " + $("#image").attr("title") + "<br>alt: " + $("#image").attr("alt") + "<br><br>");
}

getAttr();

$("#image").attr("title","jquery");

getAttr();

$("#image").attr({
  title:"jquery logo",
  alt: "logo"
});

getAttr();

$("#image").removeAttr("src");

getAttr();

$("#image").attr("src","http://www.ld-services.net/iso_album/logo-jquery.png");

getAttr();