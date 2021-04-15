<template>
  <div class="pt-3 mb-2">
    <ul class="list-reset flex border-b">
      <li class="-mb-px mr-1">
        <router-link :to="GoBack"
          class="text-blue-400 font-semibold inline-block py-0 px-3 bg-white hover:text-blue-900 cursor-pointer justify-items-center	">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-3 w-3 text-blue-900" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M15 19l-7-7 7-7" />
          </svg>
        </router-link>
      </li>
      <!--  -->
      <li class="-mb-px mr-1" v-for="routes in RoutesNavs" :key="routes">
        
        <router-link :to="routes.Linkroute+'/'+this.$route.params.id_project"
          active-class="border-l border-t border-r rounded-t text-blue-900"
          class="text-blue-400 font-semibold inline-block py-0 px-4 bg-white">
          {{ routes.nameRoute}}
        </router-link>
      </li>
      <!-- <li class="-mb-px mr-1">
        <router-link to="/proyecto/formularios" href="#"
          class="text-blue-400 font-semibold inline-block py-1 px-4 bg-white hover:text-blue-900 cursor-pointer">
          Recolección de datos
        </router-link>
      </li>
      <li class="-mb-px mr-1">
        <router-link to="/proyecto/integrantes"
          class="text-blue-400 font-semibold inline-block py-1 px-4 bg-white hover:text-blue-900 cursor-pointer">
          Integrantes
        </router-link>
      </li> -->
    </ul>
  </div>
</template>

<script>
  export default {
    name: 'NavBarSecondary',
    props: {
      RoutesNavs: Object,
      GoBack: String
    }
  }
</script>