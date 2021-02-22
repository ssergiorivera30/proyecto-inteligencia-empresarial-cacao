<template>
  <main class="p-6 sm:p-10 space-y-6">
      <div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-20">
  <div class="grid gap-10 lg:grid-cols-2">
    <div class="flex flex-col justify-center md:pr-8 xl:pr-0 lg:max-w-lg">
      
      <div class="max-w-xl mb-6">
        <h2 class="max-w-lg mb-6 font-sans text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl sm:leading-none">

          SINA<br class="hidden md:block" />
          
          <span class="my-3 inline-block text-deep-purple-accent-400 text-purple-900 leading-normal">
            <span> Software de Inteligencia de Negocios para el sector Agrícola</span>
          </span>
        </h2>
        <p class="text-base text-gray-700 md:text-lg">
          Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae. explicabo.
        </p>
      </div>
      <div>
        <a href="/" aria-label="" class="inline-flex items-center font-semibold transition-colors duration-200 text-deep-purple-accent-400 hover:text-deep-purple-800">
          Ver más
          <svg class="inline-block w-3 ml-2" fill="currentColor" viewBox="0 0 12 12">
            <path d="M9.707,5.293l-5-5A1,1,0,0,0,3.293,1.707L7.586,6,3.293,10.293a1,1,0,1,0,1.414,1.414l5-5A1,1,0,0,0,9.707,5.293Z"></path>
          </svg>
        </a>
      </div>
    </div>
    <div class="flex items-center justify-center -mx-4 lg:pl-8">
      <div class="flex flex-col items-end px-3">
        <img
          class="object-cover mb-6 rounded shadow-lg h-28 sm:h-48 xl:h-56 w-28 sm:w-48 xl:w-56"
          :src="imagen_c"
          alt=""
        />
        <img class="object-cover w-20 h-20 rounded shadow-lg sm:h-32 xl:h-40 sm:w-32 xl:w-40"
        :src="imagen_b" alt="" />
      </div>
      <div class="px-3">
        <img class="object-cover w-40 h-40 rounded shadow-lg sm:h-64 xl:h-80 sm:w-64 xl:w-80" :src="imagen_a" alt="" />
      </div>
    </div>
  </div>
</div>
    </main>
</template>

<script>

import API_ROUTER from './../services/model.vue'

export default {
  data(){
    return{
      name: 'Home',
      imagen_a: API_ROUTER.API_FILE_SYSTEMS+'1.jpg',
      imagen_b: API_ROUTER.API_FILE_SYSTEMS+'2.jpg',
      imagen_c: API_ROUTER.API_FILE_SYSTEMS+'3.jpg',
    }
  }, 
  mounted: function(){

  },
  methods:{


  }
  
}
</script>
