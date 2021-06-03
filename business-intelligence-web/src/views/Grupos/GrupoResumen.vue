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
         <div v-if="ShowInfoBasic == 1" class="col-span-2 row-span-3 bg-white shadow overflow-hidden rounded-sm">            
   
            <div class="" >               
               <div class="px-3 py-3 ">
                  <h3 class="text-md leading-6 font-medium text-gray-600">
                     {{ ServiceName}}
                  </h3>
                  <p class="mt-3 max-w-2xl text-sm text-gray-500">
                     {{ ServiceDescription }}
                  </p>
               </div>
               <div class="border-t border-gray-200">
                  <dl>
                     <div v-for="(info, index) in arrayInfoResumenCustom" :key="info">   

                        <div v-if="index <= 10">

           
                        <div v-if="index % 2 == true"                      
                           class="bg-white px-3 py-3 sm:grid sm:grid-cols-3 sm:gap-4'">
                           <dt class="text-sm font-medium text-gray-500">
                              {{ info['input']['name'] }}
                           </dt>
                           <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                              {{ info['input']['value'] }}
                           </dd>
                        </div>


                        <div v-else                      
                           class="bg-gray-50 px-3 py-3 sm:grid sm:grid-cols-3 sm:gap-4'">
                           <dt class="text-sm font-medium text-gray-500">
                              {{ info['input']['name'] }}
                           </dt>
                           <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                              {{ info['input']['value'] }}
                           </dd>
                        </div>

                        </div> 


                     </div>


                     
                     <div class="bg-white px-3 py-3 sm:grid sm:grid-cols-3 sm:gap-4">
                        <dt class="text-sm font-medium text-gray-500">
                           Adjuntos
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           <ul class="border border-gray-200 rounded-md divide-y divide-gray-200">
                              <li class="pl-3 pr-4 py-3 flex items-center justify-between text-sm">
                                 <div class="w-0 flex-1 flex items-center">
                                    <!-- Heroicon name: solid/paper-clip -->
                                    <svg class="flex-shrink-0 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg"
                                       viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                       <path fill-rule="evenodd"
                                          d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z"
                                          clip-rule="evenodd" />
                                    </svg>
                                    <span class="ml-2 flex-1 w-0 truncate">
                                       resume_back_end_developer.pdf
                                    </span>
                                 </div>
                                 <div class="ml-4 flex-shrink-0">
                                    <a href="#" class="font-medium text-indigo-600 hover:text-indigo-500">
                                       Descargar
                                    </a>
                                 </div>
                              </li>
                              <li class="pl-3 pr-4 py-3 flex items-center justify-between text-sm">
                                 <div class="w-0 flex-1 flex items-center">
                                    <!-- Heroicon name: solid/paper-clip -->
                                    <svg class="flex-shrink-0 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg"
                                       viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                       <path fill-rule="evenodd"
                                          d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z"
                                          clip-rule="evenodd" />
                                    </svg>
                                    <span class="ml-2 flex-1 w-0 truncate">
                                       coverletter_back_end_developer.pdf
                                    </span>
                                 </div>
                                 <div class="ml-4 flex-shrink-0">
                                    <a href="#" class="font-medium text-indigo-600 hover:text-indigo-500">
                                       Descargar
                                    </a>
                                 </div>
                              </li>
                           </ul>
                        </dd>
                     </div>

                      <router-link 
                        :to="'/service/info/basic/'+this.$route.params.id_group" 
                        class="mx-2 my-5 bg-gray-200 flex justify-center  hover:bg-gray-300 rounded text-gray-700 px-6 py-2 text-sm font-semibold">
                           Ver más
                     </router-link>

                  </dl>
               </div>
            </div>
         </div>

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

import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'
import axios from 'axios';
import API_ROUTER from './../../services/SERVER_API'

   export default {
      name: 'GrupoResumen',
      components: {
         NavBarSecondary
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