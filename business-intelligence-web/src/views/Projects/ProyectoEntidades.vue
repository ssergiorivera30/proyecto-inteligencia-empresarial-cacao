<template>

<header class="flex items-center justify-between px-2 my-5">
    <h2 class="text-lg font-bold leading-6 text-gray-600">Entidades registradas</h2>      
    <div class="relative">
        <router-link to="/create-service/3" class=" flex p-2 rounded-md bg-gray-200">
            <span class="text-xs font-medium leading-none text-black">Nueva entidad</span>
        </router-link >
    </div>
</header>

                            <!-- :to="'/formulario/ver/datos/'+form.id+'/ob'" -->

   <ServicesList v-if="ArrayServices.length  > 0 " 
      :ArrayServices="ArrayServices" 
       ServiceName="Entidades"
      RouteLink="/entidad/detalles/"
      FilePathImg="entidades/"
      ServiceNameLink="Añadir formulario" 
      ServiceID="3" />


</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../services/SERVER_API"
import ServicesList from "../../components/Servicios/ServicesList";

export default {
   name: 'ProyectoEntidades',
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
               type_service: 3
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
