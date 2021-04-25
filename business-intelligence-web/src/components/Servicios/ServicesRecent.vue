<template>


   <header class="flex items-center justify-between">
      <h2 class="text-md leading-6 font-medium text-black">Mis servicios</h2>
      <span class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-0 py-2 cursor-pointer">
         <i class='bx bx-dots-vertical-rounded'></i>
      </span>
   </header>

   <ul class="grid grid-cols-1 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-4 gap-4 mt-5">

      <router-link v-for="projects in ArrayProjects" :key="projects" :to="'/proyecto/ver/detalles/'+ projects.id">
         <div
            class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-blue-900 hover:shadow-md">
            <dl class="grid items-center">
               <div>
                  <dd class="leading-6 font-medium text-black group-hover:text-blue-900">
                     <span v-if="projects.name.length > 60">{{ projects.name.substring(0,62) }}...</span>
                     <span v-else>{{ projects.name }}.<br><br></span>
                  </dd>
               </div>

               <div class="my-3">
                  <dd class="text-sm font-medium text-gray-400 group-hover:text-light-blue-200">{{ projects.create_date }}</dd>
               </div>

               <!-- <div class="">
                  <dd class="flex justify-start sm:justify-start lg:justify-start xl:justify-start -space-x-2">
                     <img
                        src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80"
                        alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white"
                        loading="lazy">                   
                  </dd>
               </div> -->

            </dl>
         </div>
      </router-link>

      <router-link to="/proyectos/nuevo-proyecto" class="hover:shadow-lg flex rounded-lg">
         <div
            class="hover:border-blue-900 hover:shadow-md w-full flex items-center justify-center rounded-lg border-2 border-dashed border-gray-200 text-sm font-medium py-4 cursor-pointer">
            Nuevo proyecto
         </div>
      </router-link>

   </ul>
</template>

<script>

   import axios from 'axios';
   import API_ROUTER from './../../services/SERVER_API'

   export default {
      data() {
         return {
            name: 'ServicesRecent',
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