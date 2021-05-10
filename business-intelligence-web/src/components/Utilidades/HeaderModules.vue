<template>
   <div class="flex items-center justify-center">
      <div class="w-full py-2 flex my-2 justify-between">

         <div class="grid grid-rows-2 grid-flow-col gap-2">

            <router-link 
               v-if="GoBack !== 'history.back'"
               :to="GoBack"
               :title="GoBackTitle"
               class="row-span-2 bg-blue-100 rounded w-6 flex flex-wrap content-center justify-center ">
               <i class="bx bx-chevron-left text-gray-700 font-bold "></i>
            </router-link>

            <a 
               v-else
               href="javascript:history.back()" 
               :title="GoBackTitle" 
               class="row-span-2 bg-blue-100 rounded w-6 flex flex-wrap content-center justify-center ">
               <i class='bx bx-chevron-left font-bold'></i>
            </a>    

     

            <div class="col-span-2">
               <h3 class="font-bold tracking-wide text-2xl mb-2 text-gray-700"> {{ TitleHeader }} </h3>
            </div>
            <div class="row-span-1 col-span-2">
               <div class="md:space-x-5 md:space-y-0 space-y-1  flex md:flex-row flex-col">
                  <span class="inline-flex text-gray-500 space-x-2 items-center">
                     <i :class="IconModulo"></i>
                     <span>{{ SubTitleHeader }}</span>
                  </span>
               </div>
            </div>
         </div>



         <div class="flex space-x-3">
            <div v-for="link in NavRight" :key="link">
               <router-link v-if="link.LinkType == 1" :to="link.LinkRoute"
                  class="flex items-center text-gray-500 space-x-2 border border-gray-400 px-4 py-1 rounded-md hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-700">
                  <i :class="link.linkIcon"></i>
                  <span class="text-sm font-semibold">{{ link.LinkName }}</span>
               </router-link>

               <router-link v-if="link.LinkType == 2" :to="link.LinkRoute"
                  class="flex items-center text-white space-x-1.5 px-4 py-1 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 bg-blue-900 hover:bg-blue-800">
                  <i :class="link.linkIcon"></i>
                  <span class="text-sm font-semibold">{{ link.LinkName }}</span>
               </router-link>
            </div>
         </div>
      </div>
   </div>
</template>

<script>
   export default {
      name: 'HeaderModules',
      props: {
         NavRight: Object,
         TitleHeader: String,
         IconModulo: String,
         SubTitleHeader: String,
         GoBack: String,
         GoBackTitle: String,
      }
   }
</script>