<template>
   <div class="mt-0 px-4 py-3 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-64">

      <PreviewForm :NameForm="NameForm" :DescriptionForm="DescriptionForm" />

      <header class="flex items-center justify-center mb-5">
         <h2 class="text-lg leading-6 font-medium text-black">Nuevo registro</h2>
      </header>

      <PreviewFormSave :NameForm="NameForm" :DescriptionForm="DescriptionForm" :ArrayInputs="ArrayInputs" />

   </div>
</template>

<script>

   import axios from "axios"
   import API_ROUTER from "./../../../services/SERVER_API"
   import PreviewForm from "./../../../components/Formularios/PreviewForm"
   import PreviewFormSave from "./../../../components/Formularios/PreviewFormSave"

   export default {
      components: {
         PreviewForm,
         PreviewFormSave,
      },
      data() {
         return {
            name: 'FormularioDetalles',
            GoBack: 'history.back',
            GoBackTitle: 'Lista de formularios',
            RoutesNavs: [
               { Linkroute: '/formulario/detalles/' + this.$route.params.id_formulario, nameRoute: 'Detalles del formulario' },
               { Linkroute: '/formulario/datos/' + this.$route.params.id_formulario, nameRoute: 'Datos' }
            ],
            OrderForm: 'load',
            NameForm: '',
            DescriptionForm: '',

            ArrayInputs: [],

         }
      },
      mounted: function () {

         this.LoadInfoForm()
         this.LoadFromBasic()

      },
      methods: {
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

                  if (response.data.mensaje != 1) {
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