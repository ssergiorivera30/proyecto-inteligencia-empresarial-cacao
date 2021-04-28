<template>
 <div class="grid gap-5 lg:grid-cols-2 mb-10 md:mb-1 px-2">
    <div class="flex flex-col xl:pr-0">
      
      <div class="max-w-xl mb-6">
        <h2 class="max-w-lg mb-6 font-sans font-bold tracking-tight text-2xl text-blue-800 sm:text-1xl leading-normal">

          Grupo de Investigación Nova
          
          <span class="my-1 inline-block text-gray-400 font-semibold">
            <span>Sistema de Inteligencia de Negocios para el sector Agrícola</span>
          </span>
        </h2>
        <p class="text-base text-gray-700 md:text-lg">
          Estrategias Tecnológicas para el fortalecimiento de la cadena productiva, sostenibilidad ambiental y comercialización del cacao en el departamento del Huila.
        </p>
      </div>
      <div class="flex items-center pt-4">
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 shadow rounded-full">
                        <img alt="img-1" src="https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" class="w-full h-full object-cover object-center rounded-full" />
                    </div>
                    <div class="w-6 h-6 mr-1 border-dashed border flex items-center justify-center cursor-pointer rounded-full">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-plus" width="16" height="16" viewBox="0 0 24 24" stroke-width="1.5" stroke="#D1D5DB" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                            <line x1="12" y1="5" x2="12" y2="19" />
                            <line x1="5" y1="12" x2="19" y2="12" />
                        </svg>
                    </div>
                </div>
      <div>
         <div class="mt-6">
                    <p class="text-sm font-semibold text-indigo-700 leading-none text-right pb-1">73%</p>
                </div>
                <div class="w-full h-2 relative bg-gray-200 rounded-full">
                    <div class="h-2 w-60 bg-gradient-to-r from-blue-700 via-indigo-600 to-purple-600 rounded-full"></div>
                </div>
        <button @click="this.$router.push('/proyecto/ver/detalles/'+ 1)" class="focus:outline-none text-indigo-700 hover:opacity-50 bg-gray-100 text-sm font-medium py-3 w-full rounded mt-5">Ver detalles del proyecto</button>
      </div>
    </div>
    <div class="hidden md:flex items-center justify-center -mx-4 lg:pl-8">     
      <div class="px-3">
        <img class="object-cover w-full h-full rounded shadow-lg bg-gray-100" :src="imagen_a" alt="" loading="lazy"/>
      </div>
    </div>
  </div>
</template>

<script>

import API_ROUTER from './../../services/SERVER_API'

export default {
  data(){
    return{
      name: 'WelcomeSistema',
      imagen_a: API_ROUTER.API_FILE_SYSTEMS+'home/1.jpg',
    }
  }, 
  mounted: function(){
  },
  methods:{

  }  
}
</script>