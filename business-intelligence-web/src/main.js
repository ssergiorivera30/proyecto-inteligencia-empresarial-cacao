import { createApp } from 'vue'
import App from './App.vue'
import '@/assets/styles/app.css'
import './registerServiceWorker'
import VueApexCharts from "vue3-apexcharts";
import router from './router'
import store from './store'

import firebase from 'firebase/app';


var firebaseConfig = {
    apiKey: "AIzaSyBytAdD5bIBtaaqeGZ3o1C_DJwoOzQK2w4",
    authDomain: "app-cacao-sena.firebaseapp.com",
    projectId: "app-cacao-sena",
    storageBucket: "app-cacao-sena.appspot.com",
    messagingSenderId: "752324770547",
    appId: "1:752324770547:web:e2700be43296c5a30a5586",
    measurementId: "G-PZ6D9CGYDT"
};

firebase.initializeApp(firebaseConfig);

createApp(App)
    .use(store)
    .use(router)
    .use(VueApexCharts)
    .mount('#app')