<template>
      <div class="px-4 pt-4 pb-2 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-10 lg:px-8 lg:pt-3">            
         <div class="max-w-xl mb-4 md:mx-auto sm:text-center lg:max-w-2xl md:mb-5">
            <h2 class="max-w-lg mb-6 font-sans text-2xl font-bold leading-none tracking-tight text-gray-900 sm:text-3xl md:mx-auto">
               {{ NameForm }}
            </h2>
            <p class="text-base text-gray-700 md:text-lg">
               {{ DescriptionForm }}
            </p>
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
