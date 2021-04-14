<template>
   <div class="mt-0 px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">

        <div class="pt-5 mb-8">
         <ul class="list-reset flex border-b">
                     
         <li class="-mb-px mr-1">
            <a href="javascript:history.back()" class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900 cursor-pointer">
               Atrás
            </a>
         </li>           
         </ul>  
      </div>

<div class="flex flex-col">
  <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
      <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
        <table class="min-w-full divide-y divide-gray-200">
          <thead class="bg-gray-50">
            <tr>
              <th v-for="inputs in ArrayInputs" :key="inputs" scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                {{ inputs.input.name }}               
              </th>
             
              <th scope="col" class="relative px-6 py-3">
                <span class="sr-only">Opciones</span>
              </th>
            </tr>
          </thead>
          <tbody class="bg-white divide-y divide-gray-200">
            
            <tr v-for="dataForm in datos" :key="dataForm.id">

                          
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ dataForm[1]}}</td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ dataForm[2]}}</td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ dataForm[3]}}</td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ dataForm[4]}}</td>

          

          
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <span class="text-indigo-600 hover:text-indigo-900">Verificar</span>
              </td>
            </tr>



            
      
           
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
    
   </div>
</template>

<script>

import axios from "axios"
import API_ROUTER from "./../../services/SERVER_API"
 import PreviewForm from "./../../components/Formularios/PreviewForm"
   import PreviewFormSave from "./../Formularios/PreviewFormSave"
export default {
   components:{
         PreviewForm,
         PreviewFormSave
      },
    data(){
      return{
         name: 'FormularioDatos',
         OrderForm: 'load',
         NameForm: '',
         DescriptionForm: '',

         datos: [],
         ArrayInputs: []

      }
    },    
    mounted: function(){ 
      
      this.GetTarifas()
      this.LoadFromBasic()

    },
    methods:{
       LoadFromBasic: function () {
         axios.post(API_ROUTER.PHP7_CONTROLLER + "form_load.php",
            {
               id_form: this.$route.params.id_formulario,
            }).then((response) => {
               this.ArrayInputs = JSON.parse(response.data.datos)
               console.log(this.ArrayInputs[0]['input']['name'])
            })             
         },          
      GetTarifas: function () {
      axios.post(API_ROUTER.PHP7_CONTROLLER+"form_data_listar.php", 
      {
        id_form: this.$route.params.id_formulario,
      }).then(res=>{
        this.datos = res.data        
      }).catch(error=>{
        Alert(error)
      })
      
    },
       
    
    }
  }
</script>
