<template>

<div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3 ">
    <GoogleMap
      api-key="AIzaSyDiuJUZXx0ozvPqOcpkW7AduGh4Rvp0Flo"
      style="width: 100%; height: 700px"
      :center="LaPlata"
      :zoom="5" >
      <div travelMode="driving" :origin="origin" :destination="destionation" />
    <Marker :options="{ position: LaPlata, icon: Marcador, size: 20 }" @click="hola()" />
    <Marker :options="{ position: Nataga, icon: Marcador, size: 10 }" @click="hola()"/>
  </GoogleMap>

  <div>
    <select v-model="start">
      <option value="chicago, il">Chicago</option>
      <option value="st louis, mo">St Louis</option>
      <option value="joplin, mo">Joplin, MO</option>
    </select>
    <b>End:</b>
    <select v-model="end">
      <option value="chicago, il">Chicago</option>
      <option value="st louis, mo">St Louis</option>
      <option value="joplin, mo">Joplin, MO</option>
    </select>
  </div>




</div>



</template>

<script>

import { ref } from 'vue'
import API_ROUTER from './../../services/SERVER_API'
import { GoogleMap, Marker } from 'vue3-google-map'
import DirectionsRenderer from './../../components/Maps/MapsSilver.vue'

export default {
    components: { 
      GoogleMap, Marker, DirectionsRenderer
    },
    data(){

      return{
        name: 'MapsCreate',
        Marcador: API_ROUTER.API_UI+'maps/location.png',
        LaPlata: { lat: 2.3877584, lng: -75.8934048 },
        Nataga: { lat: 2.545506, lng: -75.8096025 }, 
        start: "",
        end: "",
        origin: { lat: 2.3877584, lng: -75.8934048 },
        destination: { lat: 2.545506, lng: -75.8096025 },
        travelMode: "driving"
      }
    },
    mounted(){

    },

    methods:{

      hola: function(){        

         origin = 'chicago, il'
         destination = 'st louis, m'
         travelMode = 'DRIVING'

        let directionsService = new window.google.maps.DirectionsService();
        let directionsRenderer = new window.google.maps.DirectionsRenderer()

        directionsService.route({  
          origin: { lat: 2.3877584, lng: -75.8934048 },
          destination: { lat: 2.545506, lng: -75.8096025 },  
          travelMode: 'DRIVING' },
          (response, status) => {
            if (status !== "OK") return;
            directionsRenderer.setDirections(response);
          }
        );
      },
  }
}
</script>

