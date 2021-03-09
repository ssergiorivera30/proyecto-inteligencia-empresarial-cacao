<template>
   <div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">

      <div class="pt-5 mb-8">
         <ul class="list-reset flex border-b">
            <li class="-mb-px mr-1">
            <a href="javascript:history.back()" class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900 cursor-pointer">
               <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-4 h-4 text-deep-purple-accent-400">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
               </svg>
            </a>
         </li>          
         <li class="-mb-px mr-1">
            <router-link to="/proyecto/detalles" class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white">
               Detalles
            </router-link >
         </li>
         <li class="-mb-px mr-1">
            <router-link to="/proyecto/formularios" href="#" class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white border-l border-t border-r rounded-t text-blue-900" >
               Formularios
            </router-link >
         </li>
         <li class="-mb-px mr-1">
            <router-link to="/proyecto/integrantes" class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900 cursor-pointer">
               Integrantes
            </router-link>
         </li>  
         </ul>  
      </div>
         
      
      <header class="flex items-center justify-between">
         <h2 class="text-lg leading-6 font-medium text-black">Fomularios</h2>
         <router-link to="/proyecto/formularios/nuevo/creador" class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor" class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Nuevo formulario
         </router-link>
      </header>
      <form class="relative mt-5">
         <svg width="20" height="20" fill="currentColor" class="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"></path>
         </svg>
         <input type="text" aria-label="Filtrar fomularios" placeholder="Filtrar fomularios" class="w-full text-sm text-black placeholder-gray-500 border border-gray-200 rounded-md py-2 pl-10 focus:border-light-blue-500 focus:outline-none focus:ring-1 focus:ring-light-blue-500">
      </form>
      <ul class="grid grid-cols-1 sm:grid-cols-1 lg:grid-cols-1 xl:grid-cols-4 gap-4 mt-5">
        
         <li class="" v-for="form in Forms" :key="form.id">
            <div class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-purple-200 hover:shadow-md">
               <dl class="grid sm:block lg:grid xl:block grid-cols-3 grid-rows-3 items-center">
                  <div>
                     <dt class="sr-only">Title</dt>
                     <dd class="leading-6 font-medium text-black group-hover:text-purple-900">{{ form.name }}</dd>
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
         </li>

<!--         
         <li class="">
            <div class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-purple-200 hover:shadow-md">
               <dl class="grid sm:block lg:grid xl:block grid-cols-2 grid-rows-2 items-center">
                  <div>
                     <dt class="sr-only">Title</dt>
                     <dd class="leading-6 font-medium text-black group-hover:text-purple-900">Variables ambientales</dd>
                  </div>
                  <div>
                     <dt class="sr-only">Category</dt>
                     <dd class="text-sm font-medium group-hover:text-light-blue-200 sm:mb-4 lg:mb-0 xl:mb-4">Sur-occidente del Huila</dd>
                  </div>
                  <div class="col-start-2 row-start-1 row-end-3">
                     <dt class="sr-only">Users</dt>
                     <dd class="flex justify-end sm:justify-start lg:justify-end xl:justify-start -space-x-2"><img src="https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1502685104226-ee32379fefbe?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"></dd>
                  </div>
               </dl>
            </div>
         </li>
         <li class="">
            <div class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-purple-200 hover:shadow-md">
               <dl class="grid sm:block lg:grid xl:block grid-cols-2 grid-rows-2 items-center">
                  <div>
                     <dt class="sr-only">Title</dt>
                     <dd class="leading-6 font-medium text-black group-hover:text-purple-900">Variables empresariales</dd>
                  </div>
                  <div>
                     <dt class="sr-only">Category</dt>
                     <dd class="text-sm font-medium group-hover:text-light-blue-200 sm:mb-4 lg:mb-0 xl:mb-4">Sur-occidente del Huila</dd>
                  </div>
                  <div class="col-start-2 row-start-1 row-end-3">
                     <dt class="sr-only">Users</dt>
                     <dd class="flex justify-end sm:justify-start lg:justify-end xl:justify-start -space-x-2"><img src="https://images.unsplash.com/photo-1546525848-3ce03ca516f6?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1502685104226-ee32379fefbe?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"></dd>
                  </div>
               </dl>
            </div>
         </li>

          <li class="">
            <div class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-purple-200 hover:shadow-md">
               <dl class="grid sm:block lg:grid xl:block grid-cols-2 grid-rows-2 items-center">
                  <div>
                     <dt class="sr-only">Title</dt>
                     <dd class="leading-6 font-medium text-black group-hover:text-purple-900">Mapa organoléptico</dd>
                  </div>
                  <div>
                     <dt class="sr-only">Category</dt>
                     <dd class="text-sm font-medium group-hover:text-light-blue-200 sm:mb-4 lg:mb-0 xl:mb-4">Sur-occidente del Huila</dd>
                  </div>
                  <div class="col-start-2 row-start-1 row-end-3">
                     <dt class="sr-only">Users</dt>
                     <dd class="flex justify-end sm:justify-start lg:justify-end xl:justify-start -space-x-2"><img src="https://images.unsplash.com/photo-1546525848-3ce03ca516f6?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1502685104226-ee32379fefbe?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"></dd>
                  </div>
               </dl>
            </div>
         </li>

         <li class="">
            <div class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-purple-200 hover:shadow-md">
               <dl class="grid sm:block lg:grid xl:block grid-cols-2 grid-rows-2 items-center">
                  <div>
                     <dt class="sr-only">Title</dt>
                     <dd class="leading-6 font-medium text-black group-hover:text-purple-900">Variables socioeconómicas</dd>
                  </div>
                  <div>
                     <dt class="sr-only">Category</dt>
                     <dd class="text-sm font-medium group-hover:text-light-blue-200 sm:mb-4 lg:mb-0 xl:mb-4">Sur-occidente del Huila</dd>
                  </div>
                  <div class="col-start-2 row-start-1 row-end-3">
                     <dt class="sr-only">Users</dt>
                     <dd class="flex justify-end sm:justify-start lg:justify-end xl:justify-start -space-x-2"><img src="https://images.unsplash.com/photo-1546525848-3ce03ca516f6?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1502685104226-ee32379fefbe?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"><img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80" alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white" loading="lazy"></dd>
                  </div>
               </dl>
            </div>
         </li> -->

      </ul>
   </div>
</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../services/SERVER_API"


export default {
    data(){
      return{
         name: 'Formularios',
         Forms: {}
      }
    },    
    mounted: function(){ 
      
      this.LoadFormsByUsers()

    },
    methods:{
      LoadFormsByUsers: function()
         {
         axios.post(API_ROUTER.PHP7_CONTROLLER+"form_load_by_users.php", 
            { 
               CodeUserPetition: 1
            }).then((response) => {
               this.Forms = response.data 
               
               console.log(response.data );
            })
            .catch(function (error) {
               console.log(error);
            })
         },        
       
    
    }
  }
</script>
