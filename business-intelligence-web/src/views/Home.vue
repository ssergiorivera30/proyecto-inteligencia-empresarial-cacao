<template>
  <div>
  <!-- <WelcomeSistema /> -->
    <ServicesEmpty v-if="RoadEmptyService == 1"/>

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['groups']" 
      ServiceName="grupos" 
      RouteLink="/grupo/ver/detalle/"
      FilePathImg="grupos/"
      ServiceNameLink="Añadir grupo" 
      ServiceID="1"/>

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['projects']" 
      ServiceName="proyectos" 
      RouteLink="/proyecto/ver/detalles/"
      FilePathImg="proyectos/"
      ServiceNameLink="Añadir proyecto" 
      ServiceID="2"/>

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['forms']" 
      ServiceName="formularios"
      RouteLink="/formulario/ver/detalles/"
      FilePathImg="formularios/"
      ServiceNameLink="Añadir formulario" 
      ServiceID="3"/>
      
  </div>

</template>

<script>

import axios from 'axios';
import API_ROUTER from './../services/SERVER_API'

import WelcomeSistema from "../components/Home/WelcomeSistema";
import ServicesEmpty from "../components/Servicios/ServicesEmpty";



import ServicesList from "../components/Servicios/ServicesList";


export default {
  name: "Home",
  components: {    
    WelcomeSistema,
    ServicesEmpty,
    ServicesList, 
  },
  data() {
    return {            
      ArrayServices: [{
        groups: [],
        projects: [],
        forms: []
      }],
      RoadEmptyService: 0,
    };
  },

  beforeMount() {    
    
  },
  mounted: function () {
    this.LoadAllServices()
    
  },
  methods: {
    LoadAllServices: function () {
      axios.get(API_ROUTER.PHP7_CONTROLLER + "home/home_services_load.php").then((res) => {
          this.ArrayServices['projects'] = Object.entries(res.data.projects).length === 0  ? null : res.data.projects
          this.ArrayServices['groups'] = Object.entries(res.data.groups).length === 0  ? null : res.data.groups
          this.ArrayServices['forms'] = Object.entries(res.data.forms).length === 0  ? null : res.data.forms
          // console.log(this.ArrayServices['groups'] )
          // console.log(this.ArrayServices['projects'] )
          // console.log(this.ArrayServices['forms'] )
          if( this.ArrayServices['groups'] != null && this.ArrayServices['projects'] != null && this.ArrayServices['forms'] != null ){
            // this.RoadEmptyService = 1              
          }
        }).catch(() => {
          console.log('Error de conexión')
      })
    },
  },
};
</script>
