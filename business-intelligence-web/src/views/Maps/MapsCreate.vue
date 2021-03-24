<template>

<div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3 ">
    <GoogleMap
      api-key="AIzaSyDiuJUZXx0ozvPqOcpkW7AduGh4Rvp0Flo"
      style="width: 100%; height: 700px"
      :center="LaPlata"
      :zoom="5" >
      <DirectionsRenderer travelMode="driving" :origin="origin" :destination="destionation"/>
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
import DirectionsRenderer from './../../components/Maps/MapsSilver.js'

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
        end: "" ,
        directionsService: new google.maps.DirectionsService()
      }
    },
    mounted(){

          

          console.log(this.directionsService)


    },
    computed: {
    origin() {
      if (!this.start) return null;
      return { query: this.start };
    },
    destionation() {
      if (!this.end) return null;
      return { query: this.end };
    }
  },
    methods:{
      hola(){
        console.log('hola')
      }

    }
  
}
</script>

