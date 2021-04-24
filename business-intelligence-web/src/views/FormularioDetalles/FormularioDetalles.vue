<template>
   <div class="px-4 py-1 sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:container">

        <!-- <header class="flex items-center justify-between mt-5">
         <h2 class="text-lg leading-6 font-medium text-black">Fomularios</h2>
         <router-link to="/proyecto/formulario/constructor" class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor" class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Agregar formulario
         </router-link>
      </header> -->

      <div class="flex items-center justify-center">



    <div class="w-full flex flex-col lg:space-y-0 space-y-5 lg:flex-row lg:items-center justify-between bg-white p-3">
        <div>
            <h3 class="font-bold tracking-wide text-2xl mb-2 text-gray-700">
               Formulario
            </h3>
            <div class="md:space-x-5 md:space-y-0 space-y-1  flex md:flex-row flex-col">
                <span class="inline-flex text-gray-500 space-x-2 items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" class="fill-current w-5 h-5" viewBox="0 0 24 24"><path d="M12.23 15.5c-6.801 0-10.367-1.221-12.23-2.597v9.097h24v-8.949c-3.218 2.221-9.422 2.449-11.77 2.449zm1.77 2.532c0 1.087-.896 1.968-2 1.968s-2-.881-2-1.968v-1.032h4v1.032zm-14-8.541v-2.491h24v2.605c0 5.289-24 5.133-24-.114zm9-7.491c-1.104 0-2 .896-2 2v2h2v-1.5c0-.276.224-.5.5-.5h5c.276 0 .5.224.5.5v1.5h2v-2c0-1.104-.896-2-2-2h-6z"/></svg>
                    <span>{{ NameForm }}</span>
                </span>
             
            </div>
        </div>
        <div class="flex space-x-3">
            <router-link :to="'/proyecto/formulario/editor/'+ this.$route.params.id_formulario" class="flex items-center text-gray-500 space-x-2 border border-gray-400 px-4 py-1 rounded-md hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-700">
                <svg xmlns="http://www.w3.org/2000/svg" class="fill-current w-4 h-4" viewBox="0 0 24 24"><path d="M19.769 9.923l-12.642 12.639-7.127 1.438 1.438-7.128 12.641-12.64 5.69 5.691zm1.414-1.414l2.817-2.82-5.691-5.689-2.816 2.817 5.69 5.692z"/></svg>
                <span class="text-sm font-semibold">Editar</span>
            </router-link>
            <button class="flex items-center text-gray-500 space-x-2 border border-gray-400 px-4 py-1 rounded-md hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-700">
                <svg xmlns="http://www.w3.org/2000/svg" class="fill-current w-4 h-4" viewBox="0 0 24 24"><path d="M6.188 8.719c.439-.439.926-.801 1.444-1.087 2.887-1.591 6.589-.745 8.445 2.069l-2.246 2.245c-.644-1.469-2.243-2.305-3.834-1.949-.599.134-1.168.433-1.633.898l-4.304 4.306c-1.307 1.307-1.307 3.433 0 4.74 1.307 1.307 3.433 1.307 4.74 0l1.327-1.327c1.207.479 2.501.67 3.779.575l-2.929 2.929c-2.511 2.511-6.582 2.511-9.093 0s-2.511-6.582 0-9.093l4.304-4.306zm6.836-6.836l-2.929 2.929c1.277-.096 2.572.096 3.779.574l1.326-1.326c1.307-1.307 3.433-1.307 4.74 0 1.307 1.307 1.307 3.433 0 4.74l-4.305 4.305c-1.311 1.311-3.44 1.3-4.74 0-.303-.303-.564-.68-.727-1.051l-2.246 2.245c.236.358.481.667.796.982.812.812 1.846 1.417 3.036 1.704 1.542.371 3.194.166 4.613-.617.518-.286 1.005-.648 1.444-1.087l4.304-4.305c2.512-2.511 2.512-6.582.001-9.093-2.511-2.51-6.581-2.51-9.092 0z"/></svg>
                <span class="text-sm font-semibold">Generar link</span>
            </button>
            <button class="flex items-center text-white space-x-1.5 px-4 py-1 rounded-md  focus:outline-none focus:ring-2 focus:ring-offset-2 bg-blue-900 hover:bg-blue-800">
                <svg class="h-5 w-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                </svg>
                <span class="text-sm font-semibold">Públicar</span>
            </button>       
        </div>        
    </div>
</div>



      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle"/>

     
      
      <PreviewForm :NameForm="NameForm" :DescriptionForm="DescriptionForm"/>

      <header class="flex items-center justify-center mb-5">
         <h2 class="text-lg leading-6 font-medium text-black">Nuevo registro</h2>
      </header>

       <PreviewFormSave :NameForm="NameForm" :DescriptionForm="DescriptionForm" :ArrayInputs="ArrayInputs" />
    
   </div>
</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../services/SERVER_API"
import PreviewForm from "./../../components/Formularios/PreviewForm"
import PreviewFormSave from "./../Formularios/PreviewFormSave"

import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'

export default {
   components:{
         PreviewForm,
         PreviewFormSave,
         NavBarSecondary
      },
    data(){
      return{
         name: 'FormularioDetalles',
         GoBack: 'history.back',
         GoBackTitle: 'Lista de formularios',
         RoutesNavs: [
            { Linkroute: '/formulario/detalles/'+this.$route.params.id_formulario, nameRoute: 'Detalles del formulario' },
            { Linkroute: '/formulario/datos/'+this.$route.params.id_formulario, nameRoute: 'Datos' }
         ],
         OrderForm: 'load',
         NameForm: '',
         DescriptionForm: '',

         ArrayInputs: [],

      }
    },    
    mounted: function(){ 
      
      this.LoadInfoForm()
      this.LoadFromBasic()

    },
    methods:{
       LoadFromBasic: function () {
         axios.post(API_ROUTER.PHP7_CONTROLLER + "form_load.php",
            {
               id_form: this.$route.params.id_formulario,
            }).then((response) => {
               this.ArrayInputs = JSON.parse(response.data.datos)
            })             
         }, 
      LoadInfoForm: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "form_info_basic.php",
               {
                  Form: this.$route.params.id_formulario,
                  OrderForm: this.OrderForm
               }).then((response) => {

                  if(response.data.mensaje != 1){
                     window.history.back()
                  }

                  this.NameForm = response['data']['datos'][0]['name']
                  this.DescriptionForm = response['data']['datos'][0]['description']
               })
               .catch(() => {
                  alert('Error de conexión')
               })
         },       
       
    
    }
  }
</script>
