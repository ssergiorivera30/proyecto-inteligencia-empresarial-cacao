<template>
   <div class="">
      <NavBarSecondary 
         :RoutesNavs="RoutesNavs" 
         :GoBack="GoBack" 
         :GoBackTitle="GoBackTitle" 
         :TitleHeader="TitleHeader" 
         :IconModulo="IconModulo" 
         :SubTitleHeader="SubTitleHeader"  />
      <router-view/>
   </div>
</template>

<script>

import axios from 'axios'
import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'
import API_ROUTER from './../../services/SERVER_API'

   export default {
      name: 'GrupoDetallesHeader',
      components:{
         NavBarSecondary
      },
      data() {
         return {
            TitleHeader: 'Grupo',
            IconModulo: '',
            SubTitleHeader: 'Grupo',
            GoBack: 'back',
            GoBackTitle: 'Ir al inicio',
            RoutesNavs: [
               { Linkroute: '/grupo/ver/detalle/'+this.$route.params.id_service, nameRoute: 'Detalles' },
               { Linkroute: '/grupo/ver/proyectos/'+this.$route.params.id_service, nameRoute: 'Proyectos' },              
               { Linkroute: '/grupo/ver/equipo/'+this.$route.params.id_service, nameRoute: 'Equipo' },
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
                  this.IconModulo = 'grupos/' + res.data['datos'][0]['logo']

               }).catch(() => {
                  
                  alert('Error de conexión header grupos')

            })
         },
      }
   }
</script>