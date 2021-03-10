<template>
   <div class="grid grid-cols-2 gap-4">
      
      <div class="space-y-9">

         <div class="display-fex mt-5">
            <span v-if="editorBasicoForm == 1" @click="OrdenVisivility(0)" class="mx-2 px-3 py-1 text-white rounded-full bg-green-400 cursor-pointer"><i class="fa fa-pencil"></i> Editar encabezado</span>
            <span v-if="editorBasicoForm == 0" @click="OrdenVisivility(1)" class="mx-2 px-3 py-1 text-white rounded-full bg-blue-400 cursor-pointer"><i class="fa fa-plus"></i> Agregar campos</span>
         </div>

         <form v-if="editorBasicoForm == 0" action="#" method="POST" class="space-y-6 mt-5" @submit.prevent="SaveInitialForm()">       
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
                  Continuar
               </button>
            </div>
         </form>

         <form v-if="editorBasicoForm == 1" class="relative mt-5 grid grid-cols-2 gap-4">
            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Nombre del campo</label>
               </div>
               <input type="text"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  required v-model="NameInput">
            </div>
            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Tipo de campo</label>
               </div>
               <select class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full" required v-model="TypeInput">
                  <option value="0">Seleccionar opción</option>
                  <option value="1">Texto</option>
                  <option value="2">Entero</option>
                  <option value="3">Buleano</option>
               </select>
            </div>
            <div class="py-1 text-left">
               <button type="submit"
                  class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                  Guardar
               </button>
            </div>
         </form>
      </div>

      <PreviewFormEditor :NameForm="NameForm" :DescriptionForm="DescriptionForm"/>

   </div>
</template>
<script>

   import axios from "axios"
   import Noty from "noty";
   import API_ROUTER from "./../../services/SERVER_API"

   import PreviewFormEditor from "./PreviewFormEditor"

   export default {
      components:{
         PreviewFormEditor
      },
      data() {
         return {
            name: 'FromularioEditor',
            OrderForm: 'load',
            NameForm: '',
            DescriptionForm: '',
            editorBasicoForm: 1,
            NameInput: '',
            TypeInput: '',
         }
      },
      beforeMount: function () {

      },
      mounted: function () {
         this.LoadInfoForm()

      },
      methods: {
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
         }


      }
   }
</script>