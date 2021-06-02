<style>
  @import "~noty/lib/noty.css";
  @import "~noty/lib/themes/sunset.css";
  @import "./assets/boxicons-2.0.7/css/boxicons.min.css";

  @media print {
    /* Aquí irían tus reglas CSS específicas para imprimir */
    .print-none{
      display: none !important;
    }
}
</style>

<template>


    
    <div class="bg-gray-50 min-h-screen flex-grow text-gray-800 ">

      <NavAside />



      <!-- bg-gradient-to-r from-blue-700 via-indigo-600 to-purple-600 -->
      <header class="print-none flex sticky top-0 z-10 items-center h-14 px-1 sm:pr-10 bg-principal-color-ui shadow-sm w-full">

        <router-link to="/" class="hidden sm:hidden md:flex pt-1 justify-center h-10 w-14">
          <img src="./assets/logo.png" class="h-8 w-8" alt="">
        </router-link>

        <button
          class="block sm:hidden relative flex-shrink-0 p-2 mr-2 text-white hover:bg-gray-100 hover:text-white focus:text-white rounded-full">
          <span class="sr-only">Menu</span>
          <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7" />
          </svg>
        </button>
        <div class="hidden md:flex relative w-full max-w-md sm:ml-2">
          <input type="text" role="search" placeholder="Buscar..."
            class="text-sm md:text-md h-8 py-2 pl-2 pr-4 w-full text-white placeholder-gray-600 bg-gray-100 focus:bg-white rounded-md focus:outline-none" />
        </div>
        <div class="print-none flex flex-shrink-0 items-center ml-auto mr-2">
          <button class="inline-flex items-center p-2 hover:text-principal-color-ui rounded-lg focus:outline-none">
            <span class="sr-only">Menu</span>
            <div class="hidden md:flex md:flex-col md:items-end md:leading-tight">
              <span class="text-sm font-semibold text-white">{{ user_name }}</span>
            </div>
            <span class="h-7 w-7 ml-2 sm:ml-3 mr-2 bg-gray-100 rounded-full overflow-hidden">
              <img :src="user_photo" alt="user profile photo" class="h-7 w-7 object-cover">
            </span>
            <svg aria-hidden="true" viewBox="0 0 20 20" fill="currentColor" class="hidden sm:block h-6 w-6 text-white">
              <path fill-rule="evenodd"
                d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                clip-rule="evenodd" />
            </svg>
          </button>
          <div class="border-l pl-3 ml-3 space-x-1">

            <NavNotificaciones />

            <button @click="ClickCenterConter"
              class=" relative p-2 text-gray-400 hover:text-gray-600 focus:text-gray-600 rounded-full focus:outline-none">
              <span class="sr-only">Screen</span>
              <i v-if="CenterContent == ''" class="text-xl bx bx-exit-fullscreen text-white"></i>
              <i v-else class="text-xl bx bx-fullscreen text-white"></i>
            </button>

            <button @click="CloseSessionWitchEmail"
              class="relative p-2 text-gray-400 hover:text-gray-600 focus:text-gray-600 rounded-full focus:outline-none">
              <span class="sr-only">Salir</span>
              <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-5 w-5 text-white">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
              </svg>
            </button>
          </div>
        </div>
      </header>

      <router-view :class=" CenterContent + ' ml-0  sm:ml-12 md:ml-12 pt-2 px-3 sm:px-3 md:px-3 lg:px-8 pb-24 md:max-w-full lg:max-w-screen-xl xl:max-w-screen-xl 2xl:max-w-screen-2xl'" />

     


    </div>
 

</template>

<script>

  import firebase from 'firebase/app';
  import 'firebase/auth';
  import axios from 'axios'
  import API_ROUTER from './services/SERVER_API'
  import NavNotificaciones from './components/HeaderApp/NavNotificaciones.vue'
  import NavAside from './components/HeaderApp/NavAside.vue'

  const ContainerCenter = "lg:m-auto"


  export default {
    components: {
      NavNotificaciones,
      NavAside
    },
    data() {
      return {
        name: 'app',
        CenterContent: localStorage.getItem("classContainer") == null ? ContainerCenter : localStorage.getItem("classContainer"),
        DrowdownAction: 'hidden',
        auth: firebase.auth(),
        user_photo: API_ROUTER.API_PUBLIC + 'avatars/default.png',
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
    mounted: function () {
    },
    methods: {

      ClickCenterConter: function(){
        this.CenterContent == ContainerCenter ? localStorage.setItem("classContainer", 'lg:ml-7 ') : localStorage.setItem("classContainer", ContainerCenter)
        this.CenterContent = localStorage.getItem("classContainer")
      },
      VerifySsesionWitchEmail: function () {
        axios.get(API_ROUTER.API + "/php7/control/user_session.php").then((res) => {
          if (res.data.user_state === false) {
            this.CloseDataSesion(res.data.path)
          }
          this.AsignedDataSesion(res.data.user_state, res.data.user_code, res.data.user_name)
        }).catch(() => {
          alert('Error de conexión')
        })
      },
      CloseSessionWitchEmail: function () {
        axios.get(API_ROUTER.API + "/php7/control/user_close.php").then((res) => {
          this.CloseDataSesion(res.data.path)
        }).catch(() => {
          alert('Error de conexión')
        })
      },

      StartSsessionWitchGoogleGmail() {
        const provider = new firebase.auth.GoogleAuthProvider();
        firebase.auth().signInWithPopup(provider)
          .then(function (result) {
            console.log(result);
          })
          .catch(function (error) {
            const errorCode = error.code;
            const errorMessage = error.message;
            const email = error.email;
            const credential = error.credential;
            console.log(errorCode, errorMessage, email, credential);
          })
      },
      VerifySessionWitchGoogleGmail: function () {
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
      CloseSessionWitchGoogleGmail() {
        firebase.auth().signOut()
          .then(function (result) {
            // window.location.href=API_GESTOR.LOGUIN 
            console.log(result);
          })
          .catch(function (error) {
            console.log(error);
          });
      },
      AsignedDataSesion: function (state, code, name) {
        this.user_state = state
        this.user_code = code
        this.user_name = name
      },
      CloseDataSesion: function (path) {
        this.user_state = false
        this.user_code = '...'
        this.user_name = '...'
        window.location.href = path
      }
    }
  }
</script>