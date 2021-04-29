<template>

  <button
    class="relative p-2 text-gray-400 hover:text-gray-600 focus:bg-blue-900 focus:text-gray-600 rounded-full focus:outline-none"
    @click="DrowdownActionNot">
    <span class="sr-only">Notificaciones</span>
    <span class="absolute top-0 right-0 h-2 w-2 mt-1 mr-2 bg-green-400 rounded-full"></span>
    <span class="absolute top-0 right-0 h-2 w-2 mt-1 mr-2 bg-green-400 rounded-full animate-ping"></span>
    <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-5 w-5 text-white">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
        d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
    </svg>
  </button>
  <div
    class="fixed right-0 z-40 mt-3 md:mt-1 px-3 overflow-hidden bg-white shadow-2xl w-100 h-screen block md:rounded-t-md"
    :class="DrowdownAction">
    <div class="py-4 h-4/6">

      <header class="flex items-center justify-between">
        <h2 class="text-sm leading-6 font-medium text-black">Notificaciones</h2>
        <div
          class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium py-2 cursor-pointer">
          <a @click="DrowdownActionNot">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" width="20"
              height="20" class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </a>
        </div>
      </header>

      <a href="#"
        class="flex items-center px-4 py-3 -mx-2 transition-colors duration-200 transform border-b hover:bg-gray-100 dark:hover:bg-gray-700 dark:border-gray-700">
        <img class="object-cover w-8 h-8 mx-1 rounded-full"
          src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
          alt="avatar">
        <p class="mx-2 text-sm text-gray-600 dark:text-white">
          <span class="font-bold" href="#">Sara Salah</span> replied on the <span class="font-bold text-blue-500"
            href="#">Upload Image</span> artical . 2m
        </p>
      </a>
      <a href="#"
        class="flex items-center px-4 py-3 -mx-2 transition-colors duration-200 transform border-b hover:bg-gray-100 dark:hover:bg-gray-700 dark:border-gray-700">
        <img class="object-cover w-8 h-8 mx-1 rounded-full"
          src="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
          alt="avatar">
        <p class="mx-2 text-sm text-gray-600 dark:text-white">
          <span class="font-bold" href="#">Slick Net</span> start following you . 45m
        </p>
      </a>
      <a href="#"
        class="flex items-center px-4 py-3 -mx-2 transition-colors duration-200 transform border-b hover:bg-gray-100 dark:hover:bg-gray-700 dark:border-gray-700">
        <img class="object-cover w-8 h-8 mx-1 rounded-full"
          src="https://images.unsplash.com/photo-1450297350677-623de575f31c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
          alt="avatar">
        <p class="mx-2 text-sm text-gray-600 dark:text-white">
          <span class="font-bold" href="#">Jane Doe</span> Like Your reply on <span class="font-bold text-blue-500"
            href="#">Test with TDD</span> artical . 1h
        </p>
      </a>
      <a href="#"
        class="flex items-center px-4 py-3 -mx-2 transition-colors duration-200 transform hover:bg-gray-100 dark:hover:bg-gray-700">
        <img class="object-cover w-8 h-8 mx-1 rounded-full"
          src="https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=398&q=80"
          alt="avatar">
        <p class="mx-2 text-sm text-gray-600 dark:text-white">
          <span class="font-bold" href="#">Abigail Bennett</span> start following you . 3h
        </p>
      </a>

      <div class="mt-5">
        <a href="#" class="block py-2 font-bold text-center text-white bg-blue-900 hover:underline rounded-md">Ver todas
          las notificaciones</a>

      </div>
    </div>


  </div>

</template>

<script>



  export default {
    data() {
      return {
        name: 'NavNotificaciones',
        DrowdownAction: 'hidden',
      }
    },
    props: {
      TitleHeader: String,
    },
    mounted: function () {


    },
    methods: {
      DrowdownActionNot() {
        this.DrowdownAction = this.DrowdownAction === 'hidden' ? 'block' : 'hidden'
      },
    }
  }
</script>