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
            name: 'ObjetoDetallesHeader',
            TitleHeader: 'Objeto',
            SubTitleHeader: 'Detalles',
            GoBack: 'history.back',
            GoBackTitle: 'Lista de formularios',
            RoutesNavs: [
                { Linkroute: '/proyecto/objeto/detalle/inicio/'+this.$route.params.id, nameRoute: 'Resumen' },
                { Linkroute: '/proyecto/objeto/detalle/objetos-predeterminados/' + this.$route.params.id, nameRoute: 'Instrumentos predeterminados' },
                { Linkroute: '/proyecto/objeto/detalle/mis-formularios/'+1, nameRoute: 'Formularios',
                  NavRight:
                     [
                        { LinkName: 'Formularios', LinkType: 2, linkIcon: 'bx bxs-file', LinkRoute: "/proyecto/formulario/constructor/"+ this.$route.params.id },
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
