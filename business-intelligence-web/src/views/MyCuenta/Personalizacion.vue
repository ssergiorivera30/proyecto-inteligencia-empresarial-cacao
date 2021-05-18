<template>
  <div>diversonalizacion</div>
</template>

<script>

  import API_ROUTER from './../../services/SERVER_API'
  import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'


  export default {
    components: {
      NavBarSecondary
    },
    data() {
      return {
        name: 'Personalizacion',
        imagen_a: API_ROUTER.API_FILE_SYSTEMS + '1.jpg',
        imagen_b: API_ROUTER.API_FILE_SYSTEMS + '2.jpg',
        imagen_c: API_ROUTER.API_FILE_SYSTEMS + '3.jpg',   

      }
    },
    mounted: function () {

    },
    methods: {


    }

  }
</script>