<template>

<div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">



<div class="my-2 bg-white dark:bg-gray-800 overflow-hidden relative lg:flex lg:items-center">
    <div class="w-full py-2 px-4 sm:px-6 lg:py-2 lg:px-8 z-20">
        <h2 class="text-3xl font-extrabold text-black dark:text-white sm:text-4xl">
            <span class="block">
                Mother hearth host your travel
            </span>
        </h2>
        <p class="text-md mt-4 text-gray-400">
            The state of Utah in the united states is home to lots of beautiful National parks, Bryce national canion park ranks as three of the most magnificient &amp; awe inspiring.
        </p>
        <div class="lg:mt-0 lg:flex-shrink-0">
            <div class="mt-12 inline-flex rounded-md shadow">
                 <router-link to="/maps/crear" class="py-2 px-4  bg-green-500 hover:bg-green-700 focus:ring-green-500 focus:ring-offset-green-200 text-white w-full transition ease-in duration-200 text-center text-base font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-lg ">
                    Crear mapa
                </router-link>
            </div>
        </div>
    </div>
    <div class="flex items-center gap-8 p-8 lg:p-2">
        <img :src="Img2" class="rounded-lg w-1/2" alt="Tree"/>
        <div>
            <img :src="Img1" class="rounded-lg mb-8" alt="Tree"/>
            <img  :src="Img3" class="rounded-lg" alt="Tree"/>
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
        Img1: API_ROUTER.API_UI+'maps/1.png',
        Img2: API_ROUTER.API_UI+'maps/2.png',
        Img3: API_ROUTER.API_UI+'maps/3.png',

      }
    },
  
}
</script>

