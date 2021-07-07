<template>

   <div class="py-3 mx-0 md:mx-auto md:px-0 md:w-full lg:max-w-screen-xl lg:px-48">

      <button class="p-3" @click="LoadBasicInfoService">Recargar</button>

      <ServicePreviewBasicInfo :ServiceName="ServiceName" :ServiceDescription="ServiceDescription" />     

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

   import axios from 'axios';
   import API_ROUTER from './../../services/SERVER_API'
   import ServicePreviewFormEditor from "./../../components/BuildServices/ServicePreviewFormEditor"
   import ServicePreviewBasicInfo from "./../../components/BuildServices/ServicePreviewBasicInfo"
   import ArlertBasic from './../../components/Overlay/ArlertBasic'    

   export default {
      name: 'RecordsUpdate',
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
      }
   },
   mounted: function () {    
         this.LoadBasicInfoService();
   },
   methods: {
      LoadBasicInfoService: function () {

         axios.post(API_ROUTER.PHP7_CONTROLLER + "build-2/3_listar_data_for_update.php",
         {
            id_service: parseInt(this.$route.params.id_service),
            id_record: parseInt(this.$route.params.id_record),
         }).then((response) => {

            // console.log( JSON.parse(response['data']['complete'][0]['data_json']) )
            console.log(  response['data']['complete'] )

            // console.log( JSON.parse(response['data']['datos'][0]['data_json']) )
                  
            this.ServiceName = response['data']['object'][0]['name']
            this.ServiceDescription = response['data']['object'][0]['description']
            this.ArrayInputs = (response['data']['complete'])                  

               // if (response['data']['datos'][0]['data_json'] != null) {
               //    this.ArrayInputs = JSON.parse(response['data']['datos'][0]['data_json'])
               // }

            }).catch(() => {
               //   alert('Error de conexión al cargar el records')
         })
      },

      RegitredInformation: function(){
         this.LoadBasicInfoService();                  
      },       
   }
}
</script>