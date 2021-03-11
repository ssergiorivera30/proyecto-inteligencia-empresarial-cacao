<template>
   <div class="grid grid-cols-2 gap-4">
      <div>
         <form action="#" method="POST" class="space-y-6 mt-5" @submit.prevent="SaveInitialForm()">           
            <div class="label-intro">
               <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                  <label class="bg-white text-gray-600 px-1">Nombre del formulario</label>
               </div>
               <input type="text" class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full" required v-model="NameForm">
            </div>
            <div>
               <div class="label-intro">
                  <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                     <label class="bg-white text-gray-600 px-1">Breve descripción</label>
                  </div>
                  <textarea rows="4" class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full" required v-model="DescriptionForm"></textarea>
               </div>
               <p class="mt-1 text-sm text-gray-500">* Formulario privado.</p>
            </div>
            <div class="py-2 text-left">
               <button type="submit"
                  class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                  Continuar
               </button>
            </div>
         </form>         
      </div>
      <PreviewForm :NameForm="NameForm" :DescriptionForm="DescriptionForm"/>     
   </div>
</template>
<script>

   import axios from "axios"
   import Noty from "noty";
   import API_ROUTER from "./../../services/SERVER_API"

   import PreviewForm from "./PreviewForm"

   export default {
      components:{
         PreviewForm
      },
      data() {
         return {
            name: 'FromularioConstructor',
            NameForm: '',
            DescriptionForm: '',     
         }
      },      
      mounted: function () {

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
                  
               this.$router.replace("/proyecto/formulario/editor/" + response.data.code );

            })
         },
      }
   }
</script>