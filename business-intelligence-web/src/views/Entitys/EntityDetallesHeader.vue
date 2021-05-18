<template>
   <div class="">
      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle" :TitleHeader="TitleHeader" :IconModulo="IconModulo" :SubTitleHeader="SubTitleHeader"  />
      <router-view />
   </div>
</template>

<script>


   import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'


   export default {
      name: 'EntityDetallesHeader.vue',
      components:{

         NavBarSecondary
      },
      data() {
         return {           

            TitleHeader: 'Entidad',
            IconModulo: 'bx bxs-group',
            SubTitleHeader: 'Detalles',
            GoBack: '/inicio',
            GoBackTitle: 'Ir al inicio',
            RoutesNavs: [
               { Linkroute: '/entidad/registros/'+this.$route.params.id_entity, nameRoute: 'Registros' },
               { Linkroute: '/entidad/registrar/'+this.$route.params.id_entity, nameRoute: 'Registrar' },   
               { Linkroute: '/entidad/equipo/'+this.$route.params.id_entity, nameRoute: 'Equipo' },
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