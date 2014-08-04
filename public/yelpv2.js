function getYelpWidget(id,width,color,image,styled,reviewnum){
  if ('withCredentials' in new XMLHttpRequest()) {

   var xmlHttp = new XMLHttpRequest();
      xmlHttp.onreadystatechange=function()
  {
  if (xmlHttp.readyState==4 && xmlHttp.status==200)
    {

    document.getElementById('yelpwidget').innerHTML= xmlHttp.responseText;
    }
  };
    xmlHttp.open( "GET", 'http://chrisawren.com/widgets/yelp/yelpv2.php?id='+id+'&width='+width+'&color='+color+'&styled='+styled+'&image='+image+'&reviewnum='+reviewnum, true );
    xmlHttp.send();
  }
  else {
    if(typeof XDomainRequest !== "undefined"){
      // 1. Create XDR object
      var xdr = new XDomainRequest();
      xdr.onload = function() {
        document.getElementById('yelpwidget').innerHTML= xdr.responseText;
      };
      // 2. Open connection with server using GET method
      xdr.open( "GET", 'http://chrisawren.com/widgets/yelp/yelpv2.php?id='+id+'&width='+width+'&color='+color+'&styled='+styled+'&image='+image+'&reviewnum='+reviewnum, true );
      // 3. Send string data to server
      xdr.send();
    }
  }
}
