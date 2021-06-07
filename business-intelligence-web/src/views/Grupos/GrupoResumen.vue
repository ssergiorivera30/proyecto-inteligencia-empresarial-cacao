<template>
   <div class="">

         <header class="flex items-center justify-between">

            <div class="flex">

                <h2 class="px-3 text-lg leading-6 font-semibold text-gray-600">#{{ this.$route.params.id_group }} &nbsp;</h2>

         <span v-if="ServiceStatus == 1" class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none bg-green-200 text-green-800 rounded-full"><span class="hidden md:flex mr-1" >Grupo</span>activo</span>
         
         <span v-else class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-red-100 bg-red-600 rounded-full">Grupo Inactivo</span>

            </div>
        
        

         <div class="flex">
                <div class="px-6 flex items-center flex-no-wrap">
                    <div class="w-12 h-12 bg-cover bg-center rounded-md">
                        <img src="https://tuk-cdn.s3.amazonaws.com/assets/components/avatars/a_4_0.png" alt="" class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow" />
                    </div>
                    <div class="w-12 h-12 bg-cover rounded-md -ml-2">
                        <img src="https://tuk-cdn.s3.amazonaws.com/assets/components/avatars/a_4_1.png" alt="" class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow" />
                    </div>
                    <div class="w-12 h-12 bg-cover rounded-md bg-center -ml-2">
                        <img src="https://tuk-cdn.s3.amazonaws.com/assets/components/avatars/a_4_2.png" alt="" class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow" />
                    </div>
                    <div class="w-12 h-12 bg-cover rounded-md -ml-2">
                        <img src="https://tuk-cdn.s3.amazonaws.com/assets/components/avatars/a_4_3.png" alt="" class="h-full w-full overflow-hidden object-cover object-center rounded-full border-2 border-white dark:border-gray-700 shadow" />
                    </div>
                    <div class="w-12 h-12 bg-cover rounded-md -ml-2">
                        <img src="https://tuk-cdn.s3.amazonaws.com/assets/components/avatars/a_4_4.png" alt="" class="h-full w-full overflow-hidden object-cover object-center rounded-full border-2 border-white dark:border-gray-700 shadow" />
                    </div>
                </div>
            

         <router-link :to="'/constructor-service/'+ this.$route.params.id_group"
            class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 group-hover:text-light-blue-600 text-light-blue-500 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
               <path stroke-linecap="round" stroke-linejoin="round" 
                  stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
            </svg>
           <span class="hidden md:flex"> Actualizar información</span>
         </router-link>
                </div>

      </header>
   
      <div class="grid grid-rows-3 grid-cols-1 sm:grid-cols-1 md:grid-cols-4 lg:grid-cols-6 gap-4 mt-3">

         <ServiceLeftInfoBasic 
            v-if="ShowInfoBasic == 1"
            :ServiceName="ServiceName"
            :ServiceDescription="ServiceDescription"
            :arrayInfoResumenCustom="arrayInfoResumenCustom"
            :IdService="this.$route.params.id_group"/>

         

         <div class="row-span-3 col-span-2 bg-white shadow overflow-hidden rounded-sm">
            <div class="px-3 py-3">
                  <h3 class="text-lg leading-6 font-medium text-gray-600">
                     Estadísticas del grupo
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
                     Actividad de usuarios del grupo
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
      name: 'GrupoResumen',
      components: {
         NavBarSecondary,
         ServiceLeftInfoBasic
      },
      data() {
         return {

            ClassColored: 'bg-gray-50',
           
            RoutesNavs: [
               { Linkroute: '/proyecto/detalles', nameRoute: 'Detalles' },
               { Linkroute: '/proyecto/formularios', nameRoute: 'Recolección de datos' },
               { Linkroute: '/proyecto/integrantes', nameRoute: 'Integrantes' },
            ],

            Team: API_ROUTER.API_UI + "chart/chart.svg",
            Grades: API_ROUTER.API_UI + "chart/grades.svg",
            Text: API_ROUTER.API_UI + "chart/text.svg",

            ServiceName: '',
            ServiceDescription: '',
            ServiceStatus: 1,
            arrayInfoResumenCustom: [],
            ShowInfoBasic: 0,
         }
      },
      beforeMount: function () {

   

      },
      mounted: function () {
         this.LoadInfoService()
      },
      methods: {
         LoadInfoService :function(){
         axios.post(API_ROUTER.PHP7_CONTROLLER + "groups/service_group_load_resumen.php",
            {
               id_service: this.$route.params.id_group,
            }).then((res) => {
               
               this.ServiceName = res.data[0]['name']
               this.ServiceDescription = res.data[0]['description']
               this.ServiceStatus = res.data[0]['status']

               this.arrayInfoResumenCustom = JSON.parse(res.data[0]['data_json'])

               this.ShowInfoBasic = 1

            }).catch(() => {
               
               this.ShowInfoBasic = 0

         })
      },


      }
   }
</script>