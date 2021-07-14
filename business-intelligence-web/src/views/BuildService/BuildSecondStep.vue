<template>
   <div class="mx-auto 2xl:max-w-screen-md">
      <div class="grid grid-cols-1 mb-10">

         <ServicePreviewBasicInfo :ServiceName="ServiceName" :ServiceDescription="ServiceDescription" />

         <div class="flex items-baseline flex-wrap my-5 justify-center md:justify-start">
            <div class="flex border-l border-t border-b rounded">
               <a href="javascript:history.back()"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200 ">
                  <div class="flex leading-5">
                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-chevron-left w-5 h-5">
                        <polyline points="15 18 9 12 15 6"></polyline>
                     </svg>
                     <span class="hidden md:block">Atrás</span>
                  </div>
               </a>

               <button @click="LoadJsonInputsForm()"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200">
                  <div class="flex leading-5">                     
                     <svg xmlns="http://www.w3.org/2000/svg" class="feather feather-edit w-5 h-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15" />
                     </svg>
                     <span class="hidden md:block">Refrescar</span>
                  </div>
               </button>

               <button @click="EditHeaderTitleDescriptionService = EditHeaderTitleDescriptionService ? false : true"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200">
                  <div class="flex leading-5">
                     <svg xmlns="http://www.w3.org/2000/svg" class="feather feather-edit w-5 h-5 mr-1" fill="none"
                        viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                           d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                     </svg>
                     <span class="hidden md:block">Editar encabezado</span>
                  </div>
               </button>
         
               <button @click="AddInputExpandCreator = AddInputExpandCreator ? false : true"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200">
                  <div class="flex  leading-4">
                     <svg xmlns="http://www.w3.org/2000/svg" class="feather feather-edit w-5 h-5 mr-1" fill="none"
                        viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                           d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                     </svg>
                     <span class="hidden md:block">Agregar campos</span>
                  </div>
               </button>

               <button @click="SaveFormJSON()"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200 ">
                  <div class="flex leading-5">

                     <svg xmlns="http://www.w3.org/2000/svg" class="feather feather-save w-5 h-5 mr-1" fill="none"
                        viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path>
                        <polyline points="17 21 17 13 7 13 7 21"></polyline>
                        <polyline points="7 3 7 8 15 8"></polyline>
                     </svg>

                     <span class="hidden md:block">{{ OrderInfoBasicForm }}</span>
                  </div>
               </button>
            </div>
         </div>

         <form v-if="EditHeaderTitleDescriptionService === false"
            @submit.prevent="UpdateInfoBasicForm(), EditHeaderTitleDescriptionService = true"
            class="grid gap-x-4 gap-y-1">

            <div class="block">
               <label class="text-gray-700 font-semibold text-xs">Nombre</label>
               <input type="text" class="form-control2" required v-model="ServiceName">
            </div>

            <div>
               <div class="block">
                  <label class="text-gray-700 font-semibold text-xs">Descripción</label>
                  <textarea rows="8" class="form-control2 py-2" required v-model="ServiceDescription"></textarea>
               </div>
               <p class="mt-1 text-sm text-gray-500">
                  * Esta información se puede actualizar en cualquier momento.
               </p>
            </div>

            <div v-if="ServiceType != null && ServiceType == 1 || ServiceType == 2">          
               <label class="text-gray-700 font-semibold text-xs">Logo</label>
               <input type="file" name="fileUpload" class="form-control2" @change="onFileChange" >
            </div>


            <div class="my-1 text-left">
               <button type="submit" class="btn-indigo">Actualizar</button>
               <button type="button" @click="EditHeaderTitleDescriptionService = true"
                  class="mr-3 btn-light">Cancelar</button>
            </div>
         </form>

         <ServicePreviewFormEditor
            v-show="ArrayInputs.length && EditHeaderTitleDescriptionService == true "
            FormType='edit' 
            :ServiceName="ServiceName" 
            :ServiceDescription="ServiceDescription"
            :ArrayInputs="ArrayInputs" 
            @GetIdEdit="Select_Edit_Input_JSON" />

         <div class="py-5 text-left " v-if="EditHeaderTitleDescriptionService === true">
            <button @click="SaveFormJSON()" type="button" class="mr-3 btn-indigo">{{ OrderInfoBasicForm }}</button>
         </div>

         <div>
         </div>
      </div>

      <ServiceAddInputForm 
         v-if="AddInputExpandCreator === true"
         :ArrayInputs="ArrayInputs"
         @Get_Input_JSON_Mayor="Get_Input_JSON_Mayor"
         @Desactive_Input_Creator="Desactive_Input_Creator" />

      <ServiceEditInputForm 
         :Input_Asigned_By_Edit="Input_Asigned_By_Edit" 
         :ArrayInputEdit="ArrayInputs[Input_Asigned_By_Edit]"
         @Deactive_Input_Edit="Deactive_Input_Edit"
         @UpdateEditInput="UpdateEditInputJson" />

   </div>
</template>
<script>

   import axios from "axios";
   import API_ROUTER from "./../../services/SERVER_API";
   import ArlertBasic from './../../components/Overlay/ArlertBasic';
     import Noty from "noty";

   import ServicePreviewBasicInfo from "./../../components/BuildServices/ServicePreviewBasicInfo";
   import ServicePreviewFormEditor from "./../../components/BuildServices/ServicePreviewFormEditor";
   import ServiceAddInputForm from "./../../components/BuildServices/ServiceAddInputForm";
   import ServiceEditInputForm from "./../../components/BuildServices/ServiceEditInputForm";

   export default {
      components: {
         ArlertBasic,
         ServicePreviewBasicInfo,
         ServicePreviewFormEditor,
         ServiceAddInputForm,
         ServiceEditInputForm,
      },
      data() {
         return {
            name: 'BuildSecondStep',
            OrderInfoBasicForm: 'Guardar',
            ServiceName: '',
            ServiceDescription: '',
            EditHeaderTitleDescriptionService: true,
            ArrayInputs: [],

            ArraySubOptionsTypes: {
               option1: {
                  type: 'text',
               },
               option2: {
                  type: 'file',
               }
            },
            ArraySubOptionsValues: [],
            Input_Asigned_By_Edit: null,
            AddInputExpandCreator: false,

            ImageServiceLoad: null,
            ServiceType: null

         }
      },
      mounted: function () {
         this.LoadJsonInputsForm()
      },
      methods: {

         Get_Input_JSON_Mayor: function (NewInputs) {
            this.ArrayInputs = NewInputs
         },
         Desactive_Input_Creator: function () {
            this.AddInputExpandCreator = false
         },
         Deactive_Input_Edit: function (Desactive) {
            this.Input_Asigned_By_Edit = Desactive
         },
         Select_Edit_Input_JSON: function (value) {            
            this.Input_Asigned_By_Edit = value
         },

         onFileChange: function(event){
            let formData = new FormData();
            formData.append("name", "file");
            formData.append("file", event.target.files[0]);
            formData.append("type_service", this.ServiceType );
            formData.append("service", parseInt(this.$route.params.id_service) );

            axios.post(API_ROUTER.PHP7_CONTROLLER +'uploadFile/upload_logo.php', formData, {
                  headers: { 'Content-Type': 'multipart/form-data' }
               }).then(res =>{

                  if(res.data.response == 'success'){
                     this.ImageServiceLoad = API_ROUTER.API_UI +"grupos/"+ res.data.image              
                  }

                  new Noty({
                     theme: "sunset",
                     layout: "topRight",
                     progressBar: true,
                     closeWith: ["click", "button"],
                     timeout: 8000,
                     type: res.data.response,
                     text: res.data.mensaje,
                  }).show();
              
            })
         }, 

         // PETICIONES A LA BASES DE DATOS

         SaveFormJSON: function () {

            axios.post(API_ROUTER.PHP7_CONTROLLER + "build/create_build_second_step.php",
               {
                  id_service: parseInt(this.$route.params.id_service),
                  JSON_inputs: this.ArrayInputs
               }).then((response) => {

                  ArlertBasic.methods.AlertBasic(response.data.icono, response.data.mensaje, 2000, true)

               }).catch(() => {
                  alert('Error de conexión al guardar el servicio')
               })
         },
          UpdateEditInputJson: function(position, input){
            this.Input_Asigned_By_Edit = null
            this.ArrayInputs[position] = input
            this.SaveFormJSON()
         },
         UpdateInfoBasicForm: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "service/service_update_basic.php",
               {
                  serviceId: parseInt(this.$route.params.id_service),
                  ServiceName: this.ServiceName,
                  ServiceDescription: this.ServiceDescription
               }).then((response) => {

                  ArlertBasic.methods.AlertBasic(response.data.icono, response.data.mensaje, 2000, true)

               }).catch(() => {
                  alert('Error de conexión al actualizar el servicio')
               })
         },

        

         LoadJsonInputsForm: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "build/load_info_basic_service.php",
               {
                  id_service: this.$route.params.id_service,
               }).then((response) => {

                  if (response.data.mensaje != 1) {
                     window.history.back()
                  }
                  this.ServiceName = response['data']['datos'][0]['name']
                  this.ServiceDescription = response['data']['datos'][0]['description']
                  this.ServiceType = response['data']['datos'][0]['type']

                  if (response['data']['datos'][0]['data_json'] != null) {
                     this.ArrayInputs = JSON.parse(response['data']['datos'][0]['data_json'])
                     this.OrderInfoBasicForm = 'Guardar cambios'
                  }

               }).catch(() => {
                  alert('Error de conexión al cargar el servicio')
               })
         },
      }
   }
</script>

<!-- // clase para pantalla completa.
// fixed top-0 left-0 z-40 w-screen h-screen bg-gray-50 overflow-auto	 -->