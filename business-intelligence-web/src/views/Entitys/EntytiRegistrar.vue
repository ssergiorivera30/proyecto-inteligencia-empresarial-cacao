<template>
   <div class="mt-0 px-4 py-3 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-64">

      <PreviewForm :NameForm="NameForm" :DescriptionForm="DescriptionForm" />

      <header class="flex items-center justify-center mb-5">
         <h2 class="text-lg leading-6 font-medium text-black">Nuevo registro</h2>
      </header>

      <PreviewFormSave :NameForm="NameForm" :DescriptionForm="DescriptionForm" :ArrayInputs="ArrayInputs" />

   </div>
</template>

<script>

   import axios from "axios"
   import API_ROUTER from "./../../services/SERVER_API"
   import PreviewForm from "./../../components/Formularios/PreviewForm"
   import PreviewFormSave from "./../../components/Formularios/PreviewFormSave"

   export default {
      name: 'EntytiRegistrar', 
      components: {
         PreviewForm,
         PreviewFormSave,
      },
      data() {
         return {
                    
            OrderForm: 'load',
            NameForm: '',
            DescriptionForm: '',

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

         this.LoadFromBasic()
      

      },
      methods: {
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