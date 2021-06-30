<template>
   <header class="flex items-center justify-between">
      <div class="flex">
            <span v-if="ServiceStatus == 1" class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none bg-green-200 text-green-800 rounded-full">
               {{ NameService }} activo
            </span>
            <span v-else class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-yellow-100 bg-yellow-400 rounded-full">
               {{ NameService }} Inactivo
            </span>
         </div>

         <div class="flex">
            <div class="px-6 flex items-center flex-no-wrap">
               <div class="w-12 h-12 bg-cover bg-center rounded-md">
                  <img loading="lazy" draggable="false" :src="imagen_a" alt=""
                     class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow pointer-events-none" />
               </div>
               <div class="w-12 h-12 bg-cover rounded-md -ml-2">
                  <img loading="lazy" draggable="false" :src="imagen_b"  alt=""
                     class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow pointer-events-none" />
               </div>
               <div class="w-12 h-12 bg-cover rounded-md bg-center -ml-2">
                  <img loading="lazy" draggable="false" :src="imagen_c"  alt=""
                     class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow pointer-events-none" />
               </div>
               <div class="w-12 h-12 bg-cover rounded-md -ml-2">
                  <img loading="lazy" draggable="false" :src="imagen_d" alt=""
                     class="h-full w-full overflow-hidden object-cover object-center rounded-full border-2 border-white dark:border-gray-700 shadow pointer-events-none" />
               </div>
               <div class="w-12 h-12 bg-cover rounded-md -ml-2">
                  <img loading="lazy" draggable="false" :src="imagen_e" alt=""
                     class="h-full w-full overflow-hidden object-cover object-center rounded-full border-2 border-white dark:border-gray-700 shadow pointer-events-none" />
               </div>
            </div>

              <router-link  v-for="navigateTo in ServiceToptInfoNav" :key="navigateTo" :to="navigateTo.Linkroute"
               class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
               <div v-html="navigateTo.IconRoute"></div>
               <span class="hidden md:flex">{{ navigateTo.NameRoute }}</span>
            </router-link>

      </div>
   </header>
</template>
<script>

import API_ROUTER from './../../services/SERVER_API'

export default {
   name: 'ServiceToptInfoBasic',
  data() {
    return {      
      SrcIconModulo: API_ROUTER.API_PUBLIC,
      imagen_a: API_ROUTER.API_PUBLIC+'users/a_4_0.png',
      imagen_b: API_ROUTER.API_PUBLIC+'users/a_4_1.png',
      imagen_c: API_ROUTER.API_PUBLIC+'users/a_4_2.png',
      imagen_d: API_ROUTER.API_PUBLIC+'users/a_4_3.png',
      imagen_e: API_ROUTER.API_PUBLIC+'users/a_4_4.png',
    }
  },   
  props: {
    ServiceStatus: Number,      
    IdService: Number,
    NameService: String,
    ServiceToptInfoNav: Object
  },
  mounted: function () {  
   
  }      
}
</script>