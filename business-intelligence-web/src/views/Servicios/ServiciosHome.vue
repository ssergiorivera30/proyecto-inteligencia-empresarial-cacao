<template>
   <Tools />
   <ServicesRecent />
</template>
<script>


import Tools from '../../components/Servicios/Tools.vue'
import ServicesRecent from '../../components/Servicios/ServicesRecent.vue'

export default {
  components: { 
     Tools,
     ServicesRecent,
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
