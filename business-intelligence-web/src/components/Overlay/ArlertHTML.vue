<template>

         <div class="flex items-center justify-center sm:px-0 ">
            <div id="alert"
               class="bg-gray-100 w-full transition duration-150 ease-in-out shadow rounded-md md:flex justify-between items-center top-0 my-4 py-4 px-4">
               <div class="sm:flex items-center ">
                  <div class="flex items-center">
                     <div class="mr-2 mt-0.5 sm:mt-0 text-green-600">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"
                           fill="currentColor">
                           <path class="heroicon-ui"
                              d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm0-9a1 1 0 0 1 1 1v4a1 1 0 0 1-2 0v-4a1 1 0 0 1 1-1zm0-4a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                        </svg>
                     </div>
                     <p class="text-base text-gray-700">
                        <span class="mr-1 text-base font-bold text-gray-700">Información:</span>
                        Este modelo de formularios te permitirá personalizar las entradas de información al sistema.
                     </p>
                  </div>
               </div>
               <div class="flex justify-end mt-4 md:mt-0 md:pl-4 lg:pl-0">
                  <span class="text-sm mr-4 font-bold cursor-pointer text-gray-700">Detalles</span>
                  <span class="text-sm mr-4 font-bold cursor-pointer text-gray-700">Cerrar</span>
               </div>
            </div>
         </div>
  
</template>

<script>

export default {
  name: 'ArlertHTML',
  props:{

  },
  data() {
    
  },
  mounted: function () {},
  methods: { }
}
</script>
