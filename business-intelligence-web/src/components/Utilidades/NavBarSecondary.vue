<template>
 
   <div class="flex items-center justify-center mt-2">
      <div class="w-full pt-2 flex justify-between">

         <div class="grid grid-rows-1 grid-flow-col gap-2">
            <router-link 
               v-if="GoBack !== 'history.back'"
               :to="GoBack"
               :title="GoBackTitle"
               class="row-span-2 bg-gray-200 rounded w-6 flex flex-wrap content-center justify-center ">
               <i class="bx bx-chevron-left text-gray-700 font-bold "></i>
            </router-link>

            <a v-else
               href="javascript:history.back()" 
               :title="GoBackTitle" 
               class="row-span-2 bg-gray-200 rounded w-6 flex flex-wrap content-center justify-center ">
               <i class='bx bx-chevron-left font-bold'></i>
            </a>  

              <div class="row-span-2 w-10 flex flex-wrap content-center justify-center">
                <img v-if="IconModulo != ''" class="w-full rounded" :src="SrcIconModulo + IconModulo" />
            </div> 
         
            <div class="row-span-2 h-16 block flex-wrap content-center justify-center">
               <div class="pl-1 py-0">
                  <h3 class="font-bold text-lg text-gray-600">{{ TitleHeader }}</h3>
                  <h4 class="font-semibold text-sm text-gray-400">{{ SubTitleHeader }} {{ breadcrumb }}</h4>
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

  <div class="mt-3 mb-2">
    <ul class="list-reset flex border-b-2 border-gray-100 	 overscroll-x-auto	 overflow-y-hidden whitespace-nowrap">    
        
        <router-link 
          v-for="routes in RoutesNavs"
          :key="routes" 
          :to="routes.Linkroute" 
          @click="breadcrumb =  ' / '+ routes.nameRoute, NavRight = routes.NavRight "
          :title="'Ir a '+routes.nameRoute"
          class="py-1 -mb-px px-4 text-gray-600 font-semibold inline-block 	whitespace-nowrap" 
          active-class="text-blue-900 border-b-2 border-blue-900">
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