<template>
   <header class="flex items-center justify-between">
      <div class="flex">
            <span v-if="ServiceStatus == 1" class="inline-flex items-center justify-center text-center px-3 py-1 text-xs font-bold leading-none bg-green-200 text-green-800 rounded-full">
               <span class="pr-1">{{ NameService }} activo</span>
            </span>
            <span v-else class="inline-flex items-center justify-center text-center px-3 py-1 text-xs font-bold leading-none text-yellow-100 bg-yellow-400 rounded-full">
               <span class="pr-1">{{ NameService }} Inactivo</span>
            </span>
         </div>

         <div class="flex">
            <div class="px-6 flex items-center flex-no-wrap">
               <div  v-for="(memb, index) in UserMembersSelect" :key="index" class="">
                  <div v-if="memb.avatar == 0" :title="memb.name + ' - ' + memb.email" 
                     class="-ml-2 flex items-center justify-center w-10 h-10 rounded-full bg-purple-800 text-white border-2 border-white uppercase shadow select-none" 
                     draggable="false">
                     {{ memb.name.substring(0,2) }}
                  </div>
                  
                  <div class="-ml-2 " v-else>
                     <img :src="ImageAvatar+memb.avatar" :title="memb.name + ' - ' + memb.email" role="img" 
                        class="flex w-10 h-10 object-cover rounded-full border-2 bg-white  border-white shadow select-none"  draggable="false">
                  </div>
                  
               </div>
            </div>

            <router-link v-for="navigateTo in ServiceToptInfoNav" :key="navigateTo" :to="navigateTo.Linkroute" 
               class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium px-4 py-2 cursor-pointer">
               <div v-html="navigateTo.IconRoute"></div>
               <span class="hidden md:flex">{{ navigateTo.NameRoute }}</span>
            </router-link>

         </div>
      </header>
</template>
<script>

import API_ROUTER from './../../services/SERVER_API';
import axios  from "axios";

export default {
   name: 'ServiceToptInfoBasic',
  data() {
    return {      
      SrcIconModulo: API_ROUTER.API_PUBLIC,
      ImageAvatar: API_ROUTER.API_PUBLIC + "avatars/",
      imagen_a: API_ROUTER.API_PUBLIC+'users/a_4_0.png',
      imagen_b: API_ROUTER.API_PUBLIC+'users/a_4_1.png',
      imagen_c: API_ROUTER.API_PUBLIC+'users/a_4_2.png',
      imagen_d: API_ROUTER.API_PUBLIC+'users/a_4_3.png',
      imagen_e: API_ROUTER.API_PUBLIC+'users/a_4_4.png',
      UserMembersSelect: []
    }
  },   
  props: {
    ServiceStatus: Number,      
    IdService: Number,
    NameService: String,
    ServiceToptInfoNav: Object
  },
  mounted: function () {  
     this.LoadUsersService()
   
  },
  methods:{
         LoadUsersService: function(){
            axios.post(API_ROUTER.PHP7_CONTROLLER + "permissions/load_user.php", {
               order: 'load_users',
               id_service: parseInt(this.$route.params.id_service)
               }).then((response) => {
                  this.UserMembersSelect = response.data;
               });
         },


  }  
}
</script>