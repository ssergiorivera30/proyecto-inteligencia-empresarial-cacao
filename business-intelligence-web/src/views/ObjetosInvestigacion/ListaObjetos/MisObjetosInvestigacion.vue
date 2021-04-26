<template>
   <div class="mt-5">   
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
   </div>
</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../../services/SERVER_API"


export default {
    data(){
      return{
         name: 'MisObjetosInvestigacion',
         Forms: {}
      }
    },    
    mounted: function(){      
      this.LoadFormsByUsers()
    },
    methods:{
      LoadFormsByUsers: function()
         {
         axios.post(API_ROUTER.PHP7_CONTROLLER+"objetos_load_by_users.php", 
            { 
               CodeUserPetition: 1
            }).then((response) => {
               this.Forms = response.data
            })
            .catch(()=> {
               alert('Error de conexión')
            })
         },   
    }
  }
</script>
