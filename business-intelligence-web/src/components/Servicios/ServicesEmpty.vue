<template>
    <section class="max-w-lg px-4 py-12 mx-auto">
        <img class="mx-auto sm:w-1/4" :src="EmptyService" />
        <h2 class="mt-2 text-lg font-medium text-center text-gray-800">Tienes (0) Servicios registrados</h2>
        <p class="mt-1 text-center text-gray-600">
            No cuenta con servicios registrados ó compartidos con usted
        </p>
        <div class="flex flex-col items-center justify-center mt-4 space-y-1 md:flex-row md:space-y-0 md:space-x-1">
            <router-link to="/create-service/1" class="w-full mx-2 py-2 px-4 text-white font-bold rounded-md bg-my-primary">Crear grupo</router-link>
            <router-link to="/create-service/2" class="w-full mx-2 py-2 px-4 text-gray-700 font-bold rounded-md bg-gray-200">Crear proyecto</router-link>
        </div>
    </section>
</template>

<script>

import API_ROUTER from './../../services/SERVER_API'

export default {
      data() {
         return {
            name: 'ServicesEmpty',
            EmptyService: API_ROUTER.API_UI + 'empty-services.png',
         }
      },
      mounted: function(){   

      },
      methods: {
       
    }
}
</script>