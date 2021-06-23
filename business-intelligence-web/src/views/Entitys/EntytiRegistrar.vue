<template>
   <div class="mt-0 px-4 py-3 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-64">


       <ServicePreviewBasicInfo :ServiceName="ServiceName" :ServiceDescription="ServiceDescription" />

      


    

      <!-- <ServicePreviewFormEditor :NameForm="NameForm" :DescriptionForm="DescriptionForm" :ArrayInputs="ArrayInputs" /> -->

      <ServicePreviewFormEditor 
            :ServiceName="ServiceName"
            :ServiceDescription="ServiceDescription"
            :ArrayInputs="ArrayInputs" />

   </div>
</template>

<script>

   import axios from "axios"
   import API_ROUTER from "./../../services/SERVER_API"



      import ServicePreviewFormEditor from "./../../components/BuildServices/ServicePreviewFormEditor"

      import ServicePreviewBasicInfo from "./../../components/BuildServices/ServicePreviewBasicInfo"

   export default {
      name: 'EntytiRegistrar', 
      components: {
   
         ServicePreviewFormEditor,
         ServicePreviewBasicInfo,
      },
      data() {
         return {
                    
            OrderForm: 'load',
            ServiceName: '',
            ServiceDescription: '',

            ArrayInputs: [],

            rutaFormBasic: '',
            rutaFormInfoBasic: '',

         }
      },
      mounted: function () {

         // if(this.$route.params.type == 'ob'){

         //    this.NameTable = 'z_object_'
         //    this.rutaFormBasic = 'object_load.php'
         //    this.rutaFormInfoBasic = 'objeto_info_basic.php'

         // }
         // if(this.$route.params.type == 'fo'){

         //    this.NameTable = 'z_form_'
         //    this.rutaFormBasic = 'form_load.php'
         //    this.rutaFormInfoBasic = 'form_info_basic.php'
            
         // }

         this.LoadBasicInfoService()
      

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
                     // this.OrderInfoBasicForm = 'Guardar cambios'
                  }

               }).catch(() => {
                  alert('Error de conexión al cargar el servicio')
            })
         },
         LoadFromBasic: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + 'service/service_form_load.php',
               {
                  service_type: 3,
                  service_id: this.$route.params.id_entity,

               }).then((response) => {
                  this.ArrayInputs = JSON.parse(response.data.datos)
               })
         },
      }
   }
</script>