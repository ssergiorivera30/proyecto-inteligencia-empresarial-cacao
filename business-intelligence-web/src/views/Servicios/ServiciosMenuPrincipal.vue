<template>
   <div class="mt-5">

      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle" :TitleHeader="TitleHeader" :IconModulo="IconModulo" :SubTitleHeader="SubTitleHeader" />
      <router-view />

  </div>
</template>

<script>

  import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'

   export default {
      components: {
      NavBarSecondary
    },
      data() {
         return {
            name: 'ServiciosMenuPrincipal',
            
        TitleHeader: 'Herramientas',
        IconModulo: 'tools/defaults.png',
        SubTitleHeader: 'Tablero',
        GoBack: '/inicio',
        GoBackTitle: 'Ir al inicio',
        RoutesNavs: [
          { Linkroute: '/herraminetas/inicio/', nameRoute: 'Herraminetas' },
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