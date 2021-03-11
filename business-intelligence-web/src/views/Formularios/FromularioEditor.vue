<template>
   <div class="grid grid-cols-1 gap-4 ">
      
      <div class="space-y-9 ">

         <div class="display-fex mt-5">
            <span v-if="editorBasicoForm == 1" @click="OrdenVisivility(0)" class="mx-2 px-2 py-1 text-white text-xs rounded-full bg-green-400 cursor-pointer">
               <i class="fa fa-pencil"></i> Editar encabezado
            </span>
            <span v-if="editorBasicoForm == 0" @click="OrdenVisivility(1)" class="mx-2 px-2 py-1 text-white text-xs rounded-full bg-blue-400 cursor-pointer">
               <i class="fa fa-plus"></i> Agregar campos
            </span>
         </div>

         <form v-if="editorBasicoForm == 0" action="#" method="POST" class="space-y-6 mt-5" @submit.prevent="UpdateInfoBasicForm()">       
            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Nombre del formulario</label>
               </div>
               <input type="text"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  required v-model="NameForm">
            </div>
            <div>
               <div class="label-intro">
                  <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                     <label class="bg-white text-gray-600 px-1">Breve descripción</label>
                  </div>
                  <textarea
                  rows="4"
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

         <PreviewForm :NameForm="NameForm" :DescriptionForm="DescriptionForm"/>  

         <form @submit.prevent="AddInput" v-if="editorBasicoForm == 1" autocomplete="off">
            <div class="relative mt-5 grid grid-cols-3 gap-4">
            
            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Tipo de campo</label>
               </div>
               <select class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full" 
                  required
                  v-model="InputType"
                  @change="AttributeInputVisivility">
                  <option value="0">Seleccionar opción</option>
                  <option value="text">Texto</option>
                  <option value="number">Número</option>
                  <option value="select">lista desplegable</option>
                  <option value="textarea">Textarea</option>
                  <option value="email">Email</option>
                  <option value="tel">Tel</option>
                  <option value="checkbox">Checkbox</option>
                  <option value="radio">Radio</option>
                  <option value="file">Archivo</option>
                  <option value="image">Imagen</option>
                  <option value="password">Contraseña</option>
                  <option value="url">URL</option>
                  <option value="range">Rango</option>
                  <option value="date">Date</option>
                  <option value="datetime-local">Datetime</option>
                  <option value="month">Mes</option>
                  <option value="week">Semana</option>
                  <option value="time">Time</option>
                  <option value="color">Color</option>                 
               </select>
            </div>

            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Nombre del campo</label>
               </div>
               <input type="text"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  required
                  v-model="InputName"
                  autofocus>
            </div>

              <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Campo obligatorio</label>
               </div>
               <select class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full" 
                  required
                  v-model="InputRequired">
                  <option value="false">No</option>
                  <option value="true">Si</option>
                           
               </select>
            </div>

            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Placeholder</label>
               </div>
               <input type="text"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  v-model="InputPlaceholder">
            </div>

            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Valor por defecto</label>
               </div>
               <input type="text"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  v-model="InputValue">
            </div>

            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Longitud mínima</label>
               </div>
               <input type="number"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  required v-model="InputMinlength">
            </div>

            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Longitud máxima</label>
               </div>
               <input type="number"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  required v-model="InputMaxlength" @keyup="SizeAndMaxLenght()">
            </div>

            <div v-if="Size == 1" class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Tamaño</label>
               </div>
               <input type="number"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  required v-model="InputSize">
            </div>

            


            <div v-if="MinMax == 1" 
               class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Min</label>
               </div>
               <input type="text"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  v-model="InputMin"
                  required>
            </div>

            <div v-if="MinMax == 1" 
               class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Max</label>
               </div>
               <input type="text"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  v-model="InputMax"
                  required>
            </div>
            </div>

            <div class="py-1 mt-5 text-left">
               <button type="submit"
                  class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                  Crear
               </button>
            </div>
         </form>        
      </div>

      <PreviewFormEditor :NameForm="NameForm" :DescriptionForm="DescriptionForm" :ArrayInputs="ArrayInputs" />

   </div>
</template>
<script>

   import axios from "axios"
   import Noty from "noty";
   import API_ROUTER from "./../../services/SERVER_API"

   import PreviewFormEditor from "./PreviewFormEditor"
   import PreviewForm from "./PreviewForm"

   export default {
      components:{
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
         }
      },   
      mounted: function () {
         this.LoadInfoForm()
      },  
      methods: {
         UpdateInfoBasicForm: function(){

         },
         AddInput: function(){
  
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
                  }
               }
            );
        
            this.InputName= ''
            this.InputType= ''
            this.InputRequired= false
            this.InputPlaceholder= ''
            this.InputValue= ''
            this.InputMinlength= ''
            this.InputMaxlength= ''
            this.InputSize = ''
            this.InputMin = ''
            this.InputMax = ''
            
         },
         LoadInfoForm: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "form_info_basic.php",
               {
                  Form: this.$route.params.id,
                  OrderForm: this.OrderForm
               }).then((response) => {

                  if(response.data.mensaje != 1){
                     window.history.back()
                  }

                  console.log(response['data']['datos'][0]['name']);

                  this.NameForm = response['data']['datos'][0]['name']
                  this.DescriptionForm = response['data']['datos'][0]['description']

                  // new Noty({
                  //    theme: "sunset", layout: "topRight", progressBar: true, closeWith: ["click", "button"], timeout: 8000,
                  //    type: response.data.icono, text: response.data.mensaje
                  // }).show();
               })
               .catch(() => {
                  alert('Error de conexión')
               })
         },

         OrdenVisivility: function(orden){
            this.editorBasicoForm = orden
         },

         SizeAndMaxLenght: function(){
            
            this.InputSize = this.InputMaxlength

         },

         AttributeInputVisivility: function(){

            this.MinMax = 0
            this.Size = 0

            if(   this.InputType == 'number' || 
                  this.InputType == 'range' || 
                  this.InputType == 'date' || 
                  this.InputType == 'datetime' || 
                  this.InputType == 'month' || 
                  this.InputType == 'hour' || 
                  this.InputType == 'week'){

                  this.MinMax = 1
            }

            if(   this.InputType == 'text' || 
                  this.InputType == 'search' || 
                  this.InputType == 'tel' || 
                  this.InputType == 'url' || 
                  this.InputType == 'email' || 
                  this.InputType == 'password' ){

                  this.Size = 1
            }
            
            console.log(this.InputType)
            console.log(this.InputSize)

         }


      }
   }
</script>