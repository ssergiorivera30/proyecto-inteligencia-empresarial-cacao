<template>
  <div>
  <!-- <WelcomeSistema /> -->
    <ServicesEmpty v-if="RoadEmptyService === 1"/>

    <ServicesTitles ServiceName="Mis grupos" :TitlteContenLinks="true" ServiceLink="/create-service/1/0/start" ServiceNameLink="Añadir grupo" :ServiceIconHTML="ServiceIconHTML"/>

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['groups']" 
      ServiceName="grupos" 
      RouteLink="/grupo/ver/detalle/"
      FilePathImg="grupos/"
      ServiceNameLink="Añadir grupo" 
      ServiceID="1" />

    <ServicesTitles ServiceName="Mis proyectos" :TitlteContenLinks="false" ServiceLink="/create-service/2" ServiceNameLink="Añadir proyecto" :ServiceIconHTML="ServiceIconHTML"/>

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['projects']" 
      ServiceName="proyectos" 
      RouteLink="/proyecto/ver/detalle/"
      FilePathImg="proyectos/"
      ServiceNameLink="Añadir proyecto" 
      ServiceID="2" />

             
  <ServicesTitles ServiceName="Componentes" :TitlteContenLinks="false" ServiceLink="/create-service/3" ServiceNameLink="Añadir componente" :ServiceIconHTML="ServiceIconHTML"/>

   <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['componets']" 
      ServiceName="Componentes" 
      RouteLink="/componente/detalles/"
      FilePathImg="componentes/"
      ServiceNameLink="Añadir componente" 
      ServiceID="3" />
      
  </div>
</template>

<script>

import axios from 'axios';
import API_ROUTER from './../services/SERVER_API'

import WelcomeSistema from "../components/Home/WelcomeSistema";
import ServicesEmpty from "../components/Servicios/ServicesEmpty";
import ServicesTitles from "../components/Titles/ServicesTitles";
import ServicesList from "../components/Servicios/ServicesList";

export default {
  name: "Home",
  components: {    
    WelcomeSistema,
    ServicesEmpty,
    ServicesTitles,
    ServicesList
  },
  data() {
    return {            
      ArrayServices: [{
        groups: [],
        projects: [],
        componets: []
      }],
      RoadEmptyService: 0,
      file: API_ROUTER.API_PUBLIC,

      ServiceIconHTML: `<svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-color-text-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
            </svg>`,
    };
  },

  beforeMount() {    
    
  },
  mounted: function () {
    this.LoadAllServices()
    
  },
  methods: {
    LoadAllServices: function () {
      axios.post(API_ROUTER.PHP7_CONTROLLER + "home/home_services_load.php", { type_service: 'all' }).then((res) => {

          this.ArrayServices['projects'] = Object.entries(res.data.projects).length === 0  ? null : res.data.projects
          this.ArrayServices['groups'] = Object.entries(res.data.groups).length === 0  ? null : res.data.groups
          this.ArrayServices['componets'] = Object.entries(res.data.componets).length === 0  ? null : res.data.componets
    
          if( this.ArrayServices['groups'] != null && this.ArrayServices['projects'] != null && this.ArrayServices['componets'] != null ){
            // this.RoadEmptyService = 1          
          }

        }).catch(() => {
          console.log('Error de conexión')          
      })
    },


  },
};
</script>
