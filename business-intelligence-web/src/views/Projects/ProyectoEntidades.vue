<template>

  <ServicesTitles ServiceName="Componentes registrados" ServiceLink="/create-service/3" ServiceNameLink="Añadir componente" :ServiceIconHTML="ServiceIconHTML"/>

                            <!-- :to="'/formulario/ver/datos/'+form.id+'/ob'" -->

   <ServicesList v-if="ArrayServices.length  > 0 " 
      :ArrayServices="ArrayServices" 
      ServiceName="Componente"
      RouteLink="/componente/detalles/"
      FilePathImg="entidades/"
      ServiceNameLink="Añadir formulario" 
      ServiceID="3" />


</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../services/SERVER_API"
import ServicesList from "../../components/Servicios/ServicesList";
import ServicesTitles from "../../components/Titles/ServicesTitles";

export default {
   name: 'ProyectoEntidades',
      components: {
      ServicesList,
      ServicesTitles      
   },
    data(){
      return{         
         ArrayServices: [],
         ServiceIconHTML: `<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
            </svg>`,
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
