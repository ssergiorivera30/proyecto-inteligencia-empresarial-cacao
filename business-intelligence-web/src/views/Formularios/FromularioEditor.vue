<template>
   <div class="px-4 mb-10 pt-2 pb-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
      <div class="grid grid-cols-1 mb-10 ">

         <div class="display-fex my-10">
            <span v-if="editorBasicoForm == 1" @click="OrdenVisivility(0)"
               class="mx-2 px-2 py-1 text-white text-xs rounded-full bg-green-400 cursor-pointer">
               <i class="fa fa-pencil"></i> Editar encabezado
            </span>
            <span v-if="editorBasicoForm == 0" @click="OrdenVisivility(1)"
               class="mx-2 px-2 py-1 text-white text-xs rounded-full bg-blue-400 cursor-pointer">
               <i class="fa fa-plus"></i> Agregar campos
            </span>
         </div>

         <form v-if="editorBasicoForm == 0" @submit.prevent="UpdateInfoBasicForm()" class="grid gap-x-4 gap-y-8 my-5">
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

         <PreviewForm 
            v-if="editorBasicoForm == 1"
            :NameForm="NameForm" 
            :DescriptionForm="DescriptionForm" />

         <PreviewFormEditor 
            v-if="ArrayInputs.length && InputIdEidtAsigned == null && editorBasicoForm == 1 " 
            :NameForm="NameForm" 
            :DescriptionForm="DescriptionForm"
            :ArrayInputs="ArrayInputs" @GetIdEdit="AsignedIdEdit" 
            />

         <form @submit.prevent="AddInput" v-if="editorBasicoForm == 1 && InputIdEidtAsigned == null" autocomplete="off"
            class="my-10">
            <div class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-3 gap-x-4 gap-y-8">
               <div class="block">
                  <label><span class="text-gray-700 font-semibold">Tipo de campo</span></label>
                  <select class="form-control2" required v-model="InputType" @change="AttributeInputVisivility">
                     <option value="text">Respuesta corta</option>
                     <option value="number">Númerico</option>
                     <option value="select">Lista desplegable</option>
                     <option value="textarea">Parrafo</option>
                     <option value="email">Email</option>
                     <option value="tel">Tel</option>
                     <option value="checkbox">Selección multiple</option>
                     <option value="radio">Selección única</option>
                     <option value="file">Archivo</option>
                     <option value="password">Contraseña</option>
                     <option value="url">Dirección web</option>
                     <option value="date">Fecha</option>
                     <option value="datetime-local">Fecha y hora</option>
                     <option value="time">Hora</option>
                     <option value="month">Mes</option>
                     <option value="week">Semana</option>
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
               <button type="submit" class=" btn-green2">
                  Terminar y guardar
               </button>
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
                        <option value="tel">Tel</option>
                        <option value="checkbox">Selección multiple</option>
                        <option value="radio">Selección única</option>
                        <option value="file">Archivo</option>
                        <option value="password">Contraseña</option>
                        <option value="url">Dirección web</option>
                        <option value="date">Fecha</option>
                        <option value="datetime-local">Fecha y hora</option>
                        <option value="time">Hora</option>
                        <option value="month">Mes</option>
                        <option value="week">Semana</option>
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

            InputIdEidtAsigned: null
         }
      },
      mounted: function () {
         this.LoadInfoForm()
      },
      methods: {
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