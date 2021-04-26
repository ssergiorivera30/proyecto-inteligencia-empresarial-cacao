<template>
   <div class="mt-6"> 
      <div class="px-4 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-10 lg:px-8 lg:pt-3">            
         <div class="max-w-xl md:mx-auto sm:text-center lg:max-w-2xl">
            <h2 class="max-w-lg mb-4 font-sans text-3xl font-bold leading-none tracking-tight text-gray-900 sm:text-4xl md:mx-auto">
               {{ NameForm }}
            </h2>
            <p class="text-base text-gray-700 md:text-lg">
               {{ DescriptionForm }}
            </p>
         </div>  
      </div>
   </div>
</template>

<script>

export default {
   props: {
      NameForm: String,
      DescriptionForm: String,
   },
   data(){
      return{
         name: 'PreviewForm',         
      }
    },      
  }
</script>
