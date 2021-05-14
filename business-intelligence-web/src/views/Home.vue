<template>
  <div>
  <!-- <WelcomeSistema /> -->
    <ServicesEmpty v-if="RoadEmptyService == 1"/>  
    <!-- <ServicesGroups v-if="ArrayGroups.length > 0" :ArrayGroups="ArrayGroups" />
    <ServicesProjects v-if="ArrayProjects.length > 0" :ArrayProjects="ArrayProjects" />
    <ServicesForms v-if="ArrayForms.length  > 0" :ArrayForms="ArrayForms" /> -->

      
    <ServicesList v-if="ArrayServices.length  > 0" :ArrayServices="ArrayServices['groups']" ServiceName="grupos" ServiceNameLink="Añadir grupo" ServiceID="1"/>
    <ServicesList v-if="ArrayServices.length  > 0" :ArrayServices="ArrayServices['projects']" ServiceName="proyectos" ServiceNameLink="Añadir proyecto" ServiceID="2"/>
    <ServicesList v-if="ArrayServices.length  > 0" :ArrayServices="ArrayServices['forms']" ServiceName="formularios" ServiceNameLink="Añadir formulario" ServiceID="3"/>

      
  </div>

</template>

<script>

import axios from 'axios';
import API_ROUTER from './../services/SERVER_API'

import WelcomeSistema from "../components/Home/WelcomeSistema";
import ServicesEmpty from "../components/Servicios/ServicesEmpty";
import ServicesGroups from "../components/Servicios/ServicesGroups";
import ServicesProjects from "../components/Servicios/ServicesProjects";
import ServicesForms from "../components/Servicios/ServicesForms";
import ServicesList from "../components/Servicios/ServicesList";


export default {
  name: "Home",
  components: {    
    WelcomeSistema,
    ServicesEmpty,
    ServicesGroups,
    ServicesProjects,
    ServicesForms,
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
    this.LoadProjects()

    
  },
  methods: {
    LoadProjects: function () {
      axios.get(API_ROUTER.PHP7_CONTROLLER + "home/home_services_load.php").then((res) => {


          this.ArrayServices['projects'] = Object.entries(res.data.projects).length === 0  ? null : res.data.projects
          this.ArrayServices['groups'] = Object.entries(res.data.groups).length === 0  ? null : res.data.groups
          this.ArrayServices['forms'] = Object.entries(res.data.forms).length === 0  ? null : res.data.forms

          // console.log(this.ArrayServices['groups'].length )
          console.log(this.ArrayServices['projects'].length )


          // if( this.ArrayProjects.length < 1 && this.ArrayGroups < 0 ){

          //     this.RoadEmptyService = 1
              
          // }
        }).catch(() => {

          console.log('Error de conexión')

      })
    },
  },
};
</script>
