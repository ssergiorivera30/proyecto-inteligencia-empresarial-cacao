<template>
   <section class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
      <header class="flex items-center justify-between">
         <h2 class="text-sm leading-6 font-medium text-black"></h2>
         <div class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium py-2 cursor-pointer">
            <a href="javascript:history.back()">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" width="20" height="20"  class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>  
            </a>        
         </div>
      </header>

      <form @submit.prevent="RegisterNewProject()" ref="form" class="space-y-4 mt-5" autocomplete="off">       
                     
          <div class="grid grid-cols-1 gap-6">
              <div class="">
                <label for="company_website" class="block text-sm font-medium text-gray-700 mb-2">Nombre proyecto</label>                                
                <input type="text" class="form-control2" placeholder="Nombre completo del proyecto" v-model="ProjectName" required >
              </div>           
            </div>

            <div class="grid grid-cols-3 gap-6">
              <div class="">
                <label for="company_website" class="block text-sm font-medium text-gray-700 mb-2">Código del proyecto</label>                                
                <input type="text" class="form-control2" placeholder="SGPS-8635-2021" v-model="ProjectCode">
              </div>

              <div class="">
                <label for="company_website" class="block text-sm font-medium text-gray-700 mb-2">Nombre entidad</label>                                
                <input type="text" class="form-control2" placeholder="" v-model="ProjectEntity">
              </div>                 
              </div>
            <div class="py-3 text-left">
            <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
              Guardar
            </button>
          </div>       
      </form>
   </section> 
</template>

<script>

import axios from 'axios';
import Noty from "noty";
import API_ROUTER from "./../../services/SERVER_API"

export default {
    data(){
      return{
        name: 'ProyectoNuevo',
        ProjectName: '',
        ProjectCode: '',
        ProjectEntity: '',
      }
    },
    beforeMount: function () {

    },
    mounted: function(){ 
      //  console.log(this.$params);

    },
    methods:{

      RegisterNewProject: function(event){
        axios.post(API_ROUTER.PHP7_CONTROLLER + "project_create.php",
        {
          ProjectName: this.ProjectName,
          ProjectCode: this.ProjectCode,
          ProjectEntity: this.ProjectEntity,
        }).then((res) => {

          new Noty({
            theme: "sunset",
            layout: "topRight",
            progressBar: true,
            closeWith: ["click", "button"],
            timeout: 8000,
            type: res.data.icono,
            text: res.data.mensaje,
          }).show();

          if(res.data.icono === 'success'){
            this.$refs.form.reset();
          }

        })
      }
    }
  }
</script>
