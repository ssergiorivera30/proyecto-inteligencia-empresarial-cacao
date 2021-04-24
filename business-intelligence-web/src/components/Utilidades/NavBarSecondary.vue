<template>

  <HeaderModules :TitleHeader="TitleHeader" :SubTitleHeader="SubTitleHeader"/>

  <div class="pt-3 mb-2">
    <ul class="list-reset flex border-b-2 border-gray-100">
     
        <router-link 
          v-if="GoBack !== 'history.back'"
          :to="GoBack"
          :title="GoBackTitle"
          class="py-1 text-gray-700 inline-block px-3 bg-gray-100 rounded-t hover:text-blue-900 cursor-pointer justify-items-center">
          <i class='bx bx-chevron-left font-bold'></i>
        </router-link>  

        <a 
          v-else
          href="javascript:history.back()" 
          :title="GoBackTitle" 
          class="py-1 text-gray-600 inline-block px-3 bg-gray-100 rounded-t hover:text-blue-900 cursor-pointer justify-items-center">
          <i class='bx bx-chevron-left font-bold'></i>
        </a>          
    
        <router-link 
          v-for="routes in RoutesNavs"
          :key="routes" 
          :to="routes.Linkroute" 
          @click="SubTitleHeader = routes.nameRoute"
          :title="'Ir a '+routes.nameRoute"
          class="py-1 -mb-px px-4 text-gray-600 font-semibold inline-block" 
          active-class="text-blue-900 border-b-2 border-blue-900">
            {{ routes.nameRoute }}
        </router-link>
    </ul>
  </div>
</template>

<script>
   import HeaderModules from './HeaderModules.vue'
  export default {
      components:{
         HeaderModules,
      },
    name: 'NavBarSecondary',
    props: {
      TitleHeader: String,
      SubTitleHeader: String,
      RoutesNavs: Object,
      GoBack: String,
      GoBackTitle: String,      
    }
  }
</script>