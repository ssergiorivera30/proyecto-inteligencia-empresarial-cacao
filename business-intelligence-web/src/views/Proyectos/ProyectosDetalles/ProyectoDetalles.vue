<template>
   <div class="">



      <header class="flex items-center justify-between">
         <h2 class="px-4 text-lg leading-6 font-medium text-black">Detalles</h2>
         <router-link to="/proyectos/nuevo-proyecto"
            class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor"
               class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd"
                  d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Nuevo
         </router-link>


      </header>
   
      <div class="grid grid-rows-3 grid-cols-1 sm:grid-cols-1 md:grid-cols-4 lg:grid-cols-6 gap-4 mt-3">
         <div class="col-span-2 row-span-3 bg-white shadow overflow-hidden sm:rounded-lg">
            
            <!-- This example requires Tailwind CSS v2.0+ -->
            <div class="">
               <div class="px-4 py-3 sm:px-6">
                  <h3 class="text-lg leading-6 font-medium text-gray-900">
                     Información del proyecto
                  </h3>
                  <p class="mt-3 max-w-2xl text-sm text-gray-500">
                     Estrategias Tecnológicas para el fortalecimiento de la cadena productiva del cacao en el deparatmento del Huila.
                  </p>
               </div>
               <div class="border-t border-gray-200">
                  <dl>
                     <div class="bg-gray-50 px-4 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">
                           Autores
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           Margot Foster <br>   
                           Margot Foster

                        </dd>
                     </div>
                     <div class="bg-white px-4 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">
                           Equipo Ejecutor
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           Sergio Yamit Rivera Flor <br>
                           Yubeli Matinez Sanchez<br>
                           Elder Rendon Rengifo<br>
                           Dennis Milena Villamil<br>
                           Edison Ortega <br>
                           Daniel Rodriguez

                        </dd>
                     </div>
                     <div class="bg-gray-50 px-4 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">
                           Áreas de conocimiento
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           margotfoster@example.com
                        </dd>
                     </div>
                     <div class="bg-white px-4 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">
                           Valor total del proyecto
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           $120,000
                        </dd>
                     </div>
                     <div class="bg-gray-50 px-4 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">
                           Objetivo general
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           Fugiat ipsum ipsum deserunt culpa aute sint do nostrud anim incididunt cillum culpa
                           consequat. Excepteur qui ipsum aliquip consequat sint. Sit id mollit nulla mollit nostrud in
                           ea officia proident. Irure nostrud pariatur mollit ad adipisicing reprehenderit deserunt qui
                           eu.
                        </dd>
                     </div>
                     <div class="bg-white px-4 py-3 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">
                           Ajuntos
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
                                       Download
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
                                       Download
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

         <div class="col-span-2 bg-white shadow overflow-hidden sm:rounded-lg ">
            <div class="px-4">
               a Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio
               fugiat dignissimos fuga ea at
               laboriosam consequuntur necessitatibus nulla, deleniti explicabo velit, qui cupiditate. Inventore illum
               omnis odit itaque rerum expedita.
            </div>
         </div>
         <div class="row-span-2 col-span-2 bg-white shadow overflow-hidden sm:rounded-lg">
            <div class="px-4">
               b Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio
               fugiat dignissimos fuga ea at
               laboriosam consequuntur necessitatibus nulla, deleniti explicabo velit, qui cupiditate. Inventore illum
               omnis odit itaque rerum expedita.
            </div>
         </div>

         <div class="row-span-3 col-span-2 bg-white shadow overflow-hidden sm:rounded-lg">
            <div class="px-4">
               c Lorem ipsum dolor sit amet consectetur adipisicing elit. a Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio
               fugiat dignissimos fuga ea at
               laboriosam consequuntur necessitatibus nulla, deleniti explicabo velit, qui cupiditate. Inventore illum
               omnis odit itaque rerum expedita.
            </div>

            <div class="px-4">
               d Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio
               fugiat dignissimos fuga ea at
               laboriosam consequuntur necessitatibus nulla, deleniti explicabo velit, qui cupiditate. Inventore illum
               omnis odit itaque rerum expedita.
            </div>
         </div>
      </div>


      <ul class="grid grid-cols-1 sm:grid-cols-1 lg:grid-cols-1 xl:grid-cols-4 gap-4 mt-5">
         <!-- <router-link to="/proyectos/nuevo-proyecto"  class="hover:shadow-lg flex rounded-lg">
            <div class="hover:border-purple-200 hover:shadow-md w-full flex items-center justify-center rounded-lg border-2 border-dashed border-gray-200 text-sm font-medium py-4 cursor-pointer">
               Nuevo proyecto
            </div>
         </router-link> -->





         <router-link to="/hola">
            <div
               class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-purple-200 hover:shadow-md">
               <dl class="grid sm:block lg:grid xl:block grid-cols-3 grid-rows-3 items-center">
                  <div>
                     <dt class="sr-only">Title</dt>
                     <dd class="leading-6 font-medium text-black group-hover:text-purple-900">Estrategias Tecnológicas
                        para el fortalecimiento de la cadena...</dd>
                  </div>
                  <div class="mt-4">
                     <dt class="sr-only">Category</dt>
                     <dd class="text-sm font-medium group-hover:text-light-blue-200 sm:mb-4 lg:mb-0 xl:mb-4">Cacao</dd>
                  </div>
                  <div class="col-start-2 row-start-1 row-end-3">
                     <dt class="sr-only">Users</dt>
                     <dd class="flex justify-end sm:justify-start lg:justify-end xl:justify-start -space-x-2"><img
                           src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80"
                           alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white"
                           loading="lazy"><img
                           src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80"
                           alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white"
                           loading="lazy"><img
                           src="https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80"
                           alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white"
                           loading="lazy"><img
                           src="https://images.unsplash.com/photo-1546525848-3ce03ca516f6?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80"
                           alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white"
                           loading="lazy"><img
                           src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80"
                           alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white"
                           loading="lazy"></dd>
                  </div>
               </dl>
            </div>
         </router-link>
      </ul>
   </div>
</template>

<script>

   import NavBarSecondary from './../../../components/Utilidades/NavBarSecondary.vue'

   export default {
      components: {
         NavBarSecondary
      },
      data() {
         return {
            name: 'ProyectoDetalles',
            RoutesNavs: [
               { Linkroute: '/proyecto/detalles', nameRoute: 'Detalles' },
               { Linkroute: '/proyecto/formularios', nameRoute: 'Recolección de datos' },
               { Linkroute: '/proyecto/integrantes', nameRoute: 'Integrantes' },
            ]
         }
      },
      beforeMount: function () {

      },
      mounted: function () {
         //  console.log(this.$params);

      },
      methods: {


      }
   }
</script>