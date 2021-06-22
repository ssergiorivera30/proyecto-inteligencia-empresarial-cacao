<template>

<div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">



<div class="my-2 dark:bg-gray-800 overflow-hidden relative lg:flex lg:items-center">
    <div class="w-full py-2 px-4 sm:px-6 lg:py-2 lg:px-8 z-20">
        <h2 class="text-3xl font-normal text-black dark:text-white sm:text-2xl">
            <span class="block">
                Web Scraper
            </span>
        </h2>
        <p class="text-md mt-4 text-gray-400">
            Web scraping o raspado web, es una técnica utilizada <br>mediante programas de software <br>
            para extraer información de sitios web.​ Usualmente, <br>estos programas simulan la navegación <br>
            de un humano en la World Wide Web ya sea utilizando <br>el protocolo HTTP manualmente, 
            <br> o incrustando un navegador en una aplicación
        </p>
        <div class="lg:mt-0 lg:flex-shrink-0">
            <div class="mt-12 inline-flex rounded-md shadow">
                 <router-link to="/maps/crear" class="inline-flex justify-center py-1 px-2 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-my-primary focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                    Web Scraper
                </router-link>
            </div>
        </div>
    </div>
    <div class="flex items-center gap-8 p-8 lg:p-2">
        <img :src="ImagenMapat" class="rounded-lg h-54" alt="Tree"/>
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
        ImagenMapaq: API_ROUTER.API_UI+'maps/mapa.svg',
        ImagenMapat: 'https://miro.medium.com/max/658/1*kfOsUxggG5wDbDcxgC0Uwg.png',

        

      }
    },
  
}
</script>

