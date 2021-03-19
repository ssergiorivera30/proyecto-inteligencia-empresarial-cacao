<template>

  <header class="flex items-center justify-between">
         <h2 class="text-sm leading-6 font-medium text-black">Servicios disponibles</h2>
         <router-link to="/proyectos/nuevo-proyecto" class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor" class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Ver todas
         </router-link>
      </header>


    <div class="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-8 gap-4 my-5">
        <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <a href="#" class="block relative">
                        <img alt="profil" :src="ImgProyectos" class="mx-auto object-cover h-20 w-20 "/>
                    </a>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-lg font-medium">
                        Proyectos
                    </span>
                </div>
            </div>
        </div>
        <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <a href="#" class="block relative">
                        <img alt="profil" :src="ImgForm" class="mx-auto object-cover h-20 w-20 "/>
                    </a>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-lg font-medium">
                        Formularios
                    </span>                    
                </div>
            </div>
        </div>
        <router-link to="/maps" class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <div class="block relative">
                        <img alt="profil" :src="ImgMaps" class="mx-auto object-cover h-20 w-20 "/>
                    </div>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-lg font-medium">
                        Mapas
                    </span>
                </div>
            </div>
        </router-link>
        <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <a href="#" class="block relative">
                        <img alt="profil" :src="ImgDatabase" class="mx-auto object-cover h-20 w-20 "/>
                    </a>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-lg font-medium">
                        Databases
                    </span>
                </div>
            </div>
        </div> 

        <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <a href="#" class="block relative">
                        <img alt="profil" :src="Imgkanban" class="mx-auto object-cover h-20 w-20 "/>
                    </a>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-lg font-medium">
                        Kanban
                    </span>
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
        name: 'Tools',
        ImgDatabase: API_ROUTER.API_UI+'icons/database.png',
        ImgForm: API_ROUTER.API_UI+'icons/formulario.png',
        ImgProyectos: API_ROUTER.API_UI+'icons/proyectos.jpg',
        ImgMaps: API_ROUTER.API_UI+'icons/maps.jpg',
        Imgkanban: API_ROUTER.API_UI+'icons/Imgkanban.webp',
      }
    },
  
}
</script>

