<template>
  <div class="">
    <WelcomeSistema />
    <ServicesEmpty />
    <ServicesEntity :ArrayProjects="ArrayProjects" />
    <ServicesProjects :ArrayProjects="ArrayProjects" />
    <ServicesForms :ArrayProjects="ArrayProjects" />
  </div>
</template>

<script>

  import axios from 'axios';
  import API_ROUTER from './../services/SERVER_API'

import WelcomeSistema from "../components/Home/WelcomeSistema";
import ServicesEmpty from "../components/Servicios/ServicesEmpty";
import ServicesEntity from "../components/Servicios/ServicesEntity";
import ServicesProjects from "../components/Servicios/ServicesProjects";
import ServicesForms from "../components/Servicios/ServicesForms";

export default {
  components: {    
    WelcomeSistema,
    ServicesEmpty,
    ServicesEntity,
    ServicesProjects,
    ServicesForms,
  },
  data() {
    return {
      name: "Home",
      ArrayProjects: {}
    };
  },
  mounted: function () {
    this.LoadProjects()
  },
  methods: {
    LoadProjects: function () {
      axios.post(API_ROUTER.PHP7_CONTROLLER + "project_load.php",
        {
          UserService: 1,
        }).then((res) => {

          this.ArrayProjects = res.data

        }).catch(() => {

          alert('Error de conexión')

      })
    },
  },
};
</script>
