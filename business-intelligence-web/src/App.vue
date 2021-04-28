<style>
  @import "~noty/lib/noty.css";
  @import "~noty/lib/themes/sunset.css";
  @import "./assets/boxicons-2.0.7/css/boxicons.min.css"; 
</style>

<template>
  <body class="flex min-h-screen">
  <aside class="hidden sm:flex sm:flex-col">
    <router-link to="/" class="inline-flex pt-1 justify-center h-10 w-14 bg-gray-100 hover:bg-gray-100 focus:bg-gray-100">
      <img src="./assets/logo.png" class="h-8 w-8" alt="">
    </router-link>
    <div class="flex-grow flex flex-col justify-between text-gray-500 bg-gray-100 w-14">
      <nav class="flex flex-col mx-4 my-2 space-y-3">
        <router-link to="/inicio" class="inline-flex items-center justify-center py-2 hover:text-purple-900 focus:text-purple-900 rounded-lg">
          <span class="sr-only">Inicio</span>
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
          </svg>
        </router-link>
        <router-link to="/herraminetas" class="inline-flex items-center justify-center py-2 hover:text-purple-900 focus:text-purple-900 rounded-lg" title="Herramientas">
          <span class="sr-only">Herramientas</span>          
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 14v6m-3-3h6M6 10h2a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2zm10 0h2a2 2 0 002-2V6a2 2 0 00-2-2h-2a2 2 0 00-2 2v2a2 2 0 002 2zM6 20h2a2 2 0 002-2v-2a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2z" />
          </svg>
        </router-link>  
    

        <router-link to="/cuenta" class="inline-flex items-center justify-center py-2 hover:text-purple-900 focus:text-purple-900 rounded-lg">
          <span class="sr-only">Settings</span>
          <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
          </svg>
        </router-link>
      </nav>      
    </div>
  </aside>
  <div class="flex-grow text-gray-800 ">
    <header class="flex fixed items-center h-14 px-1 sm:px-10  bg-gradient-to-r from-blue-700 via-indigo-600 to-purple-600 shadow-sm" style="width: 98.9%;">
      <button class="block sm:hidden relative flex-shrink-0 p-2 mr-2 text-white hover:bg-gray-100 hover:text-gray-800 focus:bg-gray-100 focus:text-gray-800 rounded-full">
        <span class="sr-only">Menu</span>
          <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7" />
        </svg>
      </button>
      <div class="relative w-full max-w-md sm:-ml-2">
        <input type="text" role="search" placeholder="Buscar..." 
        class="text-sm md:text-md h-8 py-2 pl-2 pr-4 w-full  focus:border-transparent placeholder-gray-400 focus:bg-gray-50 rounded-md focus:outline-none" />
      </div>
      <div class="flex flex-shrink-0 items-center ml-auto" >
        <button class="inline-flex items-center p-2 hover:text-purple-900 rounded-lg focus:outline-none">
          <span class="sr-only">Menu</span>
          <div class="hidden md:flex md:flex-col md:items-end md:leading-tight">
            <span class="text-sm font-semibold text-white">{{ user_name }}</span>
          </div>
          <span class="h-7 w-7 ml-2 sm:ml-3 mr-2 bg-gray-100 rounded-full overflow-hidden">
            <img :src="user_photo" alt="user profile photo" class="h-7 w-7 object-cover">
          </span>
          <svg aria-hidden="true" viewBox="0 0 20 20" fill="currentColor" class="hidden sm:block h-6 w-6 text-white">
            <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg> 
        </button>
        <div class="border-l pl-3 ml-3 space-x-1">
          <button class="relative p-2 text-gray-400 hover:text-gray-600 focus:bg-blue-900 focus:text-gray-600 rounded-full focus:outline-none"  @click="DrowdownActionNot">
            <span class="sr-only">Notificaciones</span>
            <span class="absolute top-0 right-0 h-2 w-2 mt-1 mr-2 bg-green-400 rounded-full"></span>
            <span class="absolute top-0 right-0 h-2 w-2 mt-1 mr-2 bg-green-400 rounded-full animate-ping"></span>
            <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-5 w-5 text-white">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
            </svg>
          </button>

          <div class="fixed right-0 z-20 mt-2 md:mt-1 px-3 overflow-hidden bg-white shadow-2xl w-100 h-screen block md:rounded-t-md" :class="DrowdownAction">
            <div class="py-4 h-4/6">

              <header class="flex items-center justify-between">
         <h2 class="text-sm leading-6 font-medium text-black">Notificaciones</h2>
         <div class="hover:bg-light-blue-200 hover:text-light-blue-800 group flex items-center rounded-md bg-light-blue-100 text-light-blue-600 text-sm font-medium py-2 cursor-pointer">
            <a @click="DrowdownActionNot">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" width="20" height="20"  class="group-hover:text-light-blue-600 text-light-blue-500 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>  
            </a>        
         </div>
      </header>

                <a href="#" class="flex items-center px-4 py-3 -mx-2 transition-colors duration-200 transform border-b hover:bg-gray-100 dark:hover:bg-gray-700 dark:border-gray-700">
                    <img class="object-cover w-8 h-8 mx-1 rounded-full" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80" alt="avatar">
                    <p class="mx-2 text-sm text-gray-600 dark:text-white">
                        <span class="font-bold" href="#">Sara Salah</span> replied on the <span class="font-bold text-blue-500" href="#">Upload Image</span> artical . 2m
                    </p>
                </a>
                <a href="#" class="flex items-center px-4 py-3 -mx-2 transition-colors duration-200 transform border-b hover:bg-gray-100 dark:hover:bg-gray-700 dark:border-gray-700">
                    <img class="object-cover w-8 h-8 mx-1 rounded-full" src="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80" alt="avatar">
                    <p class="mx-2 text-sm text-gray-600 dark:text-white">
                        <span class="font-bold" href="#">Slick Net</span> start following you . 45m
                    </p>
                </a>
                <a href="#" class="flex items-center px-4 py-3 -mx-2 transition-colors duration-200 transform border-b hover:bg-gray-100 dark:hover:bg-gray-700 dark:border-gray-700">
                    <img class="object-cover w-8 h-8 mx-1 rounded-full" src="https://images.unsplash.com/photo-1450297350677-623de575f31c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80" alt="avatar">
                    <p class="mx-2 text-sm text-gray-600 dark:text-white">
                        <span class="font-bold" href="#">Jane Doe</span> Like Your reply on <span class="font-bold text-blue-500" href="#">Test with TDD</span> artical . 1h
                    </p>
                </a>
                <a href="#" class="flex items-center px-4 py-3 -mx-2 transition-colors duration-200 transform hover:bg-gray-100 dark:hover:bg-gray-700">
                    <img class="object-cover w-8 h-8 mx-1 rounded-full" src="https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=398&q=80" alt="avatar">
                    <p class="mx-2 text-sm text-gray-600 dark:text-white">
                        <span class="font-bold" href="#">Abigail Bennett</span> start following you . 3h
                    </p>
                </a>

                 <div class="mt-5">
              <a href="#" class="block py-2 font-bold text-center text-white bg-blue-900 hover:underline rounded-md">Ver todas las notificaciones</a>

            </div>
            </div>
           
            
        </div>


          <button @click="CloseSessionWitchEmail" class="relative p-2 text-gray-400 hover:text-gray-600 focus:bg-blue-900 focus:text-gray-600 rounded-full focus:outline-none">
            <span class="sr-only">Salir</span>
            <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-5 w-5 text-white">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
          </svg>
          </button>
        </div>
      </div>
    </header>

    <router-view class="px-3 pt-20 md:max-w-full lg:max-w-screen-xl sm:px-3 md:px-3 lg:px-8 mb-24" v-show="DrowdownAction === 'hidden'"/>

    <section class="px-3 pt-5 md:max-w-full lg:max-w-screen-xl sm:px-3 md:px-3 lg:px-8 mb-24" v-show="DrowdownAction === 'hidden'">
      <h1 class="text-lg font-bold leading-6 text-gray-500 dark:text-gray-100 text-center my-5">Servicio Nacional de Aprendizaje - SENA</h1>
      <p class=" mb-10 text-base font-medium text-center text-gray-500">
        Centro de Desarrollo Agroempresarial y Turístico del Huila - Grupo de Investigación NOVA.
        <a href="http://grupodeinvestigacionnova.com/" target="new" class="inline-flex items-center justify-center text-blue-900 hover:text-blue-900">
          Ver más sobre nosotros
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="inline w-3 h-3 ml-1">
            <path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </a>
      </p>
      <!-- <div class="grid grid-cols-2 gap-10 text-center lg:grid-cols-4 ">
        <div class="flex items-center justify-center">
          <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Sena_Colombia_logo.svg/100px-Sena_Colombia_logo.svg.png" alt="Todoist Logo" class="block object-contain h-12" />
        </div>
        <div class="flex items-center justify-center">
          <img src="https://sennovasenacartago.files.wordpress.com/2016/12/logo_sennova.png?w=600" alt="Slack Logo" class="block object-contain h-12" />
        </div>
        <div class="flex items-center justify-center">
          <img src="http://grupodeinvestigacionnova.com/assets/images/logo-t.png" alt="Typeform Logo" class="block object-contain h-12" />
        </div>
        <div class="flex items-center justify-center">
          <img src="/img/logo.362066b6.png" alt="Algolia Logo" class="block object-contain h-12" />
        </div>
      </div> -->
    </section>

    
  </div>
