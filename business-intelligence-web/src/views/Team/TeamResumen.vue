<template>

   <header class="flex items-center justify-between mt-2">
      <h2 class="text-lg font-bold leading-6 text-gray-600">Equipo</h2>
   </header>

   <div class="grid grid-cols-1 md:grid-cols-2 gap-x-10">
      <div>
         <div v-if="UserMembersSelect.length  > 0" class="flex items-center flex-wrap select-none antialized my-5">
            <div v-for="(Members, index) in UserMembersSelect" :key="index"
               :title="Members.name +' - '+ Members.email "
               @click="UserMembersSelectUpdate = UserMembersSelect[index], UserMembersSelectUpdateID = index"
               v-bind:class="[ index > 0 ? '-ml-2' : '' ]" class="w-12 h-12 bg-cover bg-center rounded-md">
               <span v-if="Members.avatar == 0"
                  class=" w-12 h-12 rounded-full bg-purple-800 text-white flex items-center justify-center uppercase border-3 border-white shadow pointer-events-none">
                  {{ Members.name.substring(0,2) }}
               </span>
               <img v-else :src="ImageAvatar+Members.avatar" loading="lazy" draggable="false" alt=""
                  class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white shadow pointer-events-none" />
            </div>
         </div>

         <div class="my-5">
            <label class="text-gray-700 font-semibold text-sm">Buscar Integrantes</label>
            <input type="search" class="form-control2" v-model="IdentificatorMember" placeholder="Buscar usuario" @keyup="OrderSearchUser" />

            <div class="items-center justify-between">
               <div class="" v-for="(user, index) in UserMembersList" :key="index">
                  <div class="grid grid-cols-12 items-center shadow-sm my-3 px-2 py-2 rounded w-full">

                     <div class="col-span-2 sm:col-span-2 md:col-span-2 lg:col-span-2 xl:col-span-1 h-10 w-10 ">
                        <button v-if="user.avatar == 0"
                           class="w-8 h-8 rounded-full bg-purple-800 text-white flex items-center justify-center uppercase">{{
                           user.name.substring(0,2) }}</button>
                        <img v-else :src="ImageAvatar+user.avatar" role="img"
                           class="rounded-full object-cover h-full w-full shadow">
                     </div>

                     <div class="col-span-3 md:col-span-6 lg:col-span-7">
                        <p class="text-md text-gray-600 font-bold truncate overflow-ellipsis overflow-hidden">{{
                           user.name
                           }}</p>
                        <p class="sm:text-md text-sm text-gray-600 truncate overflow-ellipsis overflow-hidden ">{{
                           user.email }}</p>
                     </div>

                     <div class="col-span-2 lg:col-span-1">
                        <h5 class="font-medium">
                           <svg
                              @click="AddUserService(user.code, UserMembersList[index]['permissions']), UserMembersList.splice(index, 1)"
                              xmlns="http://www.w3.org/2000/svg" class="cursor-pointer h-5 w-5 text-principal-color-ui"
                              fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                 d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                           </svg>
                        </h5>
                     </div>

                     <div class="col-span-2 lg:col-span-2">
                        <select class="font-medium truncate overflow-ellipsis overflow-hidden bg-gray-50"
                           v-model="UserMembersList[index]['permissions']">
                           <option value="1" disabled>Propietario</option>
                           <option value="2">Ver</option>
                           <option value="3">Editar</option>
                        </select>
                     </div>
                  </div>

               </div>
            </div>
         </div>
      </div>




      <div class="" v-if="UserMembersSelectUpdate.length != 0">
         <div class="items-center justify-between">
            <div class="grid grid-cols-12 items-center my-3 px-2 py-2 rounded w-full">
               <div class="col-span-2 sm:col-span-2 md:col-span-2 lg:col-span-2 xl:col-span-1 h-10 w-10 ">
                  <button v-if="UserMembersSelectUpdate.avatar == 0"
                     class="w-8 h-8 rounded-full bg-purple-800 text-white flex items-center justify-center uppercase">
                     {{ UserMembersSelectUpdate.name.substring(0,2) }}</button>
                  <img v-else :src="ImageAvatar+UserMembersSelectUpdate.avatar" role="img"
                     class="rounded-full object-cover h-full w-full shadow">
               </div>
               <div class="col-span-3 md:col-span-5 lg:col-span-5">
                  <p class="text-md text-gray-600 font-bold truncate overflow-ellipsis overflow-hidden">{{
                     UserMembersSelectUpdate['name'] }}</p>
                  <p class="sm:text-md text-sm text-gray-600 truncate overflow-ellipsis overflow-hidden ">{{
                     UserMembersSelectUpdate['email'] }}</p>
               </div>

               <div class="col-span-2 lg:col-span-2">
                  <h5 class="font-medium pl-5">
                     
                     <svg 
                        v-if="UserMembersSelectUpdate['permissions'] != 1"
                        @click="DeleteUsersService(UserMembersSelectUpdate)" 
                        xmlns="http://www.w3.org/2000/svg" 
                        class="cursor-pointer h-5 w-5 text-red-600" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                        <line x1="4" y1="7" x2="20" y2="7"></line>
                        <line x1="10" y1="11" x2="10" y2="17"></line>
                        <line x1="14" y1="11" x2="14" y2="17"></line>
                        <path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12"></path>
                        <path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3"></path>
                     </svg>

                  </h5>
               </div>

               <div class="col-span-2 lg:col-span-2">
                  <h5 class="font-medium">
                     <svg 
                        v-if="UserMembersSelectUpdate['permissions'] != 1"
                        @click="UpdateUsersService(UserMembersSelectUpdate)" xmlns="http://www.w3.org/2000/svg"
                        class="cursor-pointer h-5 w-5 text-principal-color-ui" width="24" height="24"
                        viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                        <path d="M6 4h10l4 4v10a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2"></path>
                        <circle cx="12" cy="14" r="2"></circle>
                        <polyline points="14 4 14 8 8 8 8 4"></polyline>
                     </svg>
                     
                  </h5>
               </div>

               <div class="col-span-2 lg:col-span-2" >
                  <select v-if="UserMembersSelectUpdate['permissions'] != 1" class="pr-5 font-medium truncate overflow-ellipsis overflow-hidden bg-gray-50"
                     v-model="UserMembersSelectUpdate['permissions']">
                     <option value="1" disabled>Propietario</option>
                     <option value="2">Ver</option>
                     <option value="3">Editar</option>

                  </select>

                  <select v-else class="bg-gray-50">
                     <option value="1" selected disabled>Propietario</option>
                  </select>
               </div>
            </div>
         </div>
      </div>
   </div>

