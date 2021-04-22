<template>
   <div class="px-4 py-1 sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:container">
      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle"/>
      <router-view />
   </div>
</template>

<script>

   import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'

   export default {
      components:{
         NavBarSecondary
      },
      data() {
         return {
            name: 'ProyectoDetallesHeader',
            GoBack: '/inicio',
            GoBackTitle: 'Ir al inicio',
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

      },
      methods: {


      }
   }
</script>