<template>
   <div class="min-w-full mx-auto lg:pt-3 text-center h-full">
      <div class="h-max w-full bg-center rounded-md gap-4 pt-40 md:pt-24 lg:pt-28 xl:pt-24" :style="'background-image:url('+imagen_portada_avatar+');'">
         <h2 class="mx-auto w-72 text:xs md:text-sm lg:text-md font-light capitalize text-black select-none break-all rounded-full py-3 px-8">
           {{ NameForm }}
         </h2>        
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
                imagen_portada_avatar: API_ROUTER.API_UI + "services/bg.jpg",
            }
        },
    }
</script>
