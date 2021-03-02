import { createApp } from 'vue'
import App from './App.vue'
import '@/assets/styles/app.css'
// import './registerServiceWorker'
import router from './router'
import store from './store'

import firebase from 'firebase/app';


var firebaseConfig = {
    apiKey: "AIzaSyCBa2GkWSjY6BJHPWwl_Br5MxjsZdze208",
    authDomain: "occicafe-la-plata-2021.firebaseapp.com",
    projectId: "occicafe-la-plata-2021",
    storageBucket: "occicafe-la-plata-2021.appspot.com",
    messagingSenderId: "632942145297",
    appId: "1:632942145297:web:efb393a4f3a62a67d3e6b0",
    measurementId: "G-R695LRN5GB"
  };

firebase.initializeApp(firebaseConfig);

createApp(App).use(store).use(router).mount('#app')
