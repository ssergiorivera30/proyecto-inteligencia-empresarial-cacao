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
      name: 'RecordsHeader',
      components:{

         NavBarSecondary
      },
      data() {
         return {           

            TitleHeader: 'Registro',
            IconModulo: '',
            SubTitleHeader: 'Detalles del registro',
            GoBack: 'back',
            GoBackTitle: 'Ir al inicio',
            RoutesNavs: [
               { Linkroute: '/info-registro/detalles/'+  this.$route.params.id_service +'/'+this.$route.params.id_record, nameRoute: 'Detalles' },
               { Linkroute: '/info-registro/actualizar/'+  this.$route.params.id_service +'/'+this.$route.params.id_record, nameRoute: 'Actualizar' },
               { Linkroute: '/info-registro/equipo/'+  this.$route.params.id_service +'/'+this.$route.params.id_record, nameRoute: 'Team' },
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
                  service_id: this.$route.params.id_record,
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