<template>
   <div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
      <header class="flex items-center justify-between">
         <h2 class="text-sm leading-6 font-medium text-black"></h2>
         <div class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium py-2 cursor-pointer">
            <a href="javascript:history.back()">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" width="20" height="20"  class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>  
            </a>        
         </div>
      </header>   
      
    <router-view/>

   </div>
</template>

<script>

export default {
    data(){
      return{
         name: 'FormularioNuevoHeader',
      }
    },
    beforeMount: function () {

    },
    mounted: function(){ 

    },
    methods:{       
    
    }
  }
</script>
