<template>

  <!-- min-h-screen -->

  <aside class="py-4 print-none hidden sm:flex sm:flex-col items-center justify-between fixed w-14 h-screen bg-principal-color-ui shadow">

    <div class="flex flex-col space-y-4">

      <router-link to="/inicio" class="hidden sm:hidden md:flex justify-center h-10 w-14">
        <img loading="lazy" src="./../../assets/logo.png" class="h-8 w-8" alt="" la>
      </router-link>

      <router-link to="/inicio"
        class="inline-flex items-center justify-center text-white rounded-lg">
        <span class="sr-only">Inicio</span>
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 md:h-7 md:w-7"  viewBox="0 0 20 20" fill="currentColor">
          <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z" />
        </svg>
      </router-link>




      <router-link to="/herraminetas"
        class="inline-flex items-center justify-center text-white rounded-lg"
        title="Herramientas">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 md:h-7 md:w-7" viewBox="0 0 20 20" fill="currentColor">
         <path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
        </svg>
      </router-link>      
    </div>


    <nav class="flex flex-col space-y-2 md:space-y-3 min-h-14 overflow-y-auto md:overflow-y-hidden my-5 md:my-0 py-2 w-full">

      <router-link to="/cuenta/ver" class="inline-flex items-center justify-center text-white rounded-lg cursor-pointer">
        <div class="bg-white h-5 w-5 md:h-7 md:w-7 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden transition duration-700 ease-out transform hover:scale-150">
          <img :src="imagen_a" alt="" class="shadow object-cover h-full" draggable="false">
        </div>
      </router-link>

      <router-link to="/cuenta/ver" class="inline-flex items-center justify-center text-white rounded-lg cursor-pointer">
        <div class="bg-white h-5 w-5 md:h-7 md:w-7 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden transition duration-700 ease-out transform hover:scale-150">
          <img :src="imagen_b" alt="" class="shadow object-cover h-full" draggable="false">
        </div>
      </router-link>

      <router-link to="/cuenta/ver" class="inline-flex items-center justify-center text-white rounded-lg cursor-pointer">
        <div class="bg-white h-5 w-5 md:h-7 md:w-7 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden transition duration-700 ease-out transform hover:scale-150">
          <img :src="imagen_d" alt="" class="shadow object-cover h-full" draggable="false">
        </div>
      </router-link>

      <router-link to="/cuenta/ver"
        class="inline-flex items-center justify-center text-white rounded-lg cursor-pointer 	">
        <div class="bg-white h-5 w-5 md:h-7 md:w-7 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden transition duration-700 ease-out transform hover:scale-150 ">
          <img :src="imagen_c" alt="" class="shadow object-cover h-full" draggable="false">
        </div>
      </router-link>

       <router-link to="/cuenta/ver" class="inline-flex items-center justify-center text-white rounded-lg cursor-pointer">
        <div class="bg-white h-5 w-5 md:h-7 md:w-7 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden transition duration-700 ease-out transform hover:scale-150">
          <img :src="imagen_a" alt="" class="shadow object-cover h-full" draggable="false">
        </div>
      </router-link>

      <router-link to="/cuenta/ver" class="inline-flex items-center justify-center text-white rounded-lg cursor-pointer">
        <div class="bg-white h-5 w-5 md:h-7 md:w-7  flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden transition duration-700 ease-out transform hover:scale-150">
          <img :src="imagen_b" alt="" class="shadow object-cover h-full" draggable="false">
        </div>
      </router-link>
      
    </nav>

    <div class="flex flex-col space-y-4">
        <router-link to="/cuenta/ver"
        class="inline-flex items-center justify-center text-white rounded-lg">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 md:h-7 md:w-7" viewBox="0 0 20 20" fill="currentColor">
  <path fillRule="evenodd" d="M11.49 3.17c-.38-1.56-2.6-1.56-2.98 0a1.532 1.532 0 01-2.286.948c-1.372-.836-2.942.734-2.106 2.106.54.886.061 2.042-.947 2.287-1.561.379-1.561 2.6 0 2.978a1.532 1.532 0 01.947 2.287c-.836 1.372.734 2.942 2.106 2.106a1.532 1.532 0 012.287.947c.379 1.561 2.6 1.561 2.978 0a1.533 1.533 0 012.287-.947c1.372.836 2.942-.734 2.106-2.106a1.533 1.533 0 01.947-2.287c1.561-.379 1.561-2.6 0-2.978a1.532 1.532 0 01-.947-2.287c.836-1.372-.734-2.942-2.106-2.106a1.532 1.532 0 01-2.287-.947zM10 13a3 3 0 100-6 3 3 0 000 6z" clipRule="evenodd" />
</svg>
      </router-link>
      
      <router-link to="/cuenta/ver" class="inline-flex items-center justify-center text-white rounded-lg" title="Salir">
        
        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 md:h-7 md:w-7 " viewBox="0 0 20 20" fill="currentColor">
  <path fill-rule="evenodd" d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z" clip-rule="evenodd" />
</svg>
      </router-link>

    </div>
  </aside>
</template>

<script>
    import API_ROUTER from "./../../services/SERVER_API"

    export default {
        name: 'NavAside',
        data() {
            return {
                imagen_a: API_ROUTER.API_PUBLIC + '1.png',
                imagen_b: API_ROUTER.API_PUBLIC + 'grupos/1.png',
                imagen_c: API_ROUTER.API_PUBLIC + 'grupos/2.jpg',
                imagen_d: API_ROUTER.API_PUBLIC + 'grupos/3.png',
            }
        },
        props: {

        },
        mounted: function() {


        },
        methods: {

        }
    }
</script>