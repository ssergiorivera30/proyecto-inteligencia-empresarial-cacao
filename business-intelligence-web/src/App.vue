<style>
    @import "~noty/lib/noty.css";
    @import "~noty/lib/themes/sunset.css";
    @import "./assets/boxicons-2.0.7/css/boxicons.min.css";
    @media print{ .print-none{display: none !important; } }

   .my-white-space {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;   
}
</style>

<template>
    <div class="h-screen flex overflow-hidden bg-gray-50 text-gray-800">

        <NavAside />

        <div class="flex-1 flex-col relative z-0 overflow-y-auto">

            <NavHeader 
                v-if="this.$route.name != 'RecordsUpdate' 
                    && this.$route.name != 'BuildFirsStep' 
                    && this.$route.name != 'BuildSecondStep'"
                @StartContentCenterExec="StartContentCenter"
                :user_name="user_name"
                :user_photo="user_photo"/>

            <div :class="' '+ CenterContent +' '" class="md:mx-auto px-4 pt-4 pb-8">
                <router-view />
            </div>
            

        </div>
    </div>
</template>

<script>
    import firebase from 'firebase/app';
    import 'firebase/auth';
    import axios from 'axios'
    import API_ROUTER from './services/SERVER_API'
    import NavHeader from './components/HeaderApp/NavHeader.vue'
    import NavAside from './components/HeaderApp/NavAside.vue'

    const ContainerCenter = "md:max-w-7xl"

    export default {
        components: {
            NavHeader,
            NavAside
        },
        data() {
            return {
                name: 'app',
                CenterContent: localStorage.getItem("classContainer") == null ? ContainerCenter : localStorage.getItem("classContainer"),
                auth: firebase.auth(),
                user_photo: API_ROUTER.API_PUBLIC + 'avatars/1.jpg',
                user_code: false,
                user_state: false,
                user_name: '...',
                user_email: '...',
                logged: 0,

            }
        },
        beforeMount: function() {
            this.VerifySsesionWitchEmail()
        },
        mounted: function() {},
        methods: {
            StartContentCenter: function(ClassCenterValue) {
                this.CenterContent = ClassCenterValue
            },
            VerifySsesionWitchEmail: function() {
                axios.get(API_ROUTER.API_GENERAL + "control/user_session.php").then((res) => {
                    if (res.data.user_state === false) {
                        this.CloseDataSesion(res.data.path)
                    }
                    this.AsignedDataSesion(res.data.user_state, res.data.user_code, res.data.user_name)
                }).catch(() => {
                    alert('Error de conexión')
                })
            },
            CloseSessionWitchEmail: function() {
                axios.get(API_ROUTER.API_GENERAL + "control/user_close.php").then((res) => {
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
                    .catch(function(error) {
                        const errorCode = error.code;
                        const errorMessage = error.message;
                        const email = error.email;
                        const credential = error.credential;
                        console.log(errorCode, errorMessage, email, credential);
                    })
            },
            VerifySessionWitchGoogleGmail: function() {
                firebase.auth().onAuthStateChanged(user => {
                    if (user) {
                        this.DataUserSigin = JSON.stringify(user)
                        this.DataUserSigin = JSON.parse(this.DataUserSigin);
                        this.user_photo = this.DataUserSigin['photoURL']
                        this.user_name = this.DataUserSigin['displayName']
                        this.user_email = this.DataUserSigin['email']
                        this.logged = 1
                    } else {
                        this.logged = 0
                    }
                })
            },
            CloseSessionWitchGoogleGmail() {
                firebase.auth().signOut()
                    .then(function(result) {
                        // window.location.href=API_GESTOR.LOGUIN 
                        console.log(result);
                    })
                    .catch(function(error) {
                        console.log(error);
                    });
            },
            AsignedDataSesion: function(state, code, name) {
                this.user_state = state
                this.user_code = code
                this.user_name = name
            },
            CloseDataSesion: function(path) {
                this.user_state = false
                this.user_code = '...'
                this.user_name = '...'
                window.location.href = path
            }
        }
    }
</script>