</template>

<script>

   import axios from 'axios';
   import API_ROUTER from './../../services/SERVER_API'

   export default {
      name: 'TeamResumen',

      data() {
         return {
            ImageAvatar: API_ROUTER.API_PUBLIC + "avatars/",
            IdentificatorMember: null,
            UserMembersList: [],
            UserMembersSelect: [],
            UserMembersSelectUpdate: [],
            UserMembersSelectUpdateID: null,
         }
      },
      beforeMount: function () {


      },
      mounted: function () {

         this.LoadUsersService()

      },
      methods: {

         LoadUsersService: function(){
            axios.post(API_ROUTER.PHP7_CONTROLLER + "permissions/load_user.php", {
               order: 'load_users',
               id_service: parseInt(this.$route.params.id_service)
               }).then((response) => {
                  console.log(response);
                  this.UserMembersSelect = response.data;
               });
         },

         

         UpdateUsersService: function(UserMembersSelectUpdate){
                
            axios.post(API_ROUTER.PHP7_CONTROLLER + "permissions/load_user.php", {
               order: 'update_user',
               permissions: parseInt(UserMembersSelectUpdate.permissions),
               identificator: parseInt(UserMembersSelectUpdate.identificator)
               }).then(() => {
               
                  this.UserMembersSelectUpdate = [];
               });
         },

         DeleteUsersService: function(UserMembersSelectUpdate){
            
            axios.post(API_ROUTER.PHP7_CONTROLLER + "permissions/load_user.php", {
               order: 'delete_user',
               identificator: parseInt(UserMembersSelectUpdate.identificator)
               }).then(() => {

                  this.UserMembersSelectUpdate = [];
                  this.UserMembersSelectUpdateID = null;
                  this.LoadUsersService();

               });
         },
         
         OrderSearchUser: function(){
            if (this.IdentificatorMember != null && 
               this.IdentificatorMember != "") {

                  this.SearchUser();

               } else {

               this.UserMembersList = [];
            }

         },

         SearchUser: function () {

            axios.post(API_ROUTER.PHP7_CONTROLLER + "permissions/load_user.php", {
                  order: 'load',
                  IdentificatorNotMember: this.IdentificatorMember
               }).then((response) => {

                  if (typeof (response.data) == 'string') {

                     this.UserMembersList = [];

                  } else {

                     this.UserMembersList = response.data;
                  }
            });            
         },

         AddUserService: function(code, permissions){
            axios.post(API_ROUTER.PHP7_CONTROLLER + "permissions/load_user.php", {
               order: 'create',
               id_service: parseInt(this.$route.params.id_service),
               id_user: parseInt(code),
               permissions: parseInt(permissions)
               }).then((response) => {

                  if(response.data.status === 'success'){
                     this.LoadUsersService()
                  }
               });
         }, 


      }
   }
</script>