<template>
   <div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">

      <div class="pt-5 mb-8">
      <ul class="list-reset flex border-b">
          <li class="-mb-px mr-1">
          <a href="javascript:history.back()" class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900 cursor-pointer">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-4 h-4 text-deep-purple-accent-400">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
            </svg>
          </a>
        </li>          
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
        <li class="-mb-px mr-1">
         <router-link 
            to="/proyecto/formularios/nuevo/f/ver"
             active-class="border-l border-t border-r rounded-t text-blue-900"
            class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white hover:text-blue-900" >
            Vista previa
         </router-link >
        </li>
      </ul>  
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
