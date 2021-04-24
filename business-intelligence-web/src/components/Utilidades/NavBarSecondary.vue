<template>
  <div class="pt-3 mb-2">
    <ul class="list-reset flex border-b-2 border-gray-100">
     
        <router-link 
          v-if="GoBack !== 'history.back'"
          :to="GoBack"
          :title="GoBackTitle"
          class="py-1 text-gray-700 font-semibold inline-block px-3 bg-white hover:text-blue-900 cursor-pointer justify-items-center">
          <i class='bx bx-chevron-left font-bold'></i>
        </router-link>  

        <a 
          v-else
          href="javascript:history.back()" 
          :title="GoBackTitle" 
          class="py-1 text-gray-600 font-semibold inline-block px-3 bg-white hover:text-blue-900 cursor-pointer justify-items-center">
          <i class='bx bx-chevron-left'></i>
        </a>          
    
        <router-link 
          v-for="routes in RoutesNavs"
          :key="routes" 
          :to="routes.Linkroute" 
          :title="'Ir a '+routes.nameRoute"
          class="py-1 -mb-px px-4 text-gray-600 font-semibold inline-block" 
          active-class="text-blue-900 border-b-2 border-blue-900">
            {{ routes.nameRoute }}
        </router-link>
    </ul>
  </div>
</template>

<script>
  export default {
    name: 'NavBarSecondary',
    props: {
      RoutesNavs: Object,
      GoBack: String,
      GoBackTitle: String,
    }
  }
</script>