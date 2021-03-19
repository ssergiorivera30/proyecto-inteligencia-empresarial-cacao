<template>

<div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
    <p>Crear mapa</p>

</div>



</template>

<script>

import API_ROUTER from './../../services/SERVER_API'


export default {
   data(){
      return{
        name: 'MapsCreate',
        Img1: API_ROUTER.API_UI+'maps/1.png',
        Img2: API_ROUTER.API_UI+'maps/2.png',
        Img3: API_ROUTER.API_UI+'maps/3.png',

      }
    },
  
}
</script>

