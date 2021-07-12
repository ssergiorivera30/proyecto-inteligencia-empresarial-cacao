<template>
  <div>
  <!-- <WelcomeSistema /> -->
    <ServicesEmpty v-if="RoadEmptyService === 1"/>

    <ServicesTitles ServiceName="Mis grupos" ServiceLink="/create-service/1" ServiceNameLink="Añadir grupo" :ServiceIconHTML="ServiceIconHTML"/>

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['groups']" 
      ServiceName="grupos" 
      RouteLink="/grupo/ver/detalle/"
      FilePathImg="grupos/"
      ServiceNameLink="Añadir grupo" 
      ServiceID="1" />

    <ServicesTitles ServiceName="Mis proyectos" ServiceLink="/create-service/2" ServiceNameLink="Añadir proyecto" :ServiceIconHTML="ServiceIconHTML"/>

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['projects']" 
      ServiceName="proyectos" 
      RouteLink="/proyecto/ver/detalle/"
      FilePathImg="proyectos/"
      ServiceNameLink="Añadir proyecto" 
      ServiceID="2" />

 <!-- <ServicesTitles ServiceName="Mis entidades" ServiceLink="/create-service/4" ServiceNameLink="Añadir formulario" />

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['forms']" 
      ServiceName="Entidades"
      RouteLink="/entidad/detalles/"
      FilePathImg="entidades/"
      ServiceNameLink="Añadir formulario" 
      ServiceID="3" />

    <ServicesTitles ServiceName="Mis formularios" ServiceLink="/create-service/4" ServiceNameLink="Añadir formulario" />

    <ServicesList v-if="ArrayServices.length  > 0 && RoadEmptyService != 1" 
      :ArrayServices="ArrayServices['forms']" 
      ServiceName="formularios"
      RouteLink="/formulario/ver/detalles/"
      FilePathImg="formularios/"
      ServiceNameLink="Añadir formulario" 
      ServiceID="3" /> -->

       <!-- <FileUpload :target="file" action="POST"/> -->
       <!-- <FileUpload :target="file" action="POST" v-on:progress="progress" v-on:start="startUpload" v-on:finish="finishUpload" /> -->
      
  </div>



</template>

<script>

import axios from 'axios';
import API_ROUTER from './../services/SERVER_API'

import WelcomeSistema from "../components/Home/WelcomeSistema";
import ServicesEmpty from "../components/Servicios/ServicesEmpty";
import ServicesTitles from "../components/Titles/ServicesTitles";

import FileUpload from 'vue-simple-upload/dist/FileUpload'


import ServicesList from "../components/Servicios/ServicesList";


export default {
  name: "Home",
  components: {    
    WelcomeSistema,
    ServicesEmpty,
    ServicesTitles,
    ServicesList, 
    FileUpload
  },
  data() {
    return {            
      ArrayServices: [{
        groups: [],
        projects: [],
        forms: []
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
