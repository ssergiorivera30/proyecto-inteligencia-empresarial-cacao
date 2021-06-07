<template>
   <div>

      <ServiceToptInfoBasic :ServiceStatus="parseInt(ServiceStatus)" :IdService="parseInt(this.$route.params.id_group)"/>

 

      <div class="grid grid-rows-3 grid-cols-1 sm:grid-cols-1 md:grid-cols-4 lg:grid-cols-6 gap-4 mt-3">

         <ServiceLeftInfoBasic v-if="ShowInfoBasic == 1" :ServiceName="ServiceName"
            :ServiceDescription="ServiceDescription" :arrayInfoResumenCustom="arrayInfoResumenCustom"
            :IdService="this.$route.params.id_group" />



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
                     <div><img class="" :src="Team" width="300" loading="lazy" /></div>
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
                        <div><img class="" :src="Grades" width="300" loading="lazy" /></div>
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
   import ServiceToptInfoBasic from './../../components/Utilidades/ServiceToptInfoBasic.vue'
   import ServiceLeftInfoBasic from './../../components/Utilidades/ServiceLeftInfoBasic.vue'


   export default {
      name: 'GrupoResumen',
      components: {
         NavBarSecondary,
         ServiceToptInfoBasic,
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
         LoadInfoService: function () {
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