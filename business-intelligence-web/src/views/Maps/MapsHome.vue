<template>

<div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">



<div class="my-2 bg-white dark:bg-gray-800 overflow-hidden relative lg:flex lg:items-center">
    <div class="w-full py-2 px-4 sm:px-6 lg:py-2 lg:px-8 z-20">
        <h2 class="text-3xl font-normal text-black dark:text-white sm:text-2xl">
            <span class="block">
                Desarrollo de mapa organoléptico
            </span>
        </h2>
        <p class="text-md mt-4 text-gray-400">
            Mapa organoléptico digital del cacao
        </p>
        <div class="lg:mt-0 lg:flex-shrink-0">
            <div class="mt-12 inline-flex rounded-md shadow">
                 <router-link to="/maps/crear" class="py-2 px-4  bg-blue-900 hover:bg-blue-900 text-white w-full transition ease-in duration-200 text-center text-base font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-lg ">
                    Crear mapa
                </router-link>
            </div>
        </div>
    </div>
    <div class="flex items-center gap-8 p-8 lg:p-2">
        <img :src="ImagenMapa" class="rounded-lg w-full" alt="Tree"/>
        <div>
        </div>
    </div>
</div>
</div>



</template>

<script>

import API_ROUTER from './../../services/SERVER_API'


export default {
   data(){
      return{
        name: 'MapsHome',
        ImagenMapa: API_ROUTER.API_UI+'maps/mapa.jpg',

      }
    },
  
}
</script>

