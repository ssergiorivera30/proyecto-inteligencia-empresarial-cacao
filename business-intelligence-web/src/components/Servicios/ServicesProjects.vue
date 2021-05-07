<template>

<header class="flex items-center justify-between px-2 my-5">
    <h2 class="text-lg font-bold leading-6 text-gray-800">Mis proyectos</h2>      
    <div class="relative">
        <!-- Dropdown toggle button -->
        <button class=" flex p-2 bg-white rounded-md focus:outline-none"  @click="DrowdownActionFunc"> Opciones
            <svg class="ml-2 w-5 h-5 text-gray-800 dark:text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
            </svg>
        </button>
        <!-- Dropdown menu -->
        <div class="absolute -right-1.5 w-48 py-2 mt-2 bg-white rounded-md shadow-xl" :class="DrowdownAction">
            <router-link to="/create-service/2" class="block px-4 py-2 text-sm text-gray-700 capitalize transition-colors duration-200 transform hover:bg-blue-500 hover:text-white dark:hover:text-white">
               Crear nuevo proyecto
            </router-link>
            <a href="#" class="block px-4 py-2 text-sm text-gray-700 capitalize transition-colors duration-200 transform hover:bg-blue-500 hover:text-white dark:hover:text-white">
                Ocultar proyectos
            </a>         
        </div>
    </div>
</header>



   <ul class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-4 2xl:grid-cols-5 gap-4 my-5">     

      <div v-for="projects in ArrayProjects" :key="projects" 
         class="flex justify-center py-2 px-0">
            <div class="rounded py-4 px-2 md:px-4 bg-white shadow-xl hover:shadow-2xl">
               
               

                 <h1 v-if="projects.name.length > 56" class="text-lg font-bold leading-6 text-gray-500">{{ projects.name.substring(0,56) }}...</h1>
                <h1 v-else class="text-lg font-bold leading-6 text-gray-500">{{ projects.name }}.<br></h1>

                 <h2 class="pt-2 text-xs leading-4 text-gray-600">Empresa: Servicio Nacional de Aprendizaje - SENA</h2>
               

                   <p v-if="projects.description.length > 130" class="pt-4 text-xs leading-4 text-gray-600">{{ projects.description.substring(0,130) }}...</p>
                  <p v-else class="pt-4 text-xs leading-4 text-gray-600">{{ projects.description }}.<br><br><br></p>


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
                <div class="mt-6">
                    <p class="text-sm font-semibold text-indigo-700 leading-none text-right pb-1">73%</p>
                </div>
                <div class="w-full h-2 bg-gray-200 rounded-full">
                    <div class="h-2 w-60 bg-gradient-to-r from-blue-700 via-indigo-600 to-purple-600 rounded-full"></div>
                </div>
                <button 
                    @click="this.$router.push('/proyecto/ver/detalles/'+ projects.id)"
                    class="focus:outline-none text-indigo-700 hover:opacity-50 bg-gray-100 text-sm font-medium py-3 w-full rounded mt-5">
                        Ver proyecto
                    </button>
            </div>
        </div>

   </ul>


</template>

<script>

   import API_ROUTER from './../../services/SERVER_API'

   export default {
      data() {
         return {
            name: 'ServicesProjects',
            DrowdownAction: 'hidden',
            RouteSrc: API_ROUTER.API_UI + 'icons/database.png',          
        }
    },
    props:{
        ArrayProjects: Object,
    },
    mounted: function () {

    },
    methods: {
        DrowdownActionFunc(){
            this.DrowdownAction = this.DrowdownAction === 'hidden' ? 'block' : 'hidden'
        }, 
    }
}
</script>