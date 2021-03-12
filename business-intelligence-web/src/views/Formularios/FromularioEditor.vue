<template>
   <div class="px-4 pt-2 pb-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
      <div class="grid grid-cols-1 gap-4 ">

         <div class="space-y-9 ">

            <div class="display-fex mt-5">
               <span v-if="editorBasicoForm == 1" @click="OrdenVisivility(0)"
                  class="mx-2 px-2 py-1 text-white text-xs rounded-full bg-green-400 cursor-pointer">
                  <i class="fa fa-pencil"></i> Editar encabezado
               </span>
               <span v-if="editorBasicoForm == 0" @click="OrdenVisivility(1)"
                  class="mx-2 px-2 py-1 text-white text-xs rounded-full bg-blue-400 cursor-pointer">
                  <i class="fa fa-plus"></i> Agregar campos
               </span>
            </div>

            <form v-if="editorBasicoForm == 0" action="#" method="POST" class="space-y-6 mt-5"
               @submit.prevent="UpdateInfoBasicForm()">
               <div class="label-intro">
                  <div class="-mt-4 absolute tracking-wider px-1 text-sm">
                     <label class="bg-white text-gray-800 px-1">Nombre del formulario</label>
                  </div>
                  <input type="text"
                     class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                     required v-model="NameForm">
               </div>
               <div>
                  <div class="label-intro">
                     <div class="-mt-4 absolute tracking-wider px-1 text-sm">
                        <label class="bg-white text-gray-800 px-1">Breve descripción</label>
                     </div>
                     <textarea rows="4"
                        class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                        required v-model="DescriptionForm"></textarea>
                  </div>
                  <p class="mt-1 text-sm text-gray-500">
                     * Formulario privado.
                  </p>
               </div>

               <div class="py-2 text-left">
                  <button type="submit"
                     class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                     Actualizar
                  </button>
               </div>
            </form>

         </div>


         <PreviewForm :NameForm="NameForm" :DescriptionForm="DescriptionForm" />

         <div class="space-y-9 ">

            <PreviewFormEditor :NameForm="NameForm" :DescriptionForm="DescriptionForm" :ArrayInputs="ArrayInputs" />

            <form @submit.prevent="AddInput" v-if="editorBasicoForm == 1" autocomplete="off">
               <div class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-3 gap-4 gap-y-8">
                  <div class="block">
                     <label><span class="text-gray-700">Tipo de campo</span></label>
                     <select class="form-control2" required v-model="InputType" @change="AttributeInputVisivility">
                        <option value=""></option>
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
                     <label><span class="text-gray-700">Nombre del campo</span></label>
                     <input type="text" class="form-control2" placeholder="" required v-model="InputName">
                  </div>

                  <div class="block">
                     <label><span class="text-gray-700">Obligatorio</span></label>
                     <select class="form-control2" required v-model="InputRequired">
                        <option value="false">No</option>
                        <option value="true">Si</option>
                     </select>
                  </div>

                  <div class="block" v-if="CheckRadio == 0">
                     <label><span class="text-gray-700">Placeholder</span></label>
                     <input type="text" class="form-control2" v-model="InputPlaceholder">
                  </div>

                  <div class="block" v-if="CheckRadio == 0">
                     <label><span class="text-gray-700">Valor por defecto</span></label>
                     <input type="text" class="form-control2" v-model="InputValue">
                  </div>
               </div>

               <span v-if="CheckRadio == 1"
                  class="relative mt-8 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-8">

                  <div v-for="ACheck in ArrayCheckbox" :key="ACheck.id" class="block">
                     <label><span class="text-gray-700">Opción</span></label>
                     <input type="text" class="form-control2" v-model="ACheck['option']['value']">
                  </div>

                  <button type="button" v-if="CheckRadio == 1" @click="AddCheckBox"
                     class="mt-5 inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-gray-500 hover:bg-gray-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                     <i class="fa fa-plus pt-1 mr-2"></i> Agregar opción
                  </button>
               </span>


               <div v-if="InputType != '' && InputName != '' " class="py-1 mt-5 text-left">
                  <button type="submit"
                     class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                     Crear
                  </button>
               </div>
            </form>
         </div>



         <pre>{{ ArrayCheckbox }}</pre>

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
            CheckRadio: 0,

            InputName: '',
            InputType: '',
            InputRequired: false,
            InputPlaceholder: '',
            InputValue: '',
            InputMinlength: '',
            InputMaxlength: '',
            InputSize: '',
            InputMin: '',
            InputMax: '',

            ArrayInputs: [],
            ArrayCheckbox: [],
         }
      },
      mounted: function () {
         this.LoadInfoForm()
      },
      methods: {
         AddCheckBox() {
            this.ArrayCheckbox.push({
               option: {
                  value: ''
               }
            })

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
                     'ifCheckbox': this.ArrayCheckbox,
                  }

               }
            );

            this.InputName = ''
            this.InputType = ''
            this.InputRequired = false
            this.InputPlaceholder = ''
            this.InputValue = ''
            this.InputMinlength = ''
            this.InputMaxlength = ''
            this.InputSize = ''
            this.InputMin = ''
            this.InputMax = ''

            this.ArrayCheckbox = []

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

         OrdenVisivility: function (orden) {
            this.editorBasicoForm = orden
         },

         SizeAndMaxLenght: function () {

            this.InputSize = this.InputMaxlength

         },

         AttributeInputVisivility: function () {

            this.MinMax = 0
            this.Size = 0
            this.CheckRadio = 0

            if (this.InputType == 'number' ||
               this.InputType == 'date' ||
               this.InputType == 'datetime' ||
               this.InputType == 'month' ||
               this.InputType == 'hour' ||
               this.InputType == 'week') {

               this.MinMax = 1
            }

            if (this.InputType == 'text' ||
               this.InputType == 'search' ||
               this.InputType == 'tel' ||
               this.InputType == 'url' ||
               this.InputType == 'email' ||
               this.InputType == 'password') {

               this.Size = 1
            }

            if (this.InputType == 'checkbox' ||
               this.InputType == 'radio' ||
               this.InputType == 'select') {

               this.CheckRadio = 1
            }

            this.ArrayCheckbox = []

         }
      }
   }
</script>