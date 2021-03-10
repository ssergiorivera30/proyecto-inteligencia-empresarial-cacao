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
         <div class="max-w-lg space-y-3 sm:mx-auto lg:max-w-xl">
            <div class="flex items-center p-2 duration-300 transform border rounded shadow hover:scale-105 sm:hover:scale-110">
               <div class="mr-2">
                  <svg class="w-6 h-6 text-deep-purple-accent-400 sm:w-8 sm:h-8" stroke="currentColor" viewBox="0 0 52 52">
                     <polygon stroke-width="3" stroke-linecap="round" stroke-linejoin="round" fill="none" points="29 13 14 29 25 29 23 39 38 23 27 23"></polygon>
                     </svg>
                  </div>
               <span class="text-gray-800"></span>
            </div>

            <div class="flex items-center p-2 duration-300 transform border rounded shadow hover:scale-105 sm:hover:scale-110">
               <div class="mr-2">
                  <svg class="w-6 h-6 text-deep-purple-accent-400 sm:w-8 sm:h-8" stroke="currentColor" viewBox="0 0 52 52">
                     <polygon stroke-width="3" stroke-linecap="round" stroke-linejoin="round" fill="none" points="29 13 14 29 25 29 23 39 38 23 27 23"></polygon>
                     </svg>
                  </div>
               <span class="text-gray-800"></span>
            </div>

            <div class="flex items-center p-2 duration-300 transform border rounded shadow hover:scale-105 sm:hover:scale-110">
               <div class="mr-2">
                  <svg class="w-6 h-6 text-deep-purple-accent-400 sm:w-8 sm:h-8" stroke="currentColor" viewBox="0 0 52 52">
                     <polygon stroke-width="3" stroke-linecap="round" stroke-linejoin="round" fill="none" points="29 13 14 29 25 29 23 39 38 23 27 23"></polygon>
                     </svg>
                  </div>
               <span class="text-gray-800"></span>
            </div>
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
