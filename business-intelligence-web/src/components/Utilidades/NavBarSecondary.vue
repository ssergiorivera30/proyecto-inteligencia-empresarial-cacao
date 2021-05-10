<template>

  <HeaderModules :TitleHeader="TitleHeader" :IconModulo="IconModulo" :SubTitleHeader="SubTitleHeader" :NavRight="NavRight" :GoBack="GoBack" :GoBackTitle="GoBackTitle" />

  <div class="pt-3 mb-2">
    <ul class="list-reset flex border-b-2 border-gray-100">
     
    
    
        <router-link 
          v-for="routes in RoutesNavs"
          :key="routes" 
          :to="routes.Linkroute" 
          @click="SubTitleHeader = routes.nameRoute, NavRight = routes.NavRight "
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
  data() {
    return {
      name: 'NavBarSecondary',
      NavRight: [],
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