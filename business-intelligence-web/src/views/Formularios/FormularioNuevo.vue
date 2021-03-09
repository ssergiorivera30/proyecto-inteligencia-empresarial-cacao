<template>
   <div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
   

      <div class="pt-2 mb-8">
            <header class="flex items-center justify-between">
         <a href="javascript:history.back()" class="text-blue-400 font-semibold inline-block py-2 pr-4 bg-white hover:text-blue-900 cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-4 h-4 text-deep-purple-accent-400">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
            </svg>
          </a>
         <h2 class="text-lg leading-6 font-medium text-black">Crear formulario</h2>
         <router-link to="/proyectos/nuevo-proyecto"
            class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
            <svg width="12" height="20" fill="currentColor"
               class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
               <path fill-rule="evenodd" clip-rule="evenodd"
                  d="M6 5a1 1 0 011 1v3h3a1 1 0 110 2H7v3a1 1 0 11-2 0v-3H2a1 1 0 110-2h3V6a1 1 0 011-1z"></path>
            </svg>
            Ayuda
         </router-link>
      </header>
      <!-- <ul class="list-reset flex border-b">
          <li class="-mb-px mr-1">
          <a href="javascript:history.back()" class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900 cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-4 h-4 text-deep-purple-accent-400">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
            </svg>
          </a>
        </li> 
        <span class="list-reset flex border-b ">        
        <span class="list-reset flex border-b w-3/4 overflow-x-auto"> 
        <li class="-mb-px mr-1">
         <router-link 
            to="/proyecto/formularios/nuevo/f/crear"
             active-class="border-l border-t border-r rounded-t text-blue-900"
            class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900">
            Creador
         </router-link>
        </li>        
        <li class="-mb-px mr-1">
         <router-link 
            to="/proyecto/formularios/nuevo/f/compartir"
             active-class="border-l border-t border-r rounded-t text-blue-900"  
            class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900">
            Compartir
         </router-link>
        </li>
        <li class="-mb-px mr-1 min-w-max">
         <router-link 
            to="/proyecto/formularios/nuevo/f/ver"
             active-class="border-l border-t border-r rounded-t text-blue-900"
            class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900" >
            Vista previa
         </router-link >
        </li>
        </span>       
      </ul>   -->
   </div>
      
   <router-view/>
          


   </div>
</template>

<script>

export default {
    data(){
      return{
         name: 'FromularioCreadorGeneral',
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
