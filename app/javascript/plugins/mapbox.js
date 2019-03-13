import mapboxgl from 'mapbox-gl';

const nav = (address = [139.7081, 35.6339]) => {
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

const fetchLocation = (query) => {
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${query}.json?access_token=pk.eyJ1IjoiZHlvdW5taW4iLCJhIjoiY2pydmp4MHN3MDJ2cDQ5bzB5M3U0eW5lMSJ9.uYqXcnCtdd3avGlzQFf1JA`)
    .then(response => response.json())
    .then((data) => {
      const result = data.features[0].center;
      nav(data.features[0].center);
    });
};


$("#search-input").on("keypress", (e) => {
    if (e.keyCode == 13) {
      const input = document.querySelector('#search-input');
      fetchLocation(input.value);

      return false;
    }

    return true;
});
