<template>
   <div>
      <header class="flex items-center justify-between">
         <h2 class="text-lg leading-6 font-medium text-black">Estrategias Tecnológicas para el fortalecimiento de la cadena...</h2>
         <router-link to="/proyectos/nuevo-proyecto" class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor" class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd" d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Ayuda
         </router-link>
      </header>
      <form class="relative mt-5">
         <svg width="20" height="20" fill="currentColor" class="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"></path>
         </svg>
         <input type="text" aria-label="Filtrar personas" placeholder="Filtrar personas" class="w-full text-sm text-black placeholder-gray-500 border border-gray-200 rounded-md py-2 pl-10 focus:border-light-blue-500 focus:outline-none focus:ring-1 focus:ring-light-blue-500">
      </form>
   </div>
</template>
<script>
export default {
    data(){
      return{
         name: 'FromularioCreador',
      }
    },
    beforeMount: function () {

    },
    mounted: function(){ 
      //  console.log(this.$params);

    },
    methods:{
       
    
    }
  }
</script>
