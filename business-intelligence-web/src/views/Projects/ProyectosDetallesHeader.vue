<template>
   <div class="">
      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle" :TitleHeader="TitleHeader" :IconModulo="IconModulo" :SubTitleHeader="SubTitleHeader"  />
      <router-view />
   </div>
</template>

<script>


   import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'


   export default {
      name: 'ProyectosDetallesHeader',
      components:{

         NavBarSecondary
      },
      data() {
         return {           

            TitleHeader: 'Proyecto',
            IconModulo: 'bx bxs-group',
            SubTitleHeader: 'Detalles',
            GoBack: 'history.back',
            GoBackTitle: 'Ir al inicio',
            RoutesNavs: [
               { Linkroute: '/proyecto/ver/detalle/'+this.$route.params.id_project, nameRoute: 'Detalles' },
               { Linkroute: '/proyecto/ver/entidades/'+this.$route.params.id_project, nameRoute: 'Entidades' },
               { Linkroute: '/proyecto/ver/equipo/'+this.$route.params.id_project, nameRoute: 'Equipo' },
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