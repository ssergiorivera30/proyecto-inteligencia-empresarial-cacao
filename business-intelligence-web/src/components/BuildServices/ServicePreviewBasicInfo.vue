<template>
   <div :class="bgColorsClass + ' py-6 rounded-md'"> 
      <div class="px-4 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-10 lg:px-8 lg:pt-3">            
         <div class="max-w-xl md:mx-auto text-center">
            <h2 class="mb-4 p-10 text-gray-900 font-sans text-2xl font-semibold leading-8 md:mx-auto">
               {{ ServiceName }}              
            </h2>            
         </div>  
      </div>
   </div>

   <div class="mt-5 text-gray-600 text-base md:text-md">
      <p v-if="ServiceDescription.length >= 320 && ViewText == 0">{{ ServiceDescription.substring(0,320) }}
         <span @click="ViewText = 1" class="text-blue-900 font-bold cursor-pointer">Ver más...</span>
      </p>
      
      <p v-if="ServiceDescription.length >= 320 && ViewText == 1">{{ ServiceDescription }}
         <span @click="ViewText = 0" class="text-blue-900 font-bold cursor-pointer"> Ver menos</span>
      </p>
      
      <p v-if="ServiceDescription.length < 320 && ViewText == 0">{{ ServiceDescription }}</p>
   </div>
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
         bgColorsClass: 'bg-white',
         bgColors:[
            'bg-purple-200',
            'bg-red-200',
            'bg-pink-200',
            'bg-yellow-200',
            'bg-green-200',
            'bg-blue-200',
            'bg-indigo-200',
            'bg-purple-200',
            'bg-purple-300',
            'bg-red-300',
            'bg-pink-300',
            'bg-yellow-300',
            'bg-green-300',
            'bg-blue-300',
            'bg-indigo-300',
            'bg-purple-300',
         ],      
      }
    }, 
    mounted:function(){
       var  Colors = Math.floor(Math.random() * 15);
       this.bgColorsClass = this.bgColors[Colors]

       console.log(this.bgColors[Colors])
       console.log(Colors)
       
    }     
  }
</script>
