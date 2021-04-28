import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'


import ServiciosMenuPrincipal from '../views/Servicios/ServiciosMenuPrincipal'
import ServiciosHome from '../views/Servicios/ServiciosHome'

// Maps

import MapsHome from '../views/Maps/MapsHome'
import MapsCreate from '../views/Maps/MapsCreate'

// Proyecto Nuevo

import ProyectoNuevo from '../views/Proyectos/ProyectoNuevo'
import ProyectosInicio from '../views/Proyectos/ProyectosInicio'

// Proyecto detalles

import ProyectoDetalles from '../views/Proyectos/ProyectosDetalles/ProyectoDetalles'
import ProyectoDetallesHeader from '../views/Proyectos/ProyectoDetallesHeader'
import ProyectoIntegrantes from '../views/Proyectos/ProyectosDetalles/ProyectoIntegrantes'

// Listar formularios

import MisFormularios from '../views/Formularios/FormularioListas/MisFormularios'

// Formulario nuevo

import FormularioNuevoHeader from '../views/Formularios/FormularioNuevo/FormularioNuevoHeader'
import FromularioNuevo from '../views/Formularios/FormularioNuevo/FromularioNuevo'
import FromularioEditor from '../views/Formularios/FormularioNuevo/FromularioEditor'
import FromularioCompartir from '../views/Formularios/FromularioCompartir'

// Formulario detalles

import FormularioDetallesHeader from '../views/Formularios/FormularioDetalles/FormularioDetallesHeader'
import FormularioDetalles from '../views/Formularios/FormularioDetalles/FormularioDetalles'
import FormularioDatos from '../views/Formularios/FormularioDetalles/FormularioDatos'

// Objetos investigación

import MisObjetosInvestigacion from '../views/ObjetosInvestigacion/ListaObjetos/MisObjetosInvestigacion'

// Nuevos objetos de investigación

import ObjetoNuevoHeader from '../views/ObjetosInvestigacion/NuevoObjeto/ObjetoNuevoHeader'
import HeaderObjetoNuevo from '../views/ObjetosInvestigacion/NuevoObjeto/HeaderObjetoNuevo'
import ObjetoConstructor from '../views/ObjetosInvestigacion/NuevoObjeto/ObjetoConstructor'

// Objeto detalles

import ObjetoDetallesHeader from '../views/ObjetosInvestigacion/ObjetoDetalles/ObjetoDetallesHeader'
import ObjetoDetalles from '../views/ObjetosInvestigacion/ObjetoDetalles/ObjetoDetalles'
import ObjetoPredeterminados from '../views/ObjetosInvestigacion/ObjetoDetalles/ObjetoPredeterminados'


// Cuenta

import MyCuentaHeader from '../views/MyCuenta/MyCuentaHeader'
import Cuenta from '../views/MyCuenta/Cuenta'
import Personalizacion from '../views/MyCuenta/Personalizacion'
import Seguridad from '../views/MyCuenta/Seguridad'



const routes = [
  { path: '/', redirect: 'inicio', component: Home  },
  { path: '/inicio',  name: 'Home', component: Home  },

  { path: '/herraminetas', redirect: '/herraminetas/inicio/', name: 'ServiciosMenuPrincipal', component: ServiciosMenuPrincipal,
    children:
      [
        { path: 'inicio', name: 'ServiciosHome', component: ServiciosHome }, 
      ] 
  },  

  { path: '/maps', name: 'MapsHome', component: MapsHome  },
  { path: '/maps/crear', name: 'MapsCreate', component: MapsCreate  },
  
  { path: '/proyectos', name: 'ProyectosInicio', component: ProyectosInicio  },

  { path: '/proyecto/ver', name: 'ProyectoDetallesHeader', redirect:'/proyecto/ver/detalles', component: ProyectoDetallesHeader, 
    children:
      [    
        { path: 'detalles/:id_project', name:'ProyectoDetalles', component: ProyectoDetalles }, 
        { path: 'objetos-de-investigacion/:id_project', name: 'MisObjetosInvestigacion', component: MisObjetosInvestigacion},
        { path: 'integrantes/:id_project', name: 'ProyectoIntegrantes', component: ProyectoIntegrantes},
      ] 
  },
  

  { path: '/proyecto/formulario', name: 'FormularioNuevoHeader', component: FormularioNuevoHeader,
    children:
      [
        { path: 'constructor/:id_project', name: 'FromularioNuevo', component: FromularioNuevo },              
        { path: 'compartir/:id_project', name: 'FromularioCompartir', component: FromularioCompartir },
      ]  
  },


  { path: '/proyecto/objeto_nuevo', name: 'ObjetoNuevoHeader', component: ObjetoNuevoHeader,
  children:
    [
      { path: 'header/:id_object', name: 'HeaderObjetoNuevo', component: HeaderObjetoNuevo },  
      { path: 'constructor-objeto/:id_object', name: 'ObjetoConstructor', component: ObjetoConstructor },  
    ]  
},

{ path: '/proyecto/objeto/detalle', name: 'ObjetoDetallesHeader', component: ObjetoDetallesHeader,
children:
  [
    { path: 'inicio/:id', name: 'ObjetoDetalles', component: ObjetoDetalles },  
    { path: 'objetos-predeterminados/:id', name: 'ObjetoPredeterminados', component: ObjetoPredeterminados },  
    { path: 'mis-formularios/:id_project', name: 'MisFormularios', component: MisFormularios},
  ]   
},



  { path: '/formulario/ver/', name: 'FormularioDetallesHeader', component: FormularioDetallesHeader,
    children:
      [
        { path: 'detalles/:id/:type', name: 'FormularioDetalles', component: FormularioDetalles },              
        { path: 'datos/:id/:type', name: 'FormularioDatos', component: FormularioDatos },
      ]  
  },

  

{ path: '/proyecto/formulario/editor/:id/:type', name: 'FromularioEditor', component: FromularioEditor },


{ path: '/cuenta/', name: 'MyCuentaHeader', redirect:'/cuenta/i', component: MyCuentaHeader,
children:
  [
    { path: 'i/', name: 'Cuenta', component: Cuenta },              
    { path: 'personalizacion/', name: 'Personalizacion', component: Personalizacion },
    { path: 'seguridad/', name: 'Seguridad', component: Seguridad },
  ]  
},

  { path: '/proyectos/nuevo-proyecto', name: 'ProyectoNuevo', component: ProyectoNuevo},
 
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})



export default router
