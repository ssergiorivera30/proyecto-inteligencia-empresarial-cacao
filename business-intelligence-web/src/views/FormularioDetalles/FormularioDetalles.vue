<template>
   <div class="px-4 py-1 sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:container">

      <NavBarSecondary :RoutesNavs="RoutesNavs" :GoBack="GoBack" :GoBackTitle="GoBackTitle"/>

     
      
      <PreviewForm :NameForm="NameForm" :DescriptionForm="DescriptionForm"/>

      <header class="flex items-center justify-between mb-5">
         <h2 class="text-lg leading-6 font-medium text-black">Nuevo Registro</h2>
         <router-link :to="'/proyecto/formulario/editor/'+ this.$route.params.id_formulario" class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor" class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Editar formulario
         </router-link>
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
