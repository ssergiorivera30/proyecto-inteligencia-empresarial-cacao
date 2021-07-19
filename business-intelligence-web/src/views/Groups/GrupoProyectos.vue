<template>

  <ServicesTitles ServiceName="Proyectos registrados" :TitlteContenLinks="true" :ServiceLink="'/create-service/2/'+ this.$route.params.id_service +'/start'" ServiceNameLink="Añadir proyecto" :ServiceIconHTML="ServiceIconHTML"/>

   <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['projects']" 
      ServiceName="proyectos" 
      RouteLink="/proyecto/ver/detalle/"
      FilePathImg="proyectos/"
      ServiceNameLink="Añadir proyecto" 
      ServiceID="2" />

</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../services/SERVER_API"
import ServicesList from "../../components/Servicios/ServicesList";
import ServicesTitles from "../../components/Titles/ServicesTitles";


export default {
   name: 'GrupoProyectos',
   components: {
      ServicesList,
      ServicesTitles
   },
   data(){
      return{         
         ArrayServices: [{ projects: [] }],
         RoadEmptyService: 0,
         ServiceIconHTML: `<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-color-text-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
            </svg>`,
      }
    },    
    mounted: function(){      
      this.LoadAllServices()
    },
    methods:{
      LoadAllServices: function () {
         axios.post(API_ROUTER.PHP7_CONTROLLER + "home/home_services_load.php", { type_service: 2 }).then((res) => {

            this.ArrayServices['projects'] = Object.entries(res.data.projects).length === 0  ? null : res.data.projects
      
            if( this.ArrayServices['projects'] != null ){
               // this.RoadEmptyService = 1          
            }

         }).catch(() => {
            console.log('Error de conexión')          
         })
      },  
    }
  }
</script>
