<template> 
   <div class="flex items-center justify-center">
      <div class="w-full pt-1 flex justify-between border-gray-300">
         <div class="grid grid-rows-1 grid-flow-col gap-3 py-1">
              <!-- <div class="row-span-2 w-9 flex flex-wrap content-start justify-start">
                <img loading="lazy" v-if="IconModulo != ''" class="w-full rounded pt-2 px-1" :src="SrcIconModulo + IconModulo" />
            </div>          -->
            <div class="row-span-2 h-12 block flex-wrap content-center justify-center ">
               <div class="py-0">
                  <h3 v-if="TitleHeader.length > 40" class="font-bold text-md text-gray-600">{{ TitleHeader.substring(0,40) }}...</h3>
                  <h3 v-else class="font-bold text-md text-gray-600">{{ TitleHeader }}</h3>
                  <h4 class="font-light text-sm text-gray-400">{{ SubTitleHeader }} {{ breadcrumb }}</h4>
               </div>
            </div>     
         </div>

         <div class="hidden md:flex space-x-3 flex-wrap content-center justify-center">
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

  <div class="my-2">
    <ul class="list-reset flex pb-2 overscroll-x-auto overflow-y-hidden whitespace-nowrap">       
        <!-- <router-link 
            v-if="GoBack !== 'back'"
            :to="GoBack"
            :title="GoBackTitle"
            class="mr-2 row-span-2 w-6 flex flex-wrap content-center justify-center ">
            <i class="bx bx-chevron-left text-gray-700 font-bold "></i>
         </router-link>

         <a v-else
            href="javascript:history.back()" 
            :title="GoBackTitle" 
            class="mr-2 row-span-2 w-6 flex flex-wrap content-center justify-center ">
            <i class='bx bx-chevron-left font-bold'></i>
         </a>  -->
         
          
        
         <router-link 
            v-for="routes in RoutesNavs"
            :key="routes" 
            :to="routes.Linkroute" 
            @click="breadcrumb =  ' / '+ routes.nameRoute, NavRight = routes.NavRight "
            :title="'Ir a '+routes.nameRoute"
            class="pb-1 -mb-px px-4 text-gray-600 font-semibold inline-block whitespace-nowrap" 
            active-class=" text-principal-color-ui font-bold border-b-2 border-principal-color-ui rounded-tr-lg 	">
               {{ routes.nameRoute }}
         </router-link>
    </ul>
  </div>
</template>
<script>

import API_ROUTER from './../../services/SERVER_API'

export default {
  data() {
    return {
      name: 'NavBarSecondary',
      NavRight: [],
      breadcrumb: '',
      SrcIconModulo: API_ROUTER.API_PUBLIC,
    }
  },   
  props: {
  TitleHeader: String,
  IconModulo: String,
  SubTitleHeader: String,
  RoutesNavs: Object,
  GoBack: String,
  GoBackTitle: String,      
  },
  mounted: function () {  
    this.$props['RoutesNavs'].forEach(element => {
      if(element.Linkroute === this.$route['fullPath']){
        this.NavRight = element.NavRight
      }          
    });
  }      
}
</script>