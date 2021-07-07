<template>

<header class="print-none flex sticky top-0 z-10 items-center h-14 w-full bg-gray-50">

   <button class="block sm:hidden relative flex-shrink-0 p-2 mr-2 text-principal-color-ui hover:bg-gray-100 hover:text-principal-color-ui focus:text-principal-color-ui rounded-md">
          <span class="sr-only">Menu</span>
          <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-5 w-5">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7" />
          </svg>
        </button>

        <div class="print-none flex flex-shrink-0 items-center ">
           <a href="javascript:history.back()" class="relative text-white rounded-full focus:outline-none pr-2" >
             <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
             <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
             </svg>
          </a>
        </div>

        <div class="print-none flex flex-shrink-0 items-center ">
           <button class="relative text-white bg-gray-100 rounded-md focus:outline-none px-2 h-8" >
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
            </svg>
          </button>
        </div>

       

        <div class="hidden md:flex relative w-full max-w-md sm:ml-2">
          <input type="text" class="text-sm md:text-xs h-8 rounded-md py-1 pl-2 pr-4 w-full font-bold text-black placeholder-gray-400 focus:text-black bg-gray-200 focus:bg-gray-200 rounded-sm focus:outline-none" 
                 placeholder="Buscar..."/>
        </div>
        
        <div class="print-none flex flex-shrink-0 items-center ml-auto">
          <button class="inline-flex items-center p-2 hover:text-principal-color-ui rounded-lg focus:outline-none">
            <span class="sr-only">Menu</span>
            <div class="hidden md:flex md:flex-col md:items-end md:leading-tight">
              <span class="text-sm font-semibold text-principal-color-ui">{{ user_name }}</span>
            </div>
            <span class="h-7 w-7 ml-2 sm:ml-3 mr-2 bg-gray-100 rounded-full overflow-hidden">
              <img :src="user_photo" alt="user profile photo" class="h-7 w-7 object-cover">
            </span>
            <svg aria-hidden="true" viewBox="0 0 20 20" fill="currentColor" class="hidden sm:block h-6 w-6 text-principal-color-ui">
              <path fill-rule="evenodd"
                d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                clip-rule="evenodd" />
            </svg>
          </button>


          <div class="border-l pl-3 ml-3 space-x-1">

            <NavNotificaciones />

            <button @click="ClickCenterConter"
              class="hidden md:inline relative p-2 text-gray-400 hover:text-gray-600 focus:text-gray-600 rounded-full focus:outline-none">
              <span class="sr-only">Screen</span>
              <i v-if="CenterContent == ''" class="text-xl bx bx-exit-fullscreen text-principal-color-ui"></i>
              <i v-else class="text-xl bx bx-fullscreen text-principal-color-ui"></i>
            </button>

            <!-- <button @click="CloseSessionWitchEmail"
              class="relative p-2 text-gray-400 hover:text-gray-600 focus:text-gray-600 rounded-full focus:outline-none">
              <span class="sr-only">Salir</span>
              <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-5 w-5 text-principal-color-ui">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
              </svg>
            </button> -->
          </div>
        </div>
      </header>

</template>

<script>

  import API_ROUTER from "./../../services/SERVER_API"
  import NavNotificaciones from "./../../components/HeaderApp/NavNotificaciones"



  const ContainerCenter = "3xl:m-auto"

  export default {
    name: 'NavHeader',
    components:{
      NavNotificaciones
    },
    data() {
      return {
        imagen_a: API_ROUTER.API_PUBLIC+'1.png',
        CenterContent: localStorage.getItem("classContainer") == null ? ContainerCenter : localStorage.getItem("classContainer"),
      }
    },
    props: {
      user_name: String,
      user_photo: String,      
    },
    mounted: function () {


    },
    methods: {
      ClickCenterConter: function(){
        this.CenterContent == ContainerCenter ? localStorage.setItem("classContainer", 'lg:ml-7 ') : localStorage.setItem("classContainer", ContainerCenter)
        this.CenterContent = localStorage.getItem("classContainer")
        this.$emit('StartContentCenterExec', this.CenterContent)
      },
       

    }
  }
</script>