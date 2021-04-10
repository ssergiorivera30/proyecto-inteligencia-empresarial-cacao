<template>
   <div class="px-4 py-1 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8">
      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" />
      <router-view class=""/>
   </div>
</template>

<script>

   import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'

   // javascript:history.back()

   export default {
      components:{
         NavBarSecondary
      },
      data() {
         return {
            name: 'ProyectoDetallesHeader',
            GoBack: '/inicio',
            RoutesNavs: [
               { Linkroute: '/proyecto/ver/detalles', nameRoute: 'Detalles' },
               { Linkroute: '/proyecto/ver/recolecion-de-datos', nameRoute: 'Recolección de datos' },
               { Linkroute: '/proyecto/ver/integrantes', nameRoute: 'Integrantes' },
            ]
         }
      },
      beforeMount: function () {

      },
      mounted: function () {
         //  console.log(this.$params);

      },
      methods: {


      }
   }
</script>