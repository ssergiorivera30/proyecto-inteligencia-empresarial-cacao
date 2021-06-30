import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'

// CONSTRUCTOR DE ENTRADAS PERSONALIZADAS

import BuildFirsStep from '../views/BuildService/BuildFirsStep'
import BuildSecondStep from '../views/BuildService/BuildSecondStep'

// GRUPOS

import GrupoDetallesHeader from './../views/Groups/GrupoDetallesHeader'
import GrupoResumen from './../views/Groups/GrupoResumen'
import GrupoProyectos from './../views/Groups/GrupoProyectos'

// PROYECTOS

import ProyectosDetallesHeader from './../views/Projects/ProyectosDetallesHeader'
import ProyectoResumen from './../views/Projects/ProyectoResumen'
import ProyectoEntidades from './../views/Projects/ProyectoEntidades'

// ENTIDADES

import CPDetallesHeader from './../views/ComponentProject/CPDetallesHeader'
import CPDetalles from './../views/ComponentProject/CPDetalles'
import CPRegistrar from './../views/ComponentProject/CPRegistrar'
import CPData from './../views/ComponentProject/CPData'
import CPExplotacion from './../views/ComponentProject/CPExplotacion'
import CPRecolection from './../views/ComponentProject/CPRecolection'

// RECORDS


import RecordsHeader from './../views/Records/RecordsHeader'
import RecordsDetalles from './../views/Records/RecordsDetalles'


import TeamResumen from './../views/Team/TeamResumen'


import ServiciosInfoBasicDetalles from './../views/Servicios/ServiciosInfoBasicDetalles'
import ServiciosMenuPrincipal from '../views/Servicios/ServiciosMenuPrincipal'
import ServiciosHome from '../views/Servicios/ServiciosHome'

// Maps

import MapsHome from '../views/Maps/MapsHome'
import MapsCreate from '../views/Maps/MapsCreate'

// Cuenta

import MyCuentaHeader from '../views/Account/MyCuentaHeader'
import Cuenta from '../views/Account/Cuenta'
import Personalizacion from '../views/Account/Personalizacion'
import Seguridad from '../views/Account/Seguridad'

const routes = [

    { path: '/', redirect: 'inicio', component: Home },
    { path: '/inicio', name: 'Home', component: Home },
    {
        path: '/herraminetas',
        redirect: '/herraminetas/inicio/',
        name: 'ServiciosMenuPrincipal',
        component: ServiciosMenuPrincipal,
        children: [
            { path: 'inicio', name: 'ServiciosHome', component: ServiciosHome },
        ]
    },
    { path: '/maps', name: 'MapsHome', component: MapsHome },
    { path: '/maps/crear', name: 'MapsCreate', component: MapsCreate },
    {
        path: '/cuenta/ver',
        name: 'MyCuentaHeader',
        redirect: '/cuenta/ver/info',
        component: MyCuentaHeader,
        children: [
            { path: 'info/', name: 'Cuenta', component: Cuenta },
            { path: 'personalizacion/', name: 'Personalizacion', component: Personalizacion },
            { path: 'seguridad/', name: 'Seguridad', component: Seguridad },
        ]
    },

    // ******************************************************************************************** //
    // ******************************************************************************************** //

    { path: '/create-service/:type_service', name: 'BuildFirsStep', component: BuildFirsStep },
    { path: '/constructor-service/:id_service', name: 'BuildSecondStep', component: BuildSecondStep },

    {
        path: '/grupo/ver',
        name: 'GrupoDetallesHeader',
        component: GrupoDetallesHeader,
        children: [
            { path: 'detalle/:id_service', name: 'GrupoResumen', component: GrupoResumen },
            { path: 'proyectos/:id_service', name: 'GrupoProyectos', component: GrupoProyectos },
            { path: 'equipo/:id_service', component: TeamResumen },
        ]
    },

    {
        path: '/proyecto/ver',
        name: 'ProyectosDetallesHeader',
        redirect: '/proyecto/ver/detalle',
        component: ProyectosDetallesHeader,
        children: [
            { path: 'detalle/:id_service', name: 'ProyectoResumen', component: ProyectoResumen },
            { path: 'componentes/:id_service', name: 'ProyectoEntidades', component: ProyectoEntidades },
            { path: 'equipo/:id_service', component: TeamResumen },
        ]
    },

    {
        path: '/componente',
        name: 'CPDetallesHeader',
        redirect: '/componente/registros',
        component: CPDetallesHeader,
        children: [
            { path: 'detalles/:id_service', name: 'CPDetalles', component: CPDetalles },
            { path: 'registrar/:id_service', name: 'CPRegistrar', component: CPRegistrar },
            { path: 'data/:id_service', name: 'CPData', component: CPData },
            { path: 'explotacion/:id_service', name: 'CPExplotacion', component: CPExplotacion },
            { path: 'herramientas-de-recoleccion/:id_service', name: 'CPRecolection', component: CPRecolection },


            { path: 'equipo/:id_service', component: TeamResumen },
        ]
    },


    {
        path: '/registro',
        name: 'RecordsHeader',
        redirect: '/registro/',
        component: RecordsHeader,
        children: [
            { path: 'detalles/:id_record', name: 'RecordsDetalles', component: RecordsDetalles },
            { path: 'equipo/:id_record', component: TeamResumen },
        ]
    },







    { path: '/service/info/basic/:id_service', name: 'ServiciosInfoBasicDetalles', component: ServiciosInfoBasicDetalles },

]

const router = createRouter({
    history: createWebHashHistory(),
    routes
})

export default router