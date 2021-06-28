import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'

// CONSTRUCTOR DE ENTRADAS PERSONALIZADAS

import BuildFirsStep from '../views/BuildService/BuildFirsStep'
import BuildSecondStep from '../views/BuildService/BuildSecondStep'

// GRUPOS

import GrupoDetallesHeader from './../views/Grupos/GrupoDetallesHeader'
import GrupoResumen from './../views/Grupos/GrupoResumen'
import GrupoProyectos from './../views/Grupos/GrupoProyectos'

// PROYECTOS

import ProyectosDetallesHeader from './../views/Projects/ProyectosDetallesHeader'
import ProyectoResumen from './../views/Projects/ProyectoResumen'
import ProyectoEntidades from './../views/Projects/ProyectoEntidades'

// ENTIDADES

import EntityDetallesHeader from './../views/Entitys/EntityDetallesHeader'
import EntityDetalles from './../views/Entitys/EntityDetalles'
import EntytiRegistrar from './../views/Entitys/EntytiRegistrar'
import EntityData from './../views/Entitys/EntityData'
import EntityExplotacion from './../views/Entitys/EntityExplotacion'

import TeamResumen from './../views/Team/TeamResumen'
import ServiciosInfoBasicDetalles from './../views/Servicios/ServiciosInfoBasicDetalles'

import ServiciosMenuPrincipal from '../views/Servicios/ServiciosMenuPrincipal'
import ServiciosHome from '../views/Servicios/ServiciosHome'

// Maps

import MapsHome from '../views/Maps/MapsHome'
import MapsCreate from '../views/Maps/MapsCreate'

// Cuenta

import MyCuentaHeader from '../views/MyCuenta/MyCuentaHeader'
import Cuenta from '../views/MyCuenta/Cuenta'
import Personalizacion from '../views/MyCuenta/Personalizacion'
import Seguridad from '../views/MyCuenta/Seguridad'

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
            { path: 'detalle/:id_group', name: 'GrupoResumen', component: GrupoResumen },
            { path: 'proyectos/:id_group', name: 'GrupoProyectos', component: GrupoProyectos },
            { path: 'equipo/:id_service', component: TeamResumen },
        ]
    },

    {
        path: '/proyecto/ver',
        name: 'ProyectosDetallesHeader',
        redirect: '/proyecto/ver/detalle',
        component: ProyectosDetallesHeader,
        children: [
            { path: 'detalle/:id_project', name: 'ProyectoResumen', component: ProyectoResumen },
            { path: 'entidades/:id_project', name: 'ProyectoEntidades', component: ProyectoEntidades },
            { path: 'equipo/:id_service', component: TeamResumen },
        ]
    },

    {
        path: '/entidad',
        name: 'EntityDetallesHeader',
        redirect: '/entidad/registros',
        component: EntityDetallesHeader,
        children: [
            { path: 'detalles/:id_entity', name: 'EntityDetalles', component: EntityDetalles },
            { path: 'registrar/:id_entity', name: 'EntytiRegistrar', component: EntytiRegistrar },
            { path: 'data/:id_entity', name: 'EntityData', component: EntityData },
            { path: 'explotacion/:id_entity', name: 'EntityExplotacion', component: EntityExplotacion },
            { path: 'equipo/:id_service', component: TeamResumen },
        ]
    },


    { path: '/service/info/basic/:id_service', name: 'ServiciosInfoBasicDetalles', component: ServiciosInfoBasicDetalles },

]

const router = createRouter({
    history: createWebHashHistory(),
    routes
})

export default router