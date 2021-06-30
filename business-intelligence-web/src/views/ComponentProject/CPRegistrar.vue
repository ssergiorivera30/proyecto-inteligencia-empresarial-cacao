<template>
   <div class="mt-0 px-4 py-3 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-64">


       <ServicePreviewBasicInfo :ServiceName="ServiceName" :ServiceDescription="ServiceDescription" />

      


    

      <!-- <ServicePreviewFormEditor :NameForm="NameForm" :DescriptionForm="DescriptionForm" :ArrayInputs="ArrayInputs" /> -->

      <ServicePreviewFormEditor 
         v-if="show == true"
            FormType="save"
            :ServiceName="ServiceName"
            :ServiceDescription="ServiceDescription"
            :ArrayInputs="ArrayInputs"
            @save="RegitredInformation" />

   </div>
</template>

<script>

   import axios from "axios"
   import API_ROUTER from "./../../services/SERVER_API"
   import ServicePreviewFormEditor from "./../../components/BuildServices/ServicePreviewFormEditor"
   import ServicePreviewBasicInfo from "./../../components/BuildServices/ServicePreviewBasicInfo"
   import ArlertBasic from './../../components/Overlay/ArlertBasic'    


   export default {
      name: 'CPRegistrar', 
      components: {   
         ServicePreviewFormEditor,
         ServicePreviewBasicInfo,
         ArlertBasic
      },
      data() {
         return {
            show: true,               
            OrderForm: 'load',
            ServiceName: '',
            ServiceDescription: '',
            ArrayInputs: [],
            OldArrayInputs: []
            
         }
      },
      mounted: function () {    
         this.LoadBasicInfoService();
      },
      methods: {
          LoadBasicInfoService: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "build/load_info_basic_service.php",
               {
                  id_service: this.$route.params.id_entity,
               }).then((response) => {
                  // if (response.data.mensaje != 1) {
                  //    // window.history.back()
                  // }
                  this.ServiceName = response['data']['datos'][0]['name']
                  this.ServiceDescription = response['data']['datos'][0]['description']

                  if (response['data']['datos'][0]['data_json'] != null) {
                     this.ArrayInputs = JSON.parse(response['data']['datos'][0]['data_json'])
                  }
               }).catch(() => {
                  alert('Error de conexión al cargar el servicio')
            })
         },
         RegitredInformation: function(){
            this.LoadBasicInfoService();                  
         },       
      }
   }
</script>