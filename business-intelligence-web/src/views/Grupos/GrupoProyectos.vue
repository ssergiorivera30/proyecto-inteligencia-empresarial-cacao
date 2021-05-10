<template>

<header class="flex items-center justify-between px-2 my-5">
    <h2 class="text-lg font-bold leading-6 text-gray-600">Proyectos registrados</h2>      
    <div class="relative">
        <router-link to="/create-service/2" class=" flex p-2 rounded-md bg-gray-200">
            <span class="text-xs font-medium leading-none text-black">Nuevo proyecto</span>
        </router-link >
    </div>
</header>

                            <!-- :to="'/formulario/ver/datos/'+form.id+'/ob'" -->


     <div class="w-full">
            
            <div class="bg-white shadow overflow-y-auto">
                <table class="w-full whitespace-nowrap">
                    <tbody class="w-full">
                        <tr v-for="info in Entitys" :key="info"
                            @click="this.$router.push('/p/detalle/'+ info.id)"


                            class="cursor-pointer h-20 text-sm leading-none text-gray-800 bg-white hover:bg-gray-100 border-b border-gray-100">
                            <td class="pl-4 cursor-pointer">
                                <div class="flex items-center">
                                    <div class="w-10 h-10">
                                         <img class="w-full h-full" src="https://cdn.tuk.dev/assets/templates/olympus/projects.png" />
                                    </div>
                                    <div class="pl-4">
                                        <p v-if="info.name.length > 36" class="font-medium">{{ info.name.substring(0,36) }}...</p>
                                        <p v-else class="font-medium">{{ info.name }}</p>

                                        <p  v-if="info.description.length > 28" class="text-xs leading-3 text-gray-600 pt-2">{{ info.description.substring(0,28) }}...</p>
                                        <p v-else class="text-xs leading-3 text-gray-600 pt-2">{{ info.description }}</p>
                                    </div>
                                </div>
                            </td>
                            <td class="hidden pl-12">
                                <p class="text-sm font-medium leading-none text-gray-800">72%</p>
                                <div class="w-24 h-3 bg-gray-100 rounded-full mt-2">
                                    <div class="w-20 h-3 bg-green-progress rounded-full"></div>
                                </div>
                            </td>
                            <td class="hidden pl-12">
                                <p class="font-medium">32/47</p>
                                <p class="text-xs leading-3 text-gray-600 mt-2">5 tasks pending</p>
                            </td>
                            <td class="hidden pl-20">
                                <p class="font-medium">$13,000</p>
                                <p class="text-xs leading-3 text-gray-600 mt-2">$4,200 left</p>
                            </td>
                            <td class="hidden pl-20">
                                <p class="font-medium">22.12.21</p>
                                <p class="text-xs leading-3 text-gray-600 mt-2">34 days</p>
                            </td>
                            <td class="hidden pl-16">
                                <div class="flex items-center">
                                    <img class="shadow-md w-8 h-8 rounded-full" src="https://cdn.tuk.dev/assets/templates/olympus/projects(8).png" />
                                    <img class="shadow-md w-8 h-8 rounded-full -ml-2" src="https://cdn.tuk.dev/assets/templates/olympus/projects(9).png" />
                                    <img class="shadow-md w-8 h-8 rounded-full -ml-2" src="https://cdn.tuk.dev/assets/templates/olympus/projects(10).png" />
                                    <img class="shadow-md w-8 h-8 rounded-full -ml-2" src="https://cdn.tuk.dev/assets/templates/olympus/projects(11).png" />
                                </div>
                            </td>                           
                        </tr>
                     
                    </tbody>
                </table>
            </div>
        </div>



   <!-- <div class="mt-5">   
      <form class="relative mt-5" v-if="Forms.length >= 8">
         <svg width="20" height="20" fill="currentColor" class="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"></path>
         </svg>
         <input type="text" aria-label="Filtrar fomularios" placeholder="Filtrar fomularios" class="w-full text-sm text-black placeholder-gray-500 border border-gray-200 rounded-md py-2 pl-10 focus:border-light-blue-500 focus:outline-none focus:ring-1 focus:ring-light-blue-500">
      </form>
      <ul class="grid grid-cols-1 sm:grid-cols-1 md:grid-cols-4 gap-4 mt-5">
      <router-link v-for="form in Forms" :key="form.id" :to="'/formulario/ver/datos/'+form.id+'/ob'">
         <div class="group cursor-pointer rounded-lg p-4 border border-gray-200 hover:bg-light-blue-500 hover:border-blue-100 hover:shadow-md">
            <dl class="grid items-center">
               <div>
                  <dd class="leading-6 font-medium text-black group-hover:text-blue-900">
                     <span v-if="form.name.length > 42">{{ form.name.substring(0,42) }}...</span>
                     <span v-else>{{ form.name }}</span>
                  </dd>
               </div>
               <div class="my-3">
                  <dd class="text-xs text-gray-400 group-hover:text-light-blue-200">
                     <span v-if="form.description.length > 42">{{ form.description.substring(0,42) }}...<br></span>
                     <span v-else>{{ form.description }}.</span>
                  </dd>                  
               </div>
               <div class="">
                  <dd class="flex justify-start sm:justify-start lg:justify-start xl:justify-start -space-x-2">
                     <img
                        src="https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&amp;fit=facearea&amp;facepad=2&amp;w=48&amp;h=48&amp;q=80"
                        alt="" width="48" height="48" class="w-7 h-7 rounded-full bg-gray-100 border-2 border-white"
                        loading="lazy">
                  </dd>
               </div>
            </dl>
         </div>
      </router-link>
   </ul>
   </div> -->
</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../services/SERVER_API"


export default {
   name: 'GrupoProyectos',
    data(){
      return{
         
         Entitys: {}
      }
    },    
    mounted: function(){      
      this.LoadFormsByUsers()
    },
    methods:{
      LoadFormsByUsers: function()
         {
         axios.post(API_ROUTER.PHP7_CONTROLLER+"entitys/load_my_entitys.php", 
            { 
               type_service: 2
            }).then((response) => {
               
               this.Entitys = response.data.datos
            })
            .catch(()=> {
               alert('Error de conexión')
            })
         },   
    }
  }
</script>
