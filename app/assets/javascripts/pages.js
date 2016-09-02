// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// ALL GOOGLE MAPS JS SHOULD BE PLACED HERE




var map;
function initialize() {
  var mapOptions = {
    zoom: 16,
    center: {lat: 43.440241, lng: -79.675730}
  };
  map = new google.maps.Map(document.getElementById('map'),
      mapOptions);

  var marker = new google.maps.Marker({
    // The below line is equivalent to writing:
    // position: new google.maps.LatLng(-34.397, 150.644)
    position: {lat: 43.440241, lng: -79.675730},
    map: map
  });

  // You can use a LatLng literal in place of a google.maps.LatLng object when
  // creating the Marker object. Once the Marker object is instantiated, its
  // position will be available as a google.maps.LatLng object. In this case,
  // we retrieve the marker's position using the
  // google.maps.LatLng.getPosition() method.
  var infowindow = new google.maps.InfoWindow({
    content: '<p>Marker Location:' + marker.getPosition() + '</p>'
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map, marker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);
