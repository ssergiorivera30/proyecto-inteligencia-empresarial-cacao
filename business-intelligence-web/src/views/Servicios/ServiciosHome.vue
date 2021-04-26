<template>
   <Tools />
   <ServicesRecent />
</template>
<script>


import Tools from '../../components/Servicios/Tools.vue'

import API_ROUTER from './../../services/SERVER_API'
import ServicesRecent from '../../components/Servicios/ServicesRecent'

export default {
  components: { 
    ServicesRecent,
     Tools,
   },
    data(){
      return{
         name: 'ServiciosHome',
          
      }
    },
    beforeMount: function () {
    },
    mounted: function(){ 
    },
    methods:{
    }
  }
</script>
