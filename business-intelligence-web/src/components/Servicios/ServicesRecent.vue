<template>

<section class="max-w-lg px-4 py-12 mx-auto">
  <img class="mx-auto sm:w-1/4" src="https://kutty.netlify.app/empty.png" />
  <h2 class="mt-2 text-lg font-medium text-center text-gray-800">This is where you’ll manage your products</h2>
  <p class="mt-1 text-center text-gray-600">
    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod maxime maiores consectetur necessitatibus animi ea veniam optio eos! Id animi et excepturi earum aliquid deleniti.
  </p>
  <div class="flex flex-col items-center justify-center mt-4 space-y-1 md:flex-row md:space-y-0 md:space-x-1">
    <a href="#" class="w-full mx-2 py-2 px-4 text-white font-bold rounded-md bg-blue-900">Request access</a>
    <a href="#" class="w-full mx-2 py-2 px-4 text-gray-700 font-bold rounded-md bg-gray-200">Import products</a>
  </div>
</section>

   <header class="flex items-center justify-between px-2 my-5">
      <h2 class="text-lg font-bold leading-6 text-gray-800 dark:text-gray-100">Mis proyectos</h2>

       
    <div class="relative">
        <!-- Dropdown toggle button -->
        <button class=" flex p-2 bg-white rounded-md dark:bg-gray-800 focus:outline-none"  @click="DrowdownActionFunc"> Opciones
            <svg class="ml-2 w-5 h-5 text-gray-800 dark:text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
            </svg>
        </button>

        <!-- Dropdown menu -->
        <div class="absolute -right-1.5 w-48 py-2 mt-2 bg-white rounded-md shadow-xl dark:bg-gray-800" :class="DrowdownAction">
            <router-link to="/proyectos/nuevo-proyecto" class="block px-4 py-2 text-sm text-gray-700 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-blue-500 hover:text-white dark:hover:text-white">
               Crear proyecto
            </router-link>
            <a href="#" class="block px-4 py-2 text-sm text-gray-700 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-blue-500 hover:text-white dark:hover:text-white">
                Ocultar proyectos
            </a>         
        </div>
    </div>
      <!-- <router-link to="/proyectos/nuevo-proyecto"
         class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-0 py-2 cursor-pointer">
         <i class='bx bx-dots-vertical-rounded'></i> Agregar proyecto
      </router-link> -->
   </header>








   <ul class="grid grid-cols-1 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 my-5 ">     

      <div
         v-for="projects in ArrayProjects" :key="projects" 
         class="flex items-center justify-center py-2 px-0">
            <div class="md:w-96 rounded shadow-lg py-4 px-2 md:px-4 bg-white dark:bg-gray-800">
                <h1 class="text-lg font-bold leading-6 text-gray-500 dark:text-gray-100">
                   <span v-if="projects.name.length > 60">{{ projects.name.substring(0,62) }}...</span>
                  <span v-else>{{ projects.name }}.<br><br><br></span></h1>
                <h2 class="pt-2 text-xs leading-4 dark:text-gray-400 text-gray-600 dark:text-gray-500">Empresa: Servicio Nacional de Aprendizaje - SENA</h2>
                <p class="pt-4 text-xs leading-4 text-gray-600 dark:text-gray-500">Join Tailwind UI Kit’s discord community and kickstart your next project with beautiful, accessible user interfaces.</p>
                <div class="flex items-center pt-4">
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 border-dashed border flex items-center justify-center cursor-pointer rounded-full">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-plus" width="16" height="16" viewBox="0 0 24 24" stroke-width="1.5" stroke="#D1D5DB" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <line x1="12" y1="5" x2="12" y2="19" />
                            <line x1="5" y1="12" x2="19" y2="12" />
                        </svg>
                    </div>
                </div>
                <div class="mt-6">
                    <p class="text-sm font-semibold text-indigo-700 leading-none text-right pb-1">73%</p>
                </div>
                <div class="w-full h-2 bg-gray-200 rounded-full">
                    <div class="h-2 w-60 bg-gradient-to-r from-blue-700 via-indigo-600 to-purple-600 rounded-full"></div>
                </div>
                <button @click="this.$router.push('/proyecto/ver/detalles/'+ projects.id)" class="focus:outline-none text-indigo-700 hover:opacity-50 bg-gray-100 text-sm font-medium py-3 w-full rounded mt-5">Ver detalles del proyecto</button>
            </div>
        </div>

   </ul>

<header class="flex items-center justify-between px-2">
      <h2 class="text-lg font-bold leading-6 text-gray-800 dark:text-gray-100">Sistemas</h2>
   </header>


    <ul class="grid grid-cols-1 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 mt-5">
      <div 
         v-for="projects in ArrayProjects" :key="projects" 
         class="md:w-96 rounded shadow-lg py-4 px-2 md:px-4 bg-white dark:bg-gray-800">
         <div class="flex">
            <div class="py-5 w-4/5">
                  <h1 class="text-lg font-bold leading-6 text-gray-500 dark:text-gray-100">
                  <span v-if="projects.name.length > 60">{{ projects.name.substring(0,62) }}...</span>
                  <span v-else>{{ projects.name }}.<br><br><br></span></h1>
                  <h2 class="pt-2 text-xs leading-4 dark:text-gray-400 text-gray-600 dark:text-gray-500">Empresa: Servicio Nacional de Aprendizaje - SENA</h2>
                  <p class="pt-4 text-xs leading-4 text-gray-600 dark:text-gray-500">Join Tailwind UI Kit’s discord community and kickstart your next project with beautiful, accessible user interfaces.</p>
                  <div class="flex items-center pt-4">
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 border-dashed border flex items-center justify-center cursor-pointer rounded-full">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-plus" width="16" height="16" viewBox="0 0 24 24" stroke-width="1.5" stroke="#D1D5DB" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <line x1="12" y1="5" x2="12" y2="19" />
                            <line x1="5" y1="12" x2="19" y2="12" />
                        </svg>
                    </div>
                </div>
                
            </div>
            
            <div class="px-3 w-1/5	">
               <img src="https://i.ibb.co/34gPtCT/bg.png" alt="medal" />
            </div>
         </div>
         <div class="px-0">
            <button @click="this.$router.push('/proyecto/ver/detalles/'+ projects.id)" class="focus:outline-none text-indigo-700 hover:opacity-50 bg-gray-100 text-sm font-medium py-3 w-full rounded mt-5">Ver detalles del proyecto</button>
         </div>
         
      </div>
    </ul>
</template>

<script>

   import axios from 'axios';
   import API_ROUTER from './../../services/SERVER_API'

   export default {
      data() {
         return {
            name: 'ServicesRecent',
            DrowdownAction: 'hidden',
            ImgDatabase: API_ROUTER.API_UI + 'icons/database.png',
            ImgForm: API_ROUTER.API_UI + 'icons/formulario.png',
            ImgProyectos: API_ROUTER.API_UI + 'icons/proyectos.jpg',
            ImgMaps: API_ROUTER.API_UI + 'icons/maps.jpg',
            Imgkanban: API_ROUTER.API_UI + 'icons/Imgkanban.webp',

            ArrayProjects: [],
         }
      },
      mounted: function () {
         this.LoadProjects()

      },
      methods: {
         DrowdownActionFunc(){

            this.DrowdownAction = this.DrowdownAction === 'hidden' ? 'block' : 'hidden'

         },
         LoadProjects: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "project_load.php",
               {
                  UserService: 1,
               }).then((res) => {

                  this.ArrayProjects = res.data

               }).catch(() => {

                  alert('Error de conexión')

               })
         },
       
      }
   }
</script>