<template>
   <div class="">

      <header class="flex items-center justify-between">
         <h2 class="px-3 text-lg leading-6 font-medium text-black"># {{ this.$route.params.id_project }} - Información general</h2>
          <router-link :to="'/constructor-service/'+ this.$route.params.id_project"
            class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-6 group-hover:text-light-blue-600 text-light-blue-500 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
               <path stroke-linecap="round" stroke-linejoin="round" 
                  stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
            </svg>
            Actualizar información
         </router-link>
      </header>
   
      <div class="grid grid-rows-3 grid-cols-1 sm:grid-cols-1 md:grid-cols-4 lg:grid-cols-6 gap-4 mt-3">
         
            <ServiceLeftInfoBasic 
               v-if="ShowInfoBasic == 1"
               :ServiceName="ServiceName"
               :ServiceDescription="ServiceDescription"
               :arrayInfoResumenCustom="arrayInfoResumenCustom"
               :IdService="this.$route.params.id_project"/>


         <div class="row-span-3 col-span-2 bg-white shadow overflow-hidden rounded-sm">
            <div class="px-3 py-3">
                  <h3 class="text-lg leading-6 font-medium text-gray-600">
                     Estadísticas del proyecto
                  </h3>
                  <p class="mt-3 max-w-2xl text-sm text-gray-500">
                     Información general
                  </p>
               </div>
            <div class="px-4">
               <div class="flex items-center justify-center">
                  <form class="bg-white rounded px-8 pt-6 pb-8 mb-4">
                  <div><img class="" :src="Team" width="300" loading="lazy"/></div>
                  </form>
               </div>
            </div>
         </div>
         
         <div class="row-span-3 col-span-2 bg-white shadow overflow-hidden rounded-sm">
            <div class="px-3 py-3">
                  <h3 class="text-lg leading-6 font-medium text-gray-600">
                     Actividad reciente
                  </h3>
                  <p class="mt-3 max-w-2xl text-sm text-gray-500">
                     Actividad de usuarios del proyecto
                  </p>
               </div>
            <div class="px-4">
               <div class="">
               <div class="flex items-center">
                  <form class="bg-white rounded pt-6 pb-8 mb-4">
                  <div><img class="" :src="Grades" width="300" loading="lazy"/></div>
                  </form>
               </div>
            </div>
            </div>
         </div>

         
      </div>



      

   </div>
</template>

<script>


import axios from 'axios';
import API_ROUTER from './../../services/SERVER_API'

import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'
import ServiceLeftInfoBasic from './../../components/Utilidades/ServiceLeftInfoBasic.vue'

   export default {
      name: 'ProyectoResumen',
      components: {
         NavBarSecondary,
         ServiceLeftInfoBasic
      },
      data() {
         return {
           
            RoutesNavs: [
               { Linkroute: '/proyecto/detalles', nameRoute: 'Detalles' },
               { Linkroute: '/proyecto/formularios', nameRoute: 'Recolección de datos' },
               { Linkroute: '/proyecto/integrantes', nameRoute: 'Integrantes' },
            ],

            Team: API_ROUTER.API_UI + "chart/chart.svg",
            Grades: API_ROUTER.API_UI + "chart/grades.svg",
            Text: API_ROUTER.API_UI + "chart/text.svg",

            arrayInfoResumenCustom: [],
            ServiceName : '',
            ServiceDescription : '',
            ShowInfoBasic: 0,
         }
      },
      beforeMount: function () {

   

      },
      mounted: function () {
         this.LoadIdProject()
      },
      methods: {
         LoadIdProject :function(){
         axios.post(API_ROUTER.PHP7_CONTROLLER + "projects/load_project_resumen.php",
            {
               id_service: this.$route.params.id_project,
            }).then((res) => {

               this.ServiceName = res.data[0]['name']
               this.ServiceDescription = res.data[0]['description']
               
               this.arrayInfoResumenCustom = JSON.parse(res.data[0]['json_input_data'])
               this.ShowInfoBasic = 1

            }).catch(() => {
               
               this.ShowInfoBasic = 0

         })
      },
      }
   }
</script>