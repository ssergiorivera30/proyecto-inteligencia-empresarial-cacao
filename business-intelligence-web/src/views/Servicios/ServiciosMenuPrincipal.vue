<template>
   <div class="px-4 py-16 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8 lg:py-3">
      <div class="pt-5 mb-8">
         <ul class="list-reset flex border-b">
            <li class="-mb-px mr-1">
               <router-link to="/proyectos"
                  class="text-blue-400 font-semibold inline-block py-2 px-4 bg-white border-l border-t border-r rounded-t text-blue-900">
                  Servicios
               </router-link>
            </li>
         </ul>
      </div>
      <router-view />
   </div>
</template>

<script>

   export default {

      data() {
         return {
            name: 'ServiciosMenuPrincipal',
         }
      },
      beforeMount: function () {

      },
      mounted: function () {
      },
      methods: {
      }
   }
</script>