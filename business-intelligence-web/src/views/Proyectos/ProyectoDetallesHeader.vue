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
               { Linkroute: '/proyecto/ver/detalles/'+this.$route.params.id_project, nameRoute: 'Detalles',
                  NavRight:
                  [
                     { LinkName: 'Editar', LinkType: 1, linkIcon: 'bx bxs-pencil', LinkRoute: "/proyecto/formulario/editor/"+ this.$route.params.id_project },
                     { LinkName: 'Compartir', LinkType: 2, linkIcon: 'bx bxs-share-alt', LinkRoute: "/proyecto/formulario/editor/"+ this.$route.params.id_project },

                  ]
               },
               { Linkroute: '/proyecto/ver/recolecion-de-datos/'+this.$route.params.id_project, nameRoute: 'Recolección de datos',
                  NavRight:
                     [
                        { LinkName: 'Nuevo formulario', LinkType: 2, linkIcon: 'bx bxs-file', LinkRoute: "/proyecto/formulario/constructor/"+ this.$route.params.id_project },
                     ]
               },
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