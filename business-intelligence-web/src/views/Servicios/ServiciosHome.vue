<template>
   <Tools />
   <ServicesRecent />
</template>
<script>


import Tools from '../../components/Servicios/Tools.vue'


export default {
  components: { 
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
