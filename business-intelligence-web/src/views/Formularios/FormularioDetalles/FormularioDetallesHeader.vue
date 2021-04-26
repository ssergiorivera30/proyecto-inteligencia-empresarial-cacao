<template>
   <div class="pl-4 mr-2 py-1 sm:max-w-xl md:max-w-full lg:container">
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
               { Linkroute: '/formulario/ver/datos/' + + this.$route.params.id + '/'+this.$route.params.type, nameRoute: 'Registros' },

               { Linkroute: '/formulario/ver/detalles/' + this.$route.params.id + '/'+this.$route.params.type, nameRoute: 'Registrar',
                  NavRight:
                  [
                     { LinkName: 'Editar formulario', LinkType: 2, linkIcon: 'bx bxs-pencil', LinkRoute: "/proyecto/formulario/editor/"+ this.$route.params.id + '/'+this.$route.params.type, },
                  ]
               },
              
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