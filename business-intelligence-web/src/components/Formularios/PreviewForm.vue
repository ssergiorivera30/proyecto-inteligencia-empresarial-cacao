<template>
   <div class="px-4 min-w-full	 mx-auto md:px-10 lg:px-8 lg:pt-3 text-center ">
      <div class="h-max w-full bg-cover bg-center rounded-md flex flex-wrap content-center gap-4" :style="'background-image:url('+imagen_portada_avatar+');'">
         <h2 class="mb-16 font-sans text-3xl font-bold leading-none tracking-tight text-black sm:text-2xl select-none">
           <span class="bg-green-400 rounded-full py-3 px-6"> {{ NameForm }}</span>
         </h2>
         <p v-if="DescriptionForm != ''" class="ml-24 w-full bg-white bg-opacity-80 rounded-full py-3 px-6 md:text-lg select-none">
         <span class="font-semibold leading-none tracking-tight text-black "> {{ DescriptionForm }}</span>
         </p>
      </div>
   </div>
</template>

<script>
    import API_ROUTER from './../../services/SERVER_API'


    export default {
        props: {
            NameForm: String,
            DescriptionForm: String,
        },
        data() {
            return {
                name: 'PreviewForm',
                imagen_portada_avatar: API_ROUTER.API_UI + "services/create.png",
            }
        },
    }
</script>
