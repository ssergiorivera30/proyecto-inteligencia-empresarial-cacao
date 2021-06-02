<template>

    <aside class="print-none hidden sm:flex sm:flex-col fixed min-h-screen">
      
      <div class="flex-grow flex flex-col justify-between text-gray-500 w-14 mt-14">
        <nav class="flex flex-col mx-4 my-2 space-y-3">
          <router-link to="/inicio"
            class="inline-flex items-center justify-center py-2 hover:text-principal-color-ui focus:text-principal-color-ui rounded-lg">
            <span class="sr-only">Inicio</span>
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
              class="h-6 w-6">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
            </svg>
          </router-link>
          <router-link to="/herraminetas"
            class="inline-flex items-center justify-center py-2 hover:text-principal-color-ui focus:text-principal-color-ui rounded-lg"
            title="Herramientas">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
              class="h-6 w-6">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M17 14v6m-3-3h6M6 10h2a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2zm10 0h2a2 2 0 002-2V6a2 2 0 00-2-2h-2a2 2 0 00-2 2v2a2 2 0 002 2zM6 20h2a2 2 0 002-2v-2a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2z" />
            </svg>
          </router-link>

          <router-link to="/cuenta/ver" class="cursor-pointer mb-4">
						<div class="bg-white h-6 w-6 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden">
							<img src="https://cdn.discordapp.com/embed/avatars/2.png" alt="">
            </div>
					</router-link>

          <router-link to="/cuenta/ver" class="cursor-pointer mb-4">
						<div class="bg-white h-6 w-6 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden">
							<img src="https://cdn.discordapp.com/embed/avatars/1.png" alt="">
            </div>
					</router-link>

          <router-link to="/cuenta/ver" class="cursor-pointer mb-4">
						<div class="bg-white h-6 w-6 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden">
							<img src="https://cdn.discordapp.com/embed/avatars/3.png" alt="">
            </div>
					</router-link>

          <router-link to="/cuenta/ver" class="cursor-pointer mb-4">
						<div class="bg-white h-6 w-6 flex items-center justify-center text-black text-2xl font-semibold rounded-3xl mb-1 overflow-hidden">
							<img src="https://cdn.discordapp.com/embed/avatars/4.png" alt="">
            </div>
					</router-link>


          <router-link to="/cuenta/ver"
            class="inline-flex items-center justify-center py-2 hover:text-principal-color-ui focus:text-principal-color-ui rounded-lg">
            <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
          </router-link>


          




        </nav>
      </div>
    </aside>


</template>

<script>



  export default {
    data() {
      return {
        name: 'NavAside',
      }
    },
    props: {

    },
    mounted: function () {


    },
    methods: {

    }
  }
</script>