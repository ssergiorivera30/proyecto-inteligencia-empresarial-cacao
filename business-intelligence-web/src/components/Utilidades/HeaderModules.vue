<template>
<div class="flex items-center justify-center">
   <div class="w-full py-2 flex flex-col lg:space-y-0 space-y-5 lg:flex-row lg:items-center justify-between bg-white">
      <div>
         <h3 class="font-bold tracking-wide text-2xl mb-2 text-gray-700"> {{ TitleHeader }} </h3>
         <div class="md:space-x-5 md:space-y-0 space-y-1  flex md:flex-row flex-col">
            <span class="inline-flex text-gray-500 space-x-2 items-center">
               <svg xmlns="http://www.w3.org/2000/svg" class="fill-current w-5 h-5" viewBox="0 0 24 24">
                  <path d="M12.23 15.5c-6.801 0-10.367-1.221-12.23-2.597v9.097h24v-8.949c-3.218 2.221-9.422 2.449-11.77 2.449zm1.77 2.532c0 1.087-.896 1.968-2 1.968s-2-.881-2-1.968v-1.032h4v1.032zm-14-8.541v-2.491h24v2.605c0 5.289-24 5.133-24-.114zm9-7.491c-1.104 0-2 .896-2 2v2h2v-1.5c0-.276.224-.5.5-.5h5c.276 0 .5.224.5.5v1.5h2v-2c0-1.104-.896-2-2-2h-6z" />
               </svg>
               <span>{{ SubTitleHeader }}</span>
            </span>
         </div>
      </div>
                
      <div class="flex space-x-3">               
         <div v-for="link in NavRight" :key="link">
            <router-link v-if="link.LinkType == 1" :to="link.LinkRoute" class="flex items-center text-gray-500 space-x-2 border border-gray-400 px-4 py-1 rounded-md hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-700">
               <i :class="link.linkIcon"></i>
               <span class="text-sm font-semibold">{{ link.LinkName }}</span>
            </router-link>

            <router-link v-if="link.LinkType == 2" :to="link.LinkRoute" class="flex items-center text-white space-x-1.5 px-4 py-1 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 bg-blue-900 hover:bg-blue-800">
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
      SubTitleHeader: String,
    }
  }
</script>