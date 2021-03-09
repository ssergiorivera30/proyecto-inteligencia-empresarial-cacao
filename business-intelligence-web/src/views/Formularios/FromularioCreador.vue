<template>
   <div class="grid grid-cols-2 gap-4">
      <div>
         <form v-if="editorBasicoForm == 0" action="#" method="POST" class="space-y-4 mt-5" @submit.prevent="SaveInitialForm()">
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
                  required v-model="FechaFinal">
            </div>

            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Tipo de campo</label>
               </div>
               <input type="text"
                  class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full"
                  required v-model="FechaFinal">
            </div>

            <div class="py-1 text-left">
               <button type="submit"
                  class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                  Guardar
               </button>
            </div>
         </form>
      </div>

      <div>

         <div class="display-fex mt-5">
               <span v-if="editorBasicoForm == 1" @click="OrdenVisivility(0)" class="mx-2 px-2 py-1 rounded-full bg-green-400 cursor-pointer"><i class="fa fa-pencil"></i> Editar encabezado</span>
               <span v-if="editorBasicoForm == 3" @click="OrdenVisivility(1)" class="mx-2 px-2 py-1 rounded-full bg-blue-400 cursor-pointer"><i class="fa fa-plus"></i> Agregar campos</span>
         </div>

         <div class="px-4 pt-2 pb-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:pt-3">

            
            <div class="max-w-xl mb-10 md:mx-auto sm:text-center lg:max-w-2xl md:mb-12">

               <h2
                  class="max-w-lg mb-6 font-sans text-3xl font-bold leading-none tracking-tight text-gray-900 sm:text-4xl md:mx-auto">
                  {{ NameForm }}
               </h2>
               <p class="text-base text-gray-700 md:text-lg">
                  {{ DescriptionForm }}
               </p>
            </div>
            <div class="max-w-lg space-y-3 sm:mx-auto lg:max-w-xl">
               <div
                  class="flex items-center p-2 duration-300 transform border rounded shadow hover:scale-105 sm:hover:scale-110">
                  <div class="mr-2">
                     <svg class="w-6 h-6 text-deep-purple-accent-400 sm:w-8 sm:h-8" stroke="currentColor"
                        viewBox="0 0 52 52">
                        <polygon stroke-width="3" stroke-linecap="round" stroke-linejoin="round" fill="none"
                           points="29 13 14 29 25 29 23 39 38 23 27 23"></polygon>
                     </svg>
                  </div>
                  <span class="text-gray-800">Cargando...</span>
               </div>
               
             
            </div>
         </div>
      </div>
   </div>
</template>
<script>

   import axios from "axios"
   import Noty from "noty";
   import API_ROUTER from "./../../services/SERVER_API"

   export default {
      data() {
         return {
            name: 'FromularioCreador',
            NameForm: '',
            DescriptionForm: '',
            editorBasicoForm: 0,
         }
      },
      beforeMount: function () {

      },
      mounted: function () {
         //  console.log(this.$params);

      },
      methods: {
         SaveInitialForm: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "form_create.php",
               {
                  NameForm: this.NameForm,
                  DescriptionForm: this.DescriptionForm
               }).then((response) => {
                  new Noty({
                     theme: "sunset", layout: "topRight", progressBar: true, closeWith: ["click", "button"], timeout: 8000,
                     type: response.data.icono, text: response.data.mensaje
                  }).show();
               })
               .catch((error) => {
                  console.log(error);
               })
               .then(res => {
                  console.log(res);
                  this.editorBasicoForm = 1
               })
         },

         OrdenVisivility: function(orden){
            this.editorBasicoForm = orden
         }


      }
   }
</script>