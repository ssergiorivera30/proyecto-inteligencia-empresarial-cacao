<template>
  <div class="">
   
      <div class="h-48 w-full bg-cover bg-gray-200 rounded-md" :style="'background-image:url('+imagen_portada_avatar+')'"></div>
      <div class="px-6 md:px-32 flex justify-between lg:flex-row flex-col">
        <div class="flex lg:flex-row flex-col ">
          <div class="w-36 h-36 bg-cover rounded-full bg-center absolute transform -translate-y-1/2 ring-4 ring-white"
            :style="'background-image:url('+avatar+')'">
          </div>
          <p class="lg:ml-36 mt-16 lg:mt-0 pl-4 text-3xl font-semibold py-5">
            {{ user_name }}
          </p>
        </div>
        <div class="py-5 lg:space-x-3 space-y-3 lg:space-y-0">

          <a class="lg:w-auto inline-flex w-full font-semibold tracking-wide justify-center items-center text-gray-600 space-x-1.5 border border-gray-400 focus:ring-1 focus:ring-gray-300 focus:ring-offset-2 hover:bg-gray-100 focus:outline-none px-4 py-2 text-sm rounded-lg">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 fill-current" viewBox="0 0 24 24">
                <path
                  d="M12 12.713l-11.985-9.713h23.97l-11.985 9.713zm0 2.574l-12-9.725v15.438h24v-15.438l-12 9.725z" />
              </svg>
            </span>
            <span>
              Enviar e-mail
            </span>
          </a>

          <a class="lg:w-auto inline-flex w-full font-semibold tracking-wide justify-center items-center text-gray-600 space-x-1.5 border border-gray-400 focus:ring-1 focus:ring-gray-300 focus:ring-offset-2 hover:bg-gray-100 focus:outline-none px-4 py-2 text-sm rounded-lg">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 fill-current" viewBox="0 0 24 24">
                <path
                  d="M18.48 22.926l-1.193.658c-6.979 3.621-19.082-17.494-12.279-21.484l1.145-.637 3.714 6.467-1.139.632c-2.067 1.245 2.76 9.707 4.879 8.545l1.162-.642 3.711 6.461zm-9.808-22.926l-1.68.975 3.714 6.466 1.681-.975-3.715-6.466zm8.613 14.997l-1.68.975 3.714 6.467 1.681-.975-3.715-6.467z" />
              </svg>
            </span>
            <span>
              Llamar
            </span>
          </a>

        </div>
      </div>

  </div>

 
      <NavBarSecondary 
        :RoutesNavs="RoutesNavs" 
        :GoBack="GoBack" 
        :GoBackTitle="GoBackTitle" 
        :TitleHeader="TitleHeader" 
        :IconModulo="IconModulo" 
        :SubTitleHeader="SubTitleHeader" />
        <router-view />


</template>

<script>

  import API_ROUTER from './../../services/SERVER_API'
  import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'
  import axios from 'axios'


  export default {
    name: 'MyCuentaHeader',
    components: {
      NavBarSecondary
    },
    data() {

      return {   
            
        user_state: '',
        user_code: '',
        user_name: '',

        avatar: API_ROUTER.API_PUBLIC + 'avatars/default.png',
        imagen_portada_avatar: API_ROUTER.API_PUBLIC + 'portada_avatar/hand-3044387_1280.jpg',                

        TitleHeader: 'Información básica',
        IconModulo: 'avatars/default.png',
        SubTitleHeader: 'Cuenta',
        GoBack: '/inicio',
        GoBackTitle: 'Ir al inicio',
        RoutesNavs: [
          { Linkroute: '/cuenta/ver/info', nameRoute: 'Cuenta' },          
          { Linkroute: '/cuenta/ver/seguridad/', nameRoute: 'Seguridad' },
          { Linkroute: '/cuenta/ver/personalizacion/', nameRoute: 'Personalización' },
        ]
      }
    },
    mounted: function () {

      this.VerifySsesionWitchEmail()

    },
    methods: {
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