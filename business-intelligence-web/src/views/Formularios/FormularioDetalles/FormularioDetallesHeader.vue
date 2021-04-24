<template>
   <div class="px-4 py-1 sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:container">

      



      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle" :TitleHeader="TitleHeader" :SubTitleHeader="SubTitleHeader"/>
      <router-view />
   </div>
</template>

<script>


   import NavBarSecondary from './../../../components/Utilidades/NavBarSecondary.vue'


   export default {
      components:{

         NavBarSecondary
      },
      data() {
         return {
            name: 'FormularioDetallesHeader',
            TitleHeader: 'Formulario',
            SubTitleHeader: 'Detalles',
            GoBack: 'history.back',
            GoBackTitle: 'Lista de formularios',
            RoutesNavs: [
               { Linkroute: '/formulario/ver/detalles/' + this.$route.params.id_formulario, nameRoute: 'Detalles del formulario' },
               { Linkroute: '/formulario/ver/datos/' + this.$route.params.id_formulario, nameRoute: 'Datos' }
            ],
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