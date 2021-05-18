<template>

<header class="flex items-center justify-between px-2 my-5">
    <h2 class="text-lg font-bold leading-6 text-gray-600">Proyectos registrados</h2>      
    <div class="relative">
        <router-link to="/create-service/2" class="flex p-2 rounded-md bg-gray-200">
            <span class="text-xs font-medium leading-none text-black">Nuevo proyecto</span>
        </router-link >
    </div>
</header>

 <div class="my-5">   
      <form class="relative mt-5" >
         <svg width="20" height="20" fill="currentColor" class="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"></path>
         </svg>
         <input type="text" aria-label="Buscar" placeholder="Buscar" class="w-full text-sm text-black placeholder-gray-500 border border-gray-200 rounded-md py-2 pl-10 focus:border-light-blue-500 focus:outline-none focus:ring-1 focus:ring-light-blue-500">
      </form>   
   </div>
   
   <ServicesList v-if="ArrayServices.length  > 0 " 
      :ArrayServices="ArrayServices" 
      ServiceName="proyectos" 
      RouteLink="/proyecto/ver/detalle/"
      FilePathImg="proyectos/"
      ServiceNameLink="Añadir proyecto" 
      ServiceID="2"/>

</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../services/SERVER_API"
import ServicesList from "../../components/Servicios/ServicesList";


export default {
   name: 'GrupoProyectos',
   components: {
      ServicesList        
   },
   data(){
      return{
         
         ArrayServices: []
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
               
               this.ArrayServices = response.data.datos
            })
            .catch(()=> {
               alert('Error de conexión')
            })
         },   
    }
  }
</script>
