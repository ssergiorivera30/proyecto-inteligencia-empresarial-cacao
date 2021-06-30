<template>
   <div class="">
      <NavBarSecondary 
         :RoutesNavs="RoutesNavs" 
         :GoBack="GoBack" 
         :GoBackTitle="GoBackTitle" 
         :TitleHeader="TitleHeader" 
         :IconModulo="IconModulo" 
         :SubTitleHeader="SubTitleHeader"  />
      <router-view />
   </div>
</template>

<script>


import axios from 'axios'
import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'
import API_ROUTER from './../../services/SERVER_API'


   export default {
      name: 'CPDetallesHeader.vue',
      components:{

         NavBarSecondary
      },
      data() {
         return {           

            TitleHeader: 'Componente',
            IconModulo: '',
            SubTitleHeader: 'Entidades, conceptos u objetos de la investigación',
            GoBack: 'back',
            GoBackTitle: 'Ir al inicio',
            RoutesNavs: [
               { Linkroute: '/componente/detalles/'+this.$route.params.id_service, nameRoute: 'Detalles' },          
               { Linkroute: '/componente/data/'+this.$route.params.id_service, nameRoute: 'Data' },
               { Linkroute: '/componente/instrumentos-recoleccion/'+this.$route.params.id_service, nameRoute: 'Intrumentos de recolección' },
               { Linkroute: '/componente/explotacion/'+this.$route.params.id_service, nameRoute: 'Explotación' },   
               { Linkroute: '/componente/equipo/'+this.$route.params.id_service, nameRoute: 'Equipo' },
            ]
         }
      },
      beforeMount: function () {

      },
      mounted: function () {
         this.LoadInfoBasic()
      },
      methods: {
         LoadInfoBasic :function(){
            axios.post(API_ROUTER.PHP7_CONTROLLER + "service/service_load_info_basic.php",
               {
                  service_id: this.$route.params.id_service,
               }).then((res) => {
                  
                  this.TitleHeader = res.data['datos'][0]['name']
                  this.IconModulo = 'entidades/' + res.data['datos'][0]['logo']

               }).catch(() => {
                  
                  alert('Error de conexión')

            })
         },
      }
   }
</script>