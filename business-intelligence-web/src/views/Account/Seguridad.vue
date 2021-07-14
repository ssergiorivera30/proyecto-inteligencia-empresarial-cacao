<template>
 <header class="flex items-center justify-between my-5">
    <h2 class="text-lg font-bold leading-6 text-gray-600">Cambiar contraseña</h2>
      <div class="relative flex gap-x-3">
        <a href="#" class="flex p-2 rounded-md bg-gray-200">
          <span class="text-xs font-medium leading-none text-black">Desactivar cuenta</span>
        </a>

        <a href="#" class="flex p-2 rounded-md bg-red-500">
          <span class="text-xs font-medium leading-none text-red-50">Eliminar cuenta</span>
        </a>
      </div>
  </header>

   
  <form class="grid grid-cols-1 gap-y-3 w-full md:max-w-md">
    <div class="block">
      <label class="text-gray-700 font-semibold text-xs">Contraseña actual</label>
      <input type="password" class="form-control2" required>
    </div>

    <div class="block">
      <label class="text-gray-700 font-semibold text-xs">Nueva contraseña</label>
      <input type="password" class="form-control2" required>
    </div>

    <div class="block">
      <label class="text-gray-700 font-semibold text-xs">Confirme contraseña nueva</label>
      <input type="password" class="form-control2" placeholder="Opcional">
    </div>  

    <div class="my-1 text-left">
      <button type="submit" class="btn-indigo">Confirmar cambio</button>
    </div>
  </form>
</template>

<script>

  import API_ROUTER from './../../services/SERVER_API'
  import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'


  export default {
    components: {
      NavBarSecondary
    },
    data() {
      return {
        name: 'Seguridad',
        imagen_a: API_ROUTER.API_FILE_SYSTEMS + '1.jpg',
        imagen_b: API_ROUTER.API_FILE_SYSTEMS + '2.jpg',
        imagen_c: API_ROUTER.API_FILE_SYSTEMS + '3.jpg',   

      }
    },
    mounted: function () {

    },
    methods: {


    }

  }
</script>