<template>
      
  <ServicesTitles ServiceName="Componentes registrados" ServiceLink="/create-service/3" ServiceNameLink="Añadir componente" :ServiceIconHTML="ServiceIconHTML"/>

   <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['componets']" 
      ServiceName="Componentes" 
      RouteLink="/componente/detalles/"
      FilePathImg="componentes/"
      ServiceNameLink="Añadir componente" 
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
         ArrayServices: [{ componets: [], }],
         RoadEmptyService: 0,
         ServiceIconHTML: `<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
            </svg>`,
            
      }
    },    
    mounted: function(){      
      this.LoadAllServices()
    },
    methods:{
      LoadAllServices: function () {
         axios.post(API_ROUTER.PHP7_CONTROLLER + "home/home_services_load.php", { type_service: 3 }).then((res) => {

            this.ArrayServices['componets'] = Object.entries(res.data.componets).length === 0  ? null : res.data.componets
      
            if( this.ArrayServices['groups'] != null && this.ArrayServices['projects'] != null && this.ArrayServices['componets'] != null ){
               this.RoadEmptyService = 1          
            }

         }).catch(() => {
            console.log('Error de conexión')          
         })
      },
    
    
    }
  }
</script>
