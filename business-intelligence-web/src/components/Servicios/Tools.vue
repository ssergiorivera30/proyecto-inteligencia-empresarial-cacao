<template>

  <header class="flex items-center justify-between">
      <h2 class="text-md leading-6 font-medium text-black">Herramientas</h2>
      <span class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-0 py-2 cursor-pointer">
         <i class='bx bx-dots-vertical-rounded'></i>
      </span>
   </header>


    <div class="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-10 gap-4 my-5">
        <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <span class="block relative">
                        <img alt="profil" :src="ImgProyectos" class="mx-auto object-cover h-12 w-12 "/>
                    </span>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-sm font-medium">
                        Proyectos
                    </span>
                </div>
            </div>
        </div>
        <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <span class="block relative">
                        <img alt="profil" :src="ImgForm" class="mx-auto object-cover h-12 w-12 "/>
                    </span>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-sm font-medium">
                        Formularios
                    </span>                    
                </div>
            </div>
        </div>
        <router-link to="/maps" class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <div class="block relative">
                        <img alt="profil" :src="ImgMaps" class="mx-auto object-cover h-12 w-12 "/>
                    </div>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-sm font-medium">
                        Mapas
                    </span>
                </div>
            </div>
        </router-link>
        <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <span class="block relative">
                        <img alt="profil" :src="ImgDatabase" class="mx-auto object-cover h-12 w-12 "/>
                    </span>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-sm font-medium">
                        Databases
                    </span>
                </div>
            </div>
        </div> 

         <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <span class="block relative">
                        <img alt="profil" src="https://informesinternet.com/wp-content/uploads/2019/07/iot.png" class="mx-auto object-cover h-12 w-12 "/>
                    </span>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-sm font-medium">
                        IoT
                    </span>
                </div>
            </div>
        </div> 

        <div class="">
            <div class="flex-col  flex justify-center items-center">
                <div class="flex-shrink-0">
                    <span class="block relative">
                        <img alt="profil" :src="Imgkanban" class="mx-auto object-cover h-12 w-12 "/>
                    </span>
                </div>
                <div class="mt-2 text-center flex flex-col">
                    <span class="text-gray-600 dark:text-white text-sm font-medium">
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

