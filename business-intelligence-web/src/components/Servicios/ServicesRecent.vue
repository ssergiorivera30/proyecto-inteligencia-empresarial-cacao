<template>

    <header class="flex items-center justify-between">
        <h2 class="text-sm leading-6 font-medium text-black">Mis servicios</h2>        
     </header>

    <form class="relative mt-5">
        <svg width="20" height="20" fill="currentColor" class="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"></path>
        </svg>
        <input type="text" aria-label="Filtrar proyectos" placeholder="Filtrar proyectos" class="w-full text-sm text-black placeholder-gray-500 border border-gray-200 rounded-md py-2 pl-10 focus:border-light-blue-500 focus:outline-none focus:ring-1 focus:ring-light-blue-500">
      </form>



      <ul class="grid grid-cols-1 sm:grid-cols-1 lg:grid-cols-1 xl:grid-cols-4 gap-4 mt-5">
      
         <router-link to="/proyecto/ver" >
            <div class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-purple-200 hover:shadow-md">
               <dl class="grid sm:block lg:grid xl:block grid-cols-3 grid-rows-3 items-center">
                  <div>
                     <dt class="sr-only">Title</dt>
                     <dd class="leading-6 font-medium text-black group-hover:text-purple-900">Estrategias Tecnológicas para el fortalecimiento de la cadena...</dd>
                  </div>
                  <div class="mt-4">
                     <dt class="sr-only">Category</dt>
                     <dd class="text-sm font-medium group-hover:text-light-blue-200 sm:mb-4 lg:mb-0 xl:mb-4">Cacao</dd>
                  </div>
                  <div class="col-start-2 row-start-1 row-end-3">
                     <dt class="sr-only">Users</dt>
                     <dd class="flex justify-end sm:justify-start lg:justify-end xl:justify-start -space-x-2"><img src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1546525848-3ce03ca516f6?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"></dd>
                  </div>
               </dl>
            </div>
         </router-link>

            <router-link to="/proyectos/nuevo-proyecto"  class="hover:shadow-lg flex rounded-lg">
            <div class="hover:border-purple-200 hover:shadow-md w-full flex items-center justify-center rounded-lg border-2 border-dashed border-gray-200 text-sm font-medium py-4 cursor-pointer">
               Nuevo proyecto
            </div>
         </router-link>

      </ul> 
</template>

<script>

import API_ROUTER from './../../services/SERVER_API'

export default {
   data(){
      return{
        name: 'ServicesRecent',
        ImgDatabase: API_ROUTER.API_UI+'icons/database.png',
        ImgForm: API_ROUTER.API_UI+'icons/formulario.png',
        ImgProyectos: API_ROUTER.API_UI+'icons/proyectos.jpg',
        ImgMaps: API_ROUTER.API_UI+'icons/maps.jpg',
        Imgkanban: API_ROUTER.API_UI+'icons/Imgkanban.webp',
      }
    },
  
}
</script>

