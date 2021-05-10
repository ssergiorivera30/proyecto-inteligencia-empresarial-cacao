<template>
   <div class="">

      <header class="flex items-center justify-between">
         <h2 class="px-3 text-lg leading-6 font-medium text-black"># {{ this.$route.params.id_project }}</h2>
         <span 
            class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor"
               class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd"
                  d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Ayuda
         </span>
      </header>
   
      <div class="grid grid-rows-3 grid-cols-1 sm:grid-cols-1 md:grid-cols-4 lg:grid-cols-6 gap-4 mt-3">
         <div class="col-span-2 row-span-3 bg-white shadow overflow-hidden rounded-sm">
            
            <!-- This example requires Tailwind CSS v2.0+ -->
            <div class="" v-for="project in InfoGroup" :key="project">
               <div class="px-1 py-3 sm:px-3">
                  <h3 class="text-lg leading-6 font-medium text-gray-900">
                     Información del proyecto
                  </h3>
                  <p class="mt-3 max-w-2xl text-sm text-gray-500">
                     {{ project.pro_name }}
                  </p>
               </div>
               <div class="border-t border-gray-200">
                  <dl>
                     <div class="bg-gray-50 px-1 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-3">
                        <dt class="text-sm font-medium text-gray-500">
                           Códigos del proyecto
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           {{ project.prco_code }} - {{ project.prco_entity }}
                        </dd>
                     </div>
                     <div class="bg-gray-50 px-1 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-3">
                        <dt class="text-sm font-medium text-gray-500">
                           Autores
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           ...
                        </dd>
                     </div>
                     <div class="bg-white px-1 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-3">
                        <dt class="text-sm font-medium text-gray-500">
                           Equipo Ejecutor
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           ...
                        </dd>
                     </div>
                     <div class="bg-gray-50 px-1 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-3">
                        <dt class="text-sm font-medium text-gray-500">
                           Áreas de conocimiento
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           ...
                        </dd>
                     </div>
                     <div class="bg-white px-1 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-3">
                        <dt class="text-sm font-medium text-gray-500">
                           Valor total del proyecto
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           ...
                        </dd>
                     </div>
                     <div class="bg-gray-50 px-1 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-3">
                        <dt class="text-sm font-medium text-gray-500">
                           Objetivo general
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">...
                        </dd>
                     </div>
                     <div class="bg-white px-1 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-3">
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
                  </dl>
               </div>
            </div>
         </div>

         <div class="row-span-3 col-span-2 bg-white shadow overflow-hidden rounded-sm">
            <div class="px-4">
               <div class="flex items-center justify-center">
                  <form class="bg-white rounded px-8 pt-6 pb-8 mb-4">
                  <div><img class="" :src="Team" width="300" loading="lazy"/></div>
                  </form>
               </div>
            </div>
         </div>
         
         <div class="row-span-3 col-span-2 bg-white shadow overflow-hidden rounded-sm">
            <div class="px-4">
               <div class="px-4">
               <div class="flex items-center justify-center">
                  <form class="bg-white rounded px-8 pt-6 pb-8 mb-4">
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
      name: 'ProyectoResumen',
      components: {
         NavBarSecondary
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

             InfoGroup: [],
         }
      },
      beforeMount: function () {

   

      },
      mounted: function () {
         this.LoadIdProject()
      },
      methods: {
         LoadIdProject :function(){
         axios.post(API_ROUTER.PHP7_CONTROLLER + "groups/load_basic_group.php",
            {
               id_group: this.$route.params.id_project,
            }).then((res) => {
               
               this.InfoGroup = res.data

            }).catch(() => {
               
               alert('Error de conexión')

         })
      },


      }
   }
</script>