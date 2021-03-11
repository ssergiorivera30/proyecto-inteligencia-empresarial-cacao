<template>
   <div> 
      <div class="px-4 pt-2 pb-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:pt-3">            
         <div class="max-w-xl mb-10 md:mx-auto sm:text-center lg:max-w-2xl md:mb-12">
            <h2 class="max-w-lg mb-6 font-sans text-3xl font-bold leading-none tracking-tight text-gray-900 sm:text-4xl md:mx-auto">
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
