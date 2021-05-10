<template>
   <div class="">
      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle" :TitleHeader="TitleHeader" :IconModulo="IconModulo" :SubTitleHeader="SubTitleHeader"  />
      <!-- <router-view /> -->
   </div>
</template>

<script>


   import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'


   export default {
      name: 'GrupoDetallesHeader.vue',
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
               { Linkroute: '/proyecto/ver/detalles/'+this.$route.params.id_project, nameRoute: 'Detalles'
                  // NavRight:
                  // [
                  //    { LinkName: 'Editar', LinkType: 1, linkIcon: 'bx bxs-pencil', LinkRoute: "/proyecto/formulario/editor/"+ this.$route.params.id_project },
                  //    { LinkName: 'Compartir', LinkType: 2, linkIcon: 'bx bxs-share-alt', LinkRoute: "/proyecto/formulario/editor/"+ this.$route.params.id_project },
                  // ]
               },
              
               { Linkroute: '/proyecto/ver/objetos-de-investigacion/'+this.$route.params.id_project, nameRoute: 'Objetos de investigación',
                  NavRight:
                     [
                        { LinkName: 'Nuevo objeto de investigación', LinkType: 2, linkIcon: 'bx bxs-file', LinkRoute: "/proyecto/objeto_nuevo/header/"+ this.$route.params.id_project },
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