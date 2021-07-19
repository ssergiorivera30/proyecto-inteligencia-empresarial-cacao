<template>
   <div class="grid grid-cols-3 gap-4">

        <div class="col-span-3 rounded-md bg-gray-600">
           <h2 class="mx-auto w-full text:xs md:text-md lg:text-md font-bold text-gray-50 select-none break-all rounded-full py-3 px-5">
           {{ NameForm }}
         </h2> 
       </div>

       <div class="col-span-3 rounded-md bg-gray-600 p-5">
           <p class="text-sm text-gray-50">
               <svg xmlns="http://www.w3.org/2000/svg" class="inline-block mr-2" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M20 17v-12c0 -1.121 -.879 -2 -2 -2s-2 .879 -2 2v12l2 2l2 -2z"></path>
                    <path d="M16 7h4"></path>
                    <path d="M18 19h-13a2 2 0 1 1 0 -4h4a2 2 0 1 0 0 -4h-3"></path>
                </svg>{{ DescriptionForm }}</p>
        </div>

       <div class="col-span-1">
           <div class="col-span-1 rounded-full bg-gray-500 p-4 animate-pulse"></div>
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
