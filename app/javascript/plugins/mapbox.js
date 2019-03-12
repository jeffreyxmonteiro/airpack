import mapboxgl from 'mapbox-gl';

const nav = (address = [-0.077, 51.533]) => {
  mapboxgl.accessToken = 'pk.eyJ1IjoiZHlvdW5taW4iLCJhIjoiY2pydmp4MHN3MDJ2cDQ5bzB5M3U0eW5lMSJ9.uYqXcnCtdd3avGlzQFf1JA';
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: address,
    zoom: 12
  });
  new mapboxgl.Marker()
    .setLngLat(address)
    .addTo(map);
};

nav();
const form = document.querySelector('form');
const input = document.querySelector('#search-input');


const fetchLocation = (query) => {
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${query}.json?access_token=pk.eyJ1IjoiZHlvdW5taW4iLCJhIjoiY2pydmp4MHN3MDJ2cDQ5bzB5M3U0eW5lMSJ9.uYqXcnCtdd3avGlzQFf1JA`)
    .then(response => response.json())
    .then((data) => {
      const result = data.features[0].center;
    });
};



$(document).on("keypress", ":input:not(textarea)", function(event) {
    return event.keyCode != 13;
});

form.addEventListener("keypress", (event) => {
  if (event.keycode === 13) {
  event.preventDefault();
  fetchLocation(input.value);
  }
});


