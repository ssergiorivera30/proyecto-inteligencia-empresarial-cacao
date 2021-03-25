<template>
  <div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3 ">
    <GoogleMap
      api-key="AIzaSyDiuJUZXx0ozvPqOcpkW7AduGh4Rvp0Flo"
      style="width: 100%; height: 800px"
      ref="map" 
      id="map"
      :options="{ mapOptions }"
      :center="LaPlata"
      :zoom="18" >
        <Marker :options="{ position: LaPlata, icon: Marcador, size: 20 }" @click="GetRuta()" />
        <Marker :options="{ position: Nataga, icon: Marcador, size: 10 }" @click="GetRuta()"/>
        <Marker :options="{ position: LaPlata2, icon: Marcador, size: 10 }" @click="GetRuta()"/>
        <Marker :options="{ position: Mi_Position, icon: MyMarcador, size: 10 }" @click="GetRuta()"/>

        <!-- <DirectionsRenderer travelMode="DRIVING" :origin="origin" :destination="destionation"/> -->
    </GoogleMap>
  </div>
</template>

<script>
import { ref } from 'vue'
import API_ROUTER from './../../services/SERVER_API'
import { GoogleMap, Marker } from 'vue3-google-map'
 import DirectionsRenderer from './../../components/Maps/DirectionsRenderer.js'
export default {
    components: { 
      GoogleMap, Marker, DirectionsRenderer
    },
    data(){

      return{
        name: 'MapsCreate',
        Marcador: API_ROUTER.API_UI+'maps/location.png',
        MyMarcador: API_ROUTER.API_UI+'maps/my.png',
        LaPlata: { lat:  2.3867844, lng: -75.8944577 },
        LaPlata2: { lat:  2.3886939, lng: -75.8949618 },
        Nataga: { lat: 2.545506, lng: -75.8096025 }, 
        travelMode: "DRIVING",
        Mi_Position: { lat: 2.545506, lng: -75.8096025 }, 
        mapOptions: {},
        map: null // --> HERE
        
      }
    },
    mounted(){
      this.Geolocation()
 
    },
    computed: {
    origin() {

      return this.LaPlata 
    },
    destionation() {
  
      return this.LaPlata2 
    }
  },

    methods:{
      Geolocation: function() {
      navigator.geolocation.getCurrentPosition(position => {
        this.Mi_Position = {
          lat: position.coords.latitude,
          lng: position.coords.longitude,
        };
      });
    },
    GetRuta: function(){

      var directionsService = new google.maps.DirectionsService;
      var directionsDisplay = new google.maps.DirectionsRenderer;
       directionsDisplay.setMap(this.$refs.map.$mapObject);
  

      function calculateAndDisplayRoute(directionsService, directionsDisplay, start, destination) {
        directionsService.route({
          origin: start,
          destination: destination,
          travelMode: 'DRIVING'
        }, function(response, status) {
          if (status === 'OK') {
            directionsDisplay.setDirections(response);
            this.mapOptions = response
            console.log(response)
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      }
      
      calculateAndDisplayRoute(directionsService, directionsDisplay, this.LaPlata, this.Nataga);

      },
  }
}
</script>

