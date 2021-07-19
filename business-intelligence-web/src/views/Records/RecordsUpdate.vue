<template>




<div class="-mt-4 -mx-4 flex-1 flex-col sticky top-0 bg-gray-50 z-10 border-b-2 border-gray-200 px-3 w-auto">     

      <header class="grid grid-cols-12 items-center justify-between px-0 py-3">

         <a href="javascript:history.back()" class="col-span-1 relative text-white rounded-full focus:outline-none pr-2"><svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg></a>
         
         <h2 class="col-span-10 text-center text-md font-bold leading-6 text-gray-800">Form</h2>
      
         <div class="col-span-1 text-right truncate whitespace-nowrap">
            
            <button  @click="LoadBasicInfoService" class="inline-flex items-center px-2 py-1 rounded-md bg-gray-200 " title="Actualizar">
              
            <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
               <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
               <path d="M20 11a8.1 8.1 0 0 0 -15.5 -2m-.5 -4v4h4"></path>
               <path d="M4 13a8.1 8.1 0 0 0 15.5 2m.5 4v-4h-4"></path>
            </svg>
              
            <span class="hidden md:flex ml-2 text-xs">Actualizar</span>
            
            </button>

            </div>
         </header>    

       </div>




   <div class="px-0 lg:px-48 pt-5 pb-3 mx-auto md:w-full lg:max-w-screen-xl ">



      <ServicePreviewBasicInfo :ServiceName="ServiceName" :ServiceDescription="ServiceDescription" />

       

      <ServicePreviewFormEditor 
         v-if="show == true"
         FormType="save"
         :ServiceName="ServiceName"
         :ServiceDescription="ServiceDescription"
         :ArrayInputs="ArrayInputs"
         @save="RegitredInformation" />
   </div>

</template>

<script>

   import axios from 'axios';
   import API_ROUTER from './../../services/SERVER_API'
   import ServicePreviewFormEditor from "./../../components/BuildServices/ServicePreviewFormEditor"
   import ServicePreviewBasicInfo from "./../../components/BuildServices/ServicePreviewBasicInfo"
   import ArlertBasic from './../../components/Overlay/ArlertBasic'    

   export default {
      name: 'RecordsUpdate',
      components: {
         ServicePreviewFormEditor,
         ServicePreviewBasicInfo,
         ArlertBasic
      },
      data() {
         return {
            show: true,               
            OrderForm: 'load',
            ServiceName: '',
            ServiceDescription: '',
            ArrayInputs: [],
      }
   },
   mounted: function () {    
         this.LoadBasicInfoService();
   },
   methods: {
      LoadBasicInfoService: function () {

         axios.post(API_ROUTER.PHP7_CONTROLLER + "build-2/3_listar_data_for_update.php",
         {
            id_service: parseInt(this.$route.params.id_service),
            id_record: parseInt(this.$route.params.id_record),
         }).then((response) => {
           
            this.ServiceName = response['data']['object'][0]['name']
            this.ServiceDescription = response['data']['object'][0]['description']
            this.ArrayInputs = (response['data']['complete'])

            }).catch(() => {
               alert('Error de conexión al cargar el records')
         })
      },

      RegitredInformation: function(){
         this.LoadBasicInfoService();                  
      },       
   }
}
</script>