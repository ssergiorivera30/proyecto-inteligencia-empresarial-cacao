<template>
   <div class="pl-4 mr-2 py-1 sm:max-w-xl md:max-w-full lg:container">

      



      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle" :TitleHeader="TitleHeader" :SubTitleHeader="SubTitleHeader"/>
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
            TitleHeader: 'Proyecto',
            SubTitleHeader: 'Detalles',
            GoBack: '/inicio',
            GoBackTitle: 'Ir al inicio',
            RoutesNavs: [
               { Linkroute: '/proyecto/ver/detalles/'+this.$route.params.id_project, nameRoute: 'Detalles' },
               { Linkroute: '/proyecto/ver/recolecion-de-datos/'+this.$route.params.id_project, nameRoute: 'Recolección de datos' },
               { Linkroute: '/proyecto/ver/integrantes/'+this.$route.params.id_project, nameRoute: 'Integrantes' },
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