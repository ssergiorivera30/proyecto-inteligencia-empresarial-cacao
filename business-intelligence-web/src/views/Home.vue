<template>
  <div>
  <!-- <WelcomeSistema /> -->
    <ServicesEmpty v-if="ArrayProjects.length < 1"/>  
    <ServicesGroups v-if="ArrayGroups.length > 0" :ArrayGroups="ArrayGroups" />
    <ServicesProjects v-if="ArrayProjects.length > 0" :ArrayProjects="ArrayProjects" />
    <ServicesForms v-if="ArrayProjects.length  > 0" :ArrayProjects="ArrayProjects" />
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

export default {
  name: "Home",
  components: {    
    WelcomeSistema,
    ServicesEmpty,
    ServicesGroups,
    ServicesProjects,
    ServicesForms,
  },
  data() {
    return {      
      ArrayGroups: [],
      ArrayProjects: [],
    };
  },
  mounted: function () {
    this.LoadProjects()

    
  },
  methods: {
    LoadProjects: function () {
      axios.get(API_ROUTER.PHP7_CONTROLLER + "home/home_services_load.php").then((res) => {

          this.ArrayGroups = res.data.groups
          this.ArrayProjects = res.data.projects

        }).catch(() => {

          console.log('Error de conexión')

      })
    },
  },
};
</script>