</body>

</template>

<script>

import firebase from 'firebase/app';
import 'firebase/auth';
import axios from 'axios'
import API_ROUTER from './services/SERVER_API'

  
  export default {
    data(){
      return{
        name: 'app',
        DrowdownAction:'hidden',
        auth: firebase.auth(),
        user_photo: API_ROUTER.API_FILE_SYSTEMS + 'avatars/default.png',
        user_code: false,
        user_state: false,
        user_name: '...',
        user_email: '...',
        logged: 0,
      }
    },
    beforeMount: function () {
      this.VerifySsesionWitchEmail()
    },
    mounted: function(){
   
    },
    methods: {
      DrowdownActionNot(){

            this.DrowdownAction = this.DrowdownAction === 'hidden' ? 'block' : 'hidden'

         },
      VerifySsesionWitchEmail :function(){
         axios.get(API_ROUTER.API + "/php7/control/user_session.php").then((res) => {
          if(res.data.user_state === false){
            this.CloseDataSesion(res.data.path)            
          }
          this.AsignedDataSesion(res.data.user_state, res.data.user_code, res.data.user_name)
          }).catch(() => {               
            alert('Error de conexión')
        })
      },
      CloseSessionWitchEmail :function(){
         axios.get(API_ROUTER.API + "/php7/control/user_close.php").then((res) => {         
          this.CloseDataSesion(res.data.path)
          }).catch(() => {               
            alert('Error de conexión')
        })
      },

      StartSsessionWitchGoogleGmail() {
        const provider = new firebase.auth.GoogleAuthProvider();
        firebase.auth().signInWithPopup(provider)
        .then(function(result) {
          console.log(result);
        })
        .catch(function(error){
          const errorCode = error.code;
          const errorMessage = error.message;
          const email = error.email;
          const credential = error.credential;
          console.log(errorCode, errorMessage, email, credential);
        })
      },
      VerifySessionWitchGoogleGmail: function(){
        firebase.auth().onAuthStateChanged(user => {
          if (user) {
            this.DataUserSigin = JSON.stringify(user)
            this.DataUserSigin = JSON.parse(this.DataUserSigin);
            this.user_photo = this.DataUserSigin['photoURL']
            this.user_name = this.DataUserSigin['displayName']
            this.user_email = this.DataUserSigin['email']
            this.logged = 1
          }
          else {
            this.logged = 0
          }

          
        })  
      },
      CloseSessionWitchGoogleGmail(){ 
        firebase.auth().signOut()
        .then(function(result) {
          // window.location.href=API_GESTOR.LOGUIN 
          console.log(result);
        })
        .catch(function(error) {
          console.log(error);          
        });
      },
      AsignedDataSesion:function(state, code, name){
        this.user_state = state
        this.user_code = code
        this.user_name = name
      },
      CloseDataSesion:function(path){
        this.user_state = false
        this.user_code = '...'
        this.user_name = '...'
        window.location.href = path
      }
    }
  }
</script>
