<template>
   <div class="mx-auto 2xl:max-w-screen-md">
      <div class="grid grid-cols-1 mb-10">

          <!-- <div role="alert" class="sm:mr-6 mt-16 sm:mt-6 mb-6 sm:mb-0 xl:w-5/12 z-50 mx-auto absolute left-0 sm:left-auto right-0 sm:top-0 sm:w-1/2 w-10/12 bg-white dark:bg-gray-800 shadow-lg rounded flex pr-4 py-4 transition duration-150 ease-in-out" id="notification">
                        <button aria-label="close" class="absolute right-0 mr-4 text-gray-500 dark:text-gray-100 dark:hover:text-gray-400 hover:text-gray-600 transition duration-150 ease-in-out cursor-pointer focus:ring-2 focus:outline-none focus:ring-gray-500 rounded" onclick="closeModal()">
                            <svg  xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-x" width="20" height="20" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" />
                                <line x1="18" y1="6" x2="6" y2="18" />
                                <line x1="6" y1="6" x2="18" y2="18" />
                            </svg>
                        </button>
                        <div class="pr-3 pl-4">
                            <div class="h-12 w-12 sm:h-10 sm:w-10 rounded-full">
                                <img src="https://tuk-cdn.s3.amazonaws.com/assets/components/notifications/n_1.png" alt="Avatar display" role="img" class="h-full w-full object-cover rounded-full shadow" />
                            </div>
                        </div>
                        <div>
                            <p class="text-sm text-gray-800 dark:text-gray-100 font-semibold">Ashley Wilson</p>
                            <p class="text-xs text-gray-600 dark:text-gray-400 font-normal">Has requested to follow you.</p>
                            <div class="flex items-center pt-2">
                                <button class="focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-700 bg-indigo-700 transition duration-150 ease-in-out hover:bg-indigo-600 rounded text-white px-5 py-1 text-xs">Accept</button>
                                <button class="bg-gray-200 dark:bg-gray-700 dark:text-indigo-600 dark:hover:bg-gray-600 transition duration-150 ease-in-out focus:outline-none focus:ring-2 focus:ring-offset-2  focus:ring-gray-300 hover:bg-gray-300 rounded text-indigo-700 px-5 py-1 text-xs ml-2" onclick="closeModal()">Decline</button>
                            </div>
                        </div>
                    </div> -->
                  

         <ServicePreviewBasicInfo :ServiceName="ServiceName" :ServiceDescription="ServiceDescription" />

         <div class="flex items-baseline flex-wrap my-5 justify-center md:justify-start ">
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

               <button @click="EditHeaderTitleDescriptionService = EditHeaderTitleDescriptionService ? false : true"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200">
                  <div class="flex leading-5">
                     
                     <svg xmlns="http://www.w3.org/2000/svg" class="feather feather-edit w-5 h-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                     </svg>
                     <span class="hidden md:block">Editar encabezado</span>
                  </div>
               </button>
                  <!-- @click="InputIdEidtAsigned = null, open = true" -->


               <button 
                  @click="editarAparte = true"

                  
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200">
                  <div class="flex  leading-4">                     
                     <svg xmlns="http://www.w3.org/2000/svg" class="feather feather-edit w-5 h-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                     </svg>
                     <span class="hidden md:block">Agregar campos</span>
                  </div>
               </button>
               

               <button @click="SaveNewForm()"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200 ">
                  <div class="flex leading-5">

                     <svg xmlns="http://www.w3.org/2000/svg" class="feather feather-save w-5 h-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor" 
                           stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path>
                        <polyline points="17 21 17 13 7 13 7 21"></polyline>
                        <polyline points="7 3 7 8 15 8"></polyline>
                     </svg>

                     <span class="hidden md:block">{{ OrderInfoBasicForm }}</span>
                  </div>
               </button>

               
            </div>
         </div>



         <form 
            v-if="EditHeaderTitleDescriptionService === false"
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
                  * Esta información se puede actualizar posteriormente.
               </p>
            </div>

            <div class="my-1 text-left">
               <button type="submit" class="btn-indigo">Actualizar</button>
               <button type="button" @click="EditHeaderTitleDescriptionService = true" class="mr-3 btn-light">Cancelar</button>
            </div>
         </form>
         
         <ServicePreviewFormEditor 
            v-show="ArrayInputs.length && EditHeaderTitleDescriptionService == true "
            FormType='edit'
            :ServiceName="ServiceName"
            :ServiceDescription="ServiceDescription"
            :ArrayInputs="ArrayInputs"
            @GetIdEdit="AsignedIdEdit" />

         <div class="py-5 text-left " v-if="EditHeaderTitleDescriptionService === true">
            <button @click="SaveNewForm()" type="button" class="mr-3 btn-indigo">{{ OrderInfoBasicForm }}</button>
         </div>

         <div>
      </div>
   </div>

   <ServiceAddInputForm v-if="AgregarAparte === true" @Get_Input_JSON_Mayor="Get_Input_JSON_Mayor" />
   <ServiceEditInputForm v-if="editarAparte === true" @Get_Input_JSON_Mayor="Get_Input_JSON_Mayor" />

   



   </div>


</template>
<script>

   import axios from "axios"
   import Noty from "noty";
   import API_ROUTER from "./../../services/SERVER_API"
   import ArlertBasic from './../../components/Overlay/ArlertBasic'

   import { ref } from 'vue'
   import { Dialog, DialogOverlay, DialogTitle, TransitionChild, TransitionRoot } from '@headlessui/vue'
   import ServicePreviewBasicInfo from "./../../components/BuildServices/ServicePreviewBasicInfo"
   import ServicePreviewFormEditor from "./../../components/BuildServices/ServicePreviewFormEditor"
   import ServiceAddInputForm from "./../../components/BuildServices/ServiceAddInputForm"
   import ServiceEditInputForm from "./../../components/BuildServices/ServiceEditInputForm"

  import { VueDraggableNext } from 'vue-draggable-next'

   export default {
      components: {         
         ServicePreviewBasicInfo,
         ServicePreviewFormEditor,
         ServiceAddInputForm,
         ServiceEditInputForm,
         Dialog,
         DialogOverlay,
         DialogTitle,
         TransitionChild,
         TransitionRoot,
         ArlertBasic,
         draggable: VueDraggableNext,    
      },
      setup() {
         const open = ref(false)
         return {
            open,
         }
      },
      data() {
         return {
            name: 'BuildSecondStep',
            OrderInfoBasicForm: 'Guardar',
            ServiceName: '',
            ServiceDescription: '',
            EditHeaderTitleDescriptionService: true,
            MinMax: 0,
            Size: 0,
            SelectedTypeOptions: 0,

            InputName: '',
            InputType: 'text',
            InputRequired: false,
            InputPlaceholder: '',
            InputValue: '',
            InputMinlength: '',
            InputMaxlength: '',
            InputSize: '',
            InputMin: '',
            InputMax: '',

            ArrayInputs: [],
            ArrayOptions: [],

            sub_option_other: 0,

            ArraySubOptionsTypes: {
               option1: {
                  type: 'text',
               },
               option2: {
                  type: 'file',
               }
            },
            ArraySubOptionsValues: [],

            InputIdEidtAsigned: null,

            editarAparte: false,
            AgregarAparte: false
          
         }
      },
      mounted: function () {
         this.LoadBasicInfoService()      
      },
      methods: {   
         CRUDSubOptions: function(order, type){

            var existOtro = false;
            var existOtroNumero = 0;
       
           this.ArrayOptions.forEach((element, index) => {
               if (element.option.value == '/otro' || element.option.value == '/otros'){
                  existOtro = true;
                  existOtroNumero = existOtroNumero + 1;
                  if(existOtroNumero > 1){
                     this.ArrayOptions.splice(index, 1)                  
                  }
               }
            });
   

            if( order === 'edit_other' && type == '/otro'){ this.sub_option_other = 1 }

            if( order === 'edit_other' && type == '/otros'){ this.sub_option_other = 2 }

            if( order === 'edit_other' && type != '/otro' && type != '/otros' && existOtro == false ){ this.sub_option_other = 0 }

            if( order === 'activate_type_text' ){ this.ArraySubOptionsTypes.option1.type = 'text' }

            if( order === 'inactive_type_text' ){ this.ArraySubOptionsTypes.option1.type = '' }

            if( order === 'activate_type_file' ){ this.ArraySubOptionsTypes.option2.type = 'file' }

            if( order === 'inactive_type_file' ){ this.ArraySubOptionsTypes.option2.type = '' }

         },

         CRUDOptionInputJSON: function(order, index) {   

            if( order === 'add' && this.sub_option_other == 0 ){
               this.ArrayOptions.push({
                  option: {
                     value: ''
                  }
               })
            }

            if(order === 'edit'){
               this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'].push({
                  option: {
                     value: ''
                  }
               })
            }

            if(order === 'delete_option_list_create'){

               this.ArrayOptions.splice(index, 1);
            }

            if(order === 'delete_option_list_edit'){

               this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'].splice(index, 1)
            }            
         },
   

         AddInputEdit: function () {

            if (this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'checkbox' &&
               this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'radio' &&
               this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'select') {

                  this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'] = []
            }

            this.InputType = 'text'
            this.InputIdEidtAsigned = null
         },

         AttributeInputVisivility: function () {
            this.MinMax = 0
            this.Size = 0
            this.SelectedTypeOptions = 0

            if (this.InputType == 'number' ||
               this.InputType == 'date' ||
               this.InputType == 'datetime' ||
               this.InputType == 'month' ||
               this.InputType == 'hour' ||
               this.InputType == 'week') {

               this.MinMax = 1
            }

            if (this.InputType == 'text' ||
               this.InputType == 'tel' ||
               this.InputType == 'url' ||
               this.InputType == 'email' ||
               this.InputType == 'password') {

               this.Size = 1
            }

            if (this.InputType == 'checkbox' ||
               this.InputType == 'radio' ||
               this.InputType == 'select') {

               this.SelectedTypeOptions = 1
            }

            this.ArrayOptions = []

         },

         Get_Input_JSON_Mayor: function(NewInputs){
            this.ArrayInputs = NewInputs

         },
         AsignedIdEdit: function (value) {
            this.InputIdEidtAsigned = value
            this.open = true
         },

         // PETICIONES A LA BASES DE DATOS

         SaveNewForm: function () {

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

         LoadBasicInfoService: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "build/load_info_basic_service.php",
               {
                  id_service: this.$route.params.id_service,
               }).then((response) => {

                  if (response.data.mensaje != 1) {
                     // window.history.back()
                  }
                  this.ServiceName = response['data']['datos'][0]['name']
                  this.ServiceDescription = response['data']['datos'][0]['description']

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