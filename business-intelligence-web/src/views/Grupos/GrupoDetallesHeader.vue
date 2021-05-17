<template>
   <div class="">
      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle" :TitleHeader="TitleHeader" :IconModulo="IconModulo" :SubTitleHeader="SubTitleHeader"  />
      <router-view/>
   </div>
</template>

<script>


   import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'


   export default {
      name: 'GrupoDetallesHeader',
      components:{

         NavBarSecondary
      },
      data() {
         return {
            TitleHeader: 'Grupo',
            IconModulo: 'bx bxs-group',
            SubTitleHeader: 'Detalles',
            GoBack: '/inicio',
            GoBackTitle: 'Ir al inicio',
            RoutesNavs: [
               { Linkroute: '/grupo/ver/detalle/'+this.$route.params.id_group, nameRoute: 'Detalles' },
               { Linkroute: '/grupo/ver/proyectos/'+this.$route.params.id_group, nameRoute: 'Proyectos' },              
               { Linkroute: '/grupo/ver/equipo/'+this.$route.params.id_group, nameRoute: 'Equipo' },
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