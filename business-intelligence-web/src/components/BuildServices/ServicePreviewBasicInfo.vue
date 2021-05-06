<template>
   <div class="py-6 bg-purple-700 rounded-md"> 
      <div class="px-4 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-10 lg:px-8 lg:pt-3">            
         <div class="max-w-xl md:mx-auto sm:text-center lg:max-w-2xl">
            <h2 class="mb-4 text-purple-50 font-sans text-2xl font-semibold leading-8 md:mx-auto">
               {{ ServiceName }}                  
            </h2>
            
         </div>  
      </div>
   </div>

   <p class="mt-5 text-gray-600 font- text-base  md:text-md">
               <span v-if="ServiceDescription.length >= 320 && ViewText == 0">{{ ServiceDescription.substring(0,320) }} 
                  <span @click="ViewText = 1" class="text-blue-900 font-bold cursor-pointer">...Ver más</span>
               </span>
               <span v-if="ServiceDescription.length >= 320 && ViewText == 1">{{ ServiceDescription }} 
                  <span @click="ViewText = 0" class="text-blue-900 font-bold cursor-pointer"> Ver menos</span>
               </span>
               <span v-if="ServiceDescription.length < 320 && ViewText == 0">{{ ServiceDescription }}</span>
            </p>

</template>

<script>

export default {
   props: {
      ServiceName: String,
      ServiceDescription: String,
   },
   data(){
      return{
         name: 'ServicePreviewBasicInfo',
         ViewText: 0,         
      }
    },      
  }
</script>
