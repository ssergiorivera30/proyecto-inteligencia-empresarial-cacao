<template>
   <div class="">
      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle" :TitleHeader="TitleHeader" :IconModulo="IconModulo" :SubTitleHeader="SubTitleHeader"  />
      <router-view />
   </div>
</template>

<script>


import axios from 'axios'
import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'
import API_ROUTER from './../../services/SERVER_API'


   export default {
      name: 'EntityDetallesHeader.vue',
      components:{

         NavBarSecondary
      },
      data() {
         return {           

            TitleHeader: 'Entidad',
            IconModulo: '',
            SubTitleHeader: 'Entidad, concepto u objeto',
            GoBack: 'back',
            GoBackTitle: 'Ir al inicio',
            RoutesNavs: [
               { Linkroute: '/entidad/detalles/'+this.$route.params.id_entity, nameRoute: 'Detalles' },
               { Linkroute: '/entidad/registrar/'+this.$route.params.id_entity, nameRoute: 'Registrar' },   
               { Linkroute: '/entidad/data/'+this.$route.params.id_entity, nameRoute: 'Data' },   
               { Linkroute: '/entidad/explotacion/'+this.$route.params.id_entity, nameRoute: 'Explotación' },   
               { Linkroute: '/entidad/equipo/'+this.$route.params.id_entity, nameRoute: 'Equipo' },
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
                  service_id: this.$route.params.id_entity,
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