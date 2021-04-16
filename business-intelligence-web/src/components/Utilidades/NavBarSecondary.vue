<template>
  <div class="pt-3 mb-2">
    <ul class="list-reset flex border">
     
        <router-link :to="GoBack" :title="GoBackTitle" class="text-gray-600 font-semibold inline-block px-3 bg-white hover:text-blue-900 cursor-pointer justify-items-center">
          <i class='bx bx-chevron-left'></i>
        </router-link>  
    
        <router-link 
          v-for="routes in RoutesNavs"
          :key="routes" 
          :to="routes.Linkroute+'/'+this.$route.params.id_project" 
          :title="'Ir a '+routes.nameRoute"
          class="-mb-px border-l px-4 text-gray-600 font-semibold inline-block" 
          active-class="bg-blue-50 text-blue-900">
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