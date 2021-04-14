<template>
   <div class="px-4 mb-10 pt-2 pb-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
      <div class="grid grid-cols-1 mb-10 ">

         <!-- hover:bg-gray-200  
        bg-gray-100  -->
         <div class="flex  items-baseline flex-wrap">

            <div class="flex m-2">

               <a href="javascript:history.back()" class="text-base  rounded-r-none  hover:scale-110 focus:outline-none flex justify-center px-4 py-2 rounded font-bold cursor-pointer hover:bg-gray-200 border ">
                  <div class="flex leading-5">
                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-chevron-left w-5 h-5">
                        <polyline points="15 18 9 12 15 6"></polyline>
                     </svg>
                     <span class="hidden md:block">Atrás</span>
                  </div>
               </a>



               
               <button v-if="editorBasicoForm == 1" @click="OrdenVisivility(0)" class="text-base rounded-l-none hover:bg-gray-200 rounded-r-none border-l-0 border-r-0 hover:scale-110 focus:outline-none flex justify-center px-4 py-2 rounded font-bold cursor-pointer hover:bg-gray-200 border ">
                  <div class="flex leading-5">
                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-edit w-5 h-5 mr-1">
                        <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                        <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                     </svg>
                     <span class="hidden md:block">Editar encabezado</span>
                  </div>
               </button>

               <button v-if="editorBasicoForm == 0" @click="OrdenVisivility(1)" class="text-base rounded-l-none hover:bg-gray-200 rounded-r-none border-l-0 border-r-0 hover:scale-110 focus:outline-none flex justify-center px-4 py-2 rounded font-bold cursor-pointer hover:bg-gray-200 border ">
                  <div class="flex leading-4">
                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-edit w-5 h-5 mr-1">
                        <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                        <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                     </svg>
                     <span class="hidden md:block">Agregar campos</span>
                  </div>
               </button>
                            

               <button @click="AsSavedForm = 1"
               class="text-base rounded-l-none  hover:bg-gray-200 hover:scale-110 focus:outline-none flex justify-center px-4 py-2 rounded font-bold cursor-pointer hover:bg-gray-200 border ">
                  <div class="flex leading-5">
                     
                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-save w-5 h-5 mr-1">
                        <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path>
                        <polyline points="17 21 17 13 7 13 7 21"></polyline>
                        <polyline points="7 3 7 8 15 8"></polyline>
                     </svg>
                     <span class="hidden md:block">Guardar formulario</span>
                  </div>
               </button>

               <button v-if="AsSavedForm == 1" @click="AsSavedForm = 0 "
               class="text-base rounded-l-none bg-red-400  hover:bg-red-500 text-white hover:scale-110 focus:outline-none flex justify-center px-4 py-2 rounded font-bold cursor-pointer hover:bg-gray-200 border ">
                  <div class="flex leading-5">
                     Aún no
                  </div>
               </button>

               <button v-if="AsSavedForm == 1" @click="SaveNewForm(); AsSavedForm = 0"
               class="text-base rounded-l-none bg-green-500  hover:bg-green-600 text-white hover:scale-110 focus:outline-none flex justify-center px-4 py-2 rounded font-bold cursor-pointer hover:bg-gray-200 border ">
                  <div class="flex leading-5">
                     Si, guardar
                  </div>
               </button>

               
            </div>
         </div>


         <form v-if="editorBasicoForm == 0" @submit.prevent="UpdateInfoBasicForm(), OrdenVisivility(1)" class="grid gap-x-4 gap-y-8 my-5">
            <div class="block">
               <label><span class="text-gray-700">Nombre del formulario</span></label>
               <input type="text" class="form-control2" required v-model="NameForm">
            </div>
            <div>
               <div class="block">
                  <label><span class="text-gray-700">Descripción</span></label>
                  <textarea rows="4" class="form-control2 py-2" required v-model="DescriptionForm"></textarea>
               </div>
               <p class="mt-1 text-sm text-gray-500">
                  * Formulario privado.
               </p>
            </div>

            <div class="py-2 text-left">
               <button type="submit" class="btn-indigo">
                  Actualizar
               </button>
            </div>
         </form>

         <PreviewForm v-if="editorBasicoForm == 1" :NameForm="NameForm" :DescriptionForm="DescriptionForm" />

         <PreviewFormEditor v-if="ArrayInputs.length && InputIdEidtAsigned == null && editorBasicoForm == 1 "
            :NameForm="NameForm" :DescriptionForm="DescriptionForm" :ArrayInputs="ArrayInputs"
            @GetIdEdit="AsignedIdEdit" />

         <form @submit.prevent="AddInput" v-if="editorBasicoForm == 1 && InputIdEidtAsigned == null" autocomplete="off"
            class="my-10">
            <div class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-3 gap-x-4 gap-y-2">
               <div class="block">
                  <label><span class="text-gray-700 font-semibold">Tipo de campo</span></label>
                  <select class="form-control2" required v-model="InputType" @change="AttributeInputVisivility">
                     <option value="text">Respuesta corta</option>
                     <option value="number">Númerico</option>
                     <option value="select">Lista desplegable</option>
                     <option value="textarea">Parrafo</option>
                     <option value="email">Email</option>                 
                     <option value="checkbox">Selección multiple</option>
                     <option value="radio">Selección única</option>
                     <option value="file">Archivo</option>
                     <option value="password">Contraseña</option>
                     <option value="url">Dirección web</option>
                     <option value="date">Fecha</option>
                     <option value="datetime-local">Fecha y hora</option>
                     <option value="time">Hora</option>
                     <option value="color">Color</option>
                  </select>
               </div>

               <div class="block">
                  <label><span class="text-gray-700 font-semibold">Nombre del campo</span></label>
                  <input type="text" class="form-control2" placeholder="" required v-model="InputName">
               </div>

               <div class="block">
                  <label><span class="text-gray-700 font-semibold">Obligatorio</span></label>
                  <select class="form-control2" required v-model="InputRequired">
                     <option value="false">No</option>
                     <option value="true">Si</option>
                  </select>
               </div>

               <div class="block" v-if="SelectedTypeOptions == 0">
                  <label><span class="text-gray-700 font-semibold">Placeholder</span></label>
                  <input type="text" class="form-control2" v-model="InputPlaceholder">
               </div>

               <div class="block" v-if="SelectedTypeOptions == 0">
                  <label><span class="text-gray-700 font-semibold">Valor por defecto</span></label>
                  <input type="text" class="form-control2" v-model="InputValue">
               </div>
            </div>


            <form v-if="SelectedTypeOptions == 1" @submit.prevent="AddOptionForm()"
               class="relative mt-8 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-12">

               <div v-for="(ACheck, index) in ArrayOptions" :key="index" class="block">
                  <label class="grid grid-cols-3 gap-4">
                     <span class="text-gray-700 font-semibold">Opción</span>
                     <span class="fa fa-trash cursor-pointer" @click="DeleteOption(index)"></span>
                  </label>
                  <input type="text" :name="'name'+index" class="form-control2" v-model="ACheck['option']['value']"
                     required>
               </div>

               <button type="submit" v-if="SelectedTypeOptions == 1" class="mt-5 btn-gray">
                  <i class="fa fa-plus pt-1 mr-2"></i> Agregar opción
               </button>
            </form>

            <div v-if="InputType != '' && InputName != '' " class="py-10 text-left ">
               <button type="submit" class="mr-3 btn-indigo">
                  Crear entrada de datos
               </button>
               <!-- <button type="submit" class=" btn-green2">
                  Terminar y guardar
               </button> -->
            </div>
         </form>


         <form @submit.prevent="AddInputEdit" v-if="editorBasicoForm == 1 && InputIdEidtAsigned != null"
            autocomplete="off" class="my-10">
            <span v-for="(inputEdit, index) in ArrayInputs[InputIdEidtAsigned]" :key="index">
               <div class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-3 gap-x-4 gap-y-8">
                  <div class="block">
                     <label><span class="text-gray-700 font-semibold">Tipo de campo</span></label>
                     <select class="form-control2" required v-model="inputEdit.type" @change="AttributeInputVisivility">
                        <option value="text">Respuesta corta</option>
                        <option value="number">Númerico</option>
                        <option value="select">Lista desplegable</option>
                        <option value="textarea">Parrafo</option>
                        <option value="email">Email</option>                 
                        <option value="checkbox">Selección multiple</option>
                        <option value="radio">Selección única</option>
                        <option value="file">Archivo</option>
                        <option value="password">Contraseña</option>
                        <option value="url">Dirección web</option>
                        <option value="date">Fecha</option>
                        <option value="datetime-local">Fecha y hora</option>
                        <option value="time">Hora</option>
                        <option value="color">Color</option>
                     </select>
                  </div>
                  <div class="block">
                     <label><span class="text-gray-700 font-semibold">Nombre del campo</span></label>
                     <input type="text" class="form-control2" placeholder="" required v-model="inputEdit.name">
                  </div>
                  <div class="block">
                     <label><span class="text-gray-700 font-semibold">Obligatorio</span></label>
                     <select class="form-control2" required v-model="inputEdit.required">
                        <option value="false">No</option>
                        <option value="true">Si</option>
                     </select>
                  </div>

                  <div class="block"
                     v-if="inputEdit.type != 'checkbox' && inputEdit.type != 'radio' && inputEdit.type !='select' ">
                     <label><span class="text-gray-700 font-semibold">Placeholder</span></label>
                     <input type="text" class="form-control2" v-model="inputEdit.placeholder">
                  </div>

                  <div class="block"
                     v-if="inputEdit.type != 'checkbox' && inputEdit.type != 'radio' && inputEdit.type !='select' ">
                     <label><span class="text-gray-700 font-semibold">Valor por defecto </span></label>
                     <input type="text" class="form-control2" v-model="inputEdit.value">
                  </div>
               </div>

               <form @submit.prevent="AddOptionFormEdit()"
                  v-if="inputEdit.type == 'checkbox' || inputEdit.type == 'radio' || inputEdit.type =='select' "
                  class="relative mt-8 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-12"
                  autocomplete="off">
                  <div v-for="(ACheck, index) in inputEdit.options" :key="index" class="block">
                     <label class="grid grid-cols-3 gap-4">
                        <span class="text-gray-700 font-semibold">Opción </span>
                        <span class="fa fa-trash cursor-pointer" @click="DeleteOptionEdit(index)"></span>
                     </label>
                     <input type="text" :name="'name'+index" class="form-control2" v-model="ACheck['option']['value']"
                        required>
                  </div>

                  <button type="submit"
                     v-if="inputEdit.type == 'checkbox' || inputEdit.type == 'radio' || inputEdit.type =='select' "
                     class="mt-5 btn-gray">
                     <i class="fa fa-plus pt-1 mr-2"></i> Agregar opción
                  </button>
               </form>

               <div v-if="inputEdit.type != '' && inputEdit.name != '' " class="py-10 text-left ">
                  <button type="submit" class="mr-3 btn-indigo">
                     Actualizar
                  </button>
               </div>
            </span>
         </form>
         <div>
         </div>

         <!-- <pre>{{ InputIdEidtAsigned }}</pre> -->

         <!-- <pre>{{ ArrayInputs }}</pre>

         <pre>{{ ArrayOptions }}</pre> -->

      </div>
   </div>
</template>
<script>

   import axios from "axios"
   import Noty from "noty";
   import API_ROUTER from "./../../services/SERVER_API"

   import PreviewFormEditor from "./PreviewFormEditor"
   import PreviewForm from "./PreviewForm"


   export default {
      components: {
         PreviewFormEditor,
         PreviewForm,
      },
      data() {
         return {
            name: 'FromularioEditor',
            OrderForm: 'load',
            NameForm: '',
            DescriptionForm: '',
            editorBasicoForm: 1,
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

            InputIdEidtAsigned: null,

            AsSavedForm: 0,
         }
      },
      mounted: function () {
         this.LoadInfoForm()
      },
      methods: {
         SaveNewForm: function () {

            // this.AsSavedForm = 1

            axios.post(API_ROUTER.PHP7_CONTROLLER + "form_saved.php",
               {
                  FormId: this.$route.params.id,
                  ArrayInputs: this.ArrayInputs
               }).then((response) => {

                  new Noty({
                     theme: "sunset", layout: "topRight", progressBar: true, closeWith: ["click", "button"], timeout: 8000,
                     type: response.data.icono, text: response.data.mensaje
                  }).show();

               }).catch(() => {
                  alert('Error de conexión')
            })
         },
         AsignedIdEdit: function (value) {
            this.InputIdEidtAsigned = value
         },
         AddOptionForm() {
            this.ArrayOptions.push({
               option: {
                  value: ''
               }
            })
         },
         AddOptionFormEdit() {
            this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'].push({
               option: {
                  value: ''
               }
            })
         },
         DeleteOptionEdit(index) {

            this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'].splice(index, 1)

         },
         DeleteOption: function (index) {
            this.ArrayOptions.splice(index, 1);
         },
         UpdateInfoBasicForm: function () {

         },
         AddInput: function () {

            this.ArrayInputs.push(
               {
                  input: {
                     'name': this.InputName,
                     'type': this.InputType,
                     'required': this.InputRequired,
                     'placeholder': this.InputPlaceholder,
                     'value': this.InputValue,
                     'minlength': this.InputMinlength,
                     'maxlength': this.InputMaxlength,
                     'size': this.InputSize,
                     'min': this.InputMin,
                     'max': this.InputMax,
                     'edit': 0,
                     'options': this.ArrayOptions,
                  }

               }
            );

            this.InputName = ''
            this.InputType = 'text'
            this.InputRequired = false
            this.InputPlaceholder = ''
            this.InputValue = ''
            this.InputMinlength = ''
            this.InputMaxlength = ''
            this.InputSize = ''
            this.InputMin = ''
            this.InputMax = ''

            this.ArrayOptions = []

         },

         AddInputEdit: function () {

            console.log(this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'])

            if (this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'checkbox' &&
               this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'radio' &&
               this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'select') {

               this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'] = []
            }

            this.InputType = 'text'
            this.InputIdEidtAsigned = null


         },

         OrdenVisivility: function (orden) {
            this.editorBasicoForm = orden
         },

         SizeAndMaxLenght: function () {

            this.InputSize = this.InputMaxlength

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
         LoadInfoForm: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "form_info_basic.php",
               {
                  Form: this.$route.params.id,
                  OrderForm: this.OrderForm
               }).then((response) => {

                  if (response.data.mensaje != 1) {
                     window.history.back()
                  }

                  this.NameForm = response['data']['datos'][0]['name']
                  this.DescriptionForm = response['data']['datos'][0]['description']

               }).catch(() => {
                  alert('Error de conexión')
               })
         },
      }
   }
</script>