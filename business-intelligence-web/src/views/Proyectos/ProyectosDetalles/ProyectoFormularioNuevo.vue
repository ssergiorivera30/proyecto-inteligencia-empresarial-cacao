<template>
   <section class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
      <header class="flex items-center justify-between">

        <a href="javascript:history.back()" class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900 cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-4 h-4 text-deep-purple-accent-400">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
            </svg>
          </a>
         <h2 class="text-lg leading-6 font-medium text-black">Nuevo formulario</h2>
         <div class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor" class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Ayuda
         </div>
      </header>

      <form action="#" method="POST" class="space-y-4 mt-5" @submit.prevent="SaveInitialForm()">              
          <div class="grid grid-cols-1 gap-6">
              <div class="">
                <label for="company_website" class="block text-sm font-medium text-gray-700 mb-2">Nombre del formulario</label>                                
                <input type="text" class="form-control" placeholder="Nombre completo del proyecto" required>
              </div>           
            </div>

            <!-- <div class="grid grid-cols-3 gap-6">
              <div class="">
                <label for="company_website" class="block text-sm font-medium text-gray-700 mb-2">Código del proyecto</label>                                
                <input type="text" class="form-control" placeholder="8635-SGPS-2021">
              </div>
              <div class="">
                <label for="company_website" class="block text-sm font-medium text-gray-700 mb-2">Estado del proyecto</label>                                
                <input type="text" class="form-control" placeholder="Filtrar formularios">
              </div>
              <div class="">
                <label for="company_website" class="block text-sm font-medium text-gray-700 mb-2">Nombre del formulario</label>                                
                <input type="text" class="form-control" placeholder="Filtrar formularios">
              </div>
            </div>

            <div>
              <label for="about" class="block text-sm font-medium text-gray-700 mb-2">Acerca del formulario</label>
              <textarea id="about" name="about" rows="3" class="form-control" placeholder="you@example.com"></textarea>
              <p class="mt-1 text-sm text-gray-500">
                Breve descripción de su perfil. Las URL tienen hipervínculos.
              </p>
            </div>            -->

            <!-- <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">Cover photo</label>
              <div class="mt-1 flex justify-center px-6 pt-5 pb-6 border-2 border-gray-300 border-dashed rounded-md">
                <div class="space-y-1 text-center">
                  <svg class="mx-auto h-12 w-12 text-gray-400" stroke="currentColor" fill="none" viewBox="0 0 48 48" aria-hidden="true">
                    <path d="M28 8H12a4 4 0 00-4 4v20m32-12v8m0 0v8a4 4 0 01-4 4H12a4 4 0 01-4-4v-4m32-4l-3.172-3.172a4 4 0 00-5.656 0L28 28M8 32l9.172-9.172a4 4 0 015.656 0L28 28m0 0l4 4m4-24h8m-4-4v8m-12 4h.02" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                  </svg>
                  <div class="flex text-sm text-gray-600">
                    <label for="file-upload" class="relative cursor-pointer bg-white rounded-md font-medium text-indigo-600 hover:text-indigo-500 focus-within:outline-none focus-within:ring-2 focus-within:ring-offset-2 focus-within:ring-indigo-500">
                      <span>Upload a file</span>
                      <input id="file-upload" name="file-upload" type="file" class="sr-only">
                    </label>
                    <p class="pl-1">or drag and drop</p>
                  </div>
                  <p class="text-xs text-gray-500">
                    PNG, JPG, GIF up to 10MB
                  </p>
                </div>
              </div>
            </div> -->
      
          <div class="px-4 py-3 text-right sm:px-6">
            <router-link to="/proyecto/formularios/nuevo/crear" type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
              Continuar
            </router-link>

            <button type="submit" 
              class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
              Continuar
            </button>
          </div>       
      </form>
   </section> 
</template>

<script>

import axios from "axios"
import Noty from "noty";
import API_ROUTER from "./../../../services/SERVER_API"

export default {
    data(){
      return{
         name: 'ProyectoFormularioNuevo',
         NameForm: '',
         DescriptionForm: '',
      }
    },
    beforeMount: function () {

    },
    mounted: function(){ 
      //  console.log(this.$params);

    },
    methods:{

      SaveInitialForm: function()
      {
        axios.post(API_ROUTER.PHP7_CONTROLLER+"form_create.php", 
          { 
            NameForm: this.NameForm,
            DescriptionForm: this.DescriptionForm
          })
          .then(function (response) {
            new Noty({ theme: "sunset", layout: "topRight", progressBar: true, closeWith: ["click", "button"], timeout: 8000,
                     type: response.data.icono, text: response.data.mensaje }).show();
          })
          .catch(function (error) {
            console.log(error);
          })
      }
       
    
    }
  }
</script>
