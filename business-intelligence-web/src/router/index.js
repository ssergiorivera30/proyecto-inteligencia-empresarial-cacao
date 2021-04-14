import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'



import ServiciosMenuPrincipal from '../views/Servicios/ServiciosMenuPrincipal'
import ServiciosHome from '../views/Servicios/ServiciosHome'


import MapsHome from '../views/Maps/MapsHome'
import MapsCreate from '../views/Maps/MapsCreate'











import ProyectosInicio from '../views/Proyectos/ProyectosInicio'
import ProyectosHome from '../views/Proyectos/ProyectosHome'



import ProyectoDetalles from '../views/Proyectos/ProyectosDetalles/ProyectoDetalles'

import ProyectoDetallesHeader from '../views/Proyectos/ProyectoDetallesHeader'








import ProyectoIntegrantes from '../views/Proyectos/ProyectosDetalles/ProyectoIntegrantes'


import Formularios from '../views/Formularios/Formularios'



import FormularioNuevo from '../views/Formularios/FormularioNuevo'

import FromularioConstructor from '../views/Formularios/FromularioConstructor'
import FromularioEditor from '../views/Formularios/FromularioEditor'



import FromularioCompartir from '../views/Formularios/FromularioCompartir'
import FromularioVistaPrevia from '../views/Formularios/FromularioVistaPrevia'
import FormularioDetalles from '../views/FormularioDetalles/FormularioDetalles'
import FormularioDatos from '../views/FormularioDetalles/FormularioDatos'




import ProyectoNuevo from '../views/Proyectos/ProyectoNuevo'


const routes = [
  { path: '/', redirect: 'inicio', component: Home  },
  { path: '/inicio',  name: 'Home', component: Home  },

  { path: '/servicios', redirect: '/servicios/home', name: 'ServiciosMenuPrincipal', component: ServiciosMenuPrincipal,
    children:
      [
        { path: 'home', name: 'ServiciosHome', component: ServiciosHome }, 
      ] 
  },  


  { path: '/maps', name: 'MapsHome', component: MapsHome  },
  { path: '/maps/crear', name: 'MapsCreate', component: MapsCreate  },


  

  { path: '/proyectos', name: 'ProyectosInicio', component: ProyectosInicio  },

  { path: '/proyecto/ver', name: 'ProyectoDetallesHeader', redirect:'/proyecto/ver/detalles', component: ProyectoDetallesHeader, 
    children:
      [    
        { path: 'detalles/:id_project', name:'ProyectoDetalles', component: ProyectoDetalles },    
        { path: 'recolecion-de-datos/:id_project', name: 'Formularios', component: Formularios},
        { path: 'integrantes/:id_project', name: 'ProyectoIntegrantes', component: ProyectoIntegrantes},
      ] 
  },
  
  



  { path: '/proyecto/formulario', name: 'FormularioNuevo', component: FormularioNuevo,
    children:
      [
        { path: 'constructor', name: 'FromularioConstructor', component: FromularioConstructor },              
        { path: 'compartir', name: 'FromularioCompartir', component: FromularioCompartir },
        { path: 'ver', name: 'FromularioVistaPrevia', component: FromularioVistaPrevia },
      ]  
},

{ path: '/proyecto/formulario/editor/:id', name: 'FromularioEditor', component: FromularioEditor },
{ path: '/formulario/detalles/:id_formulario', name: 'FormularioDetalles', component: FormularioDetalles },
{ path: '/formulario/datos/:id_formulario', name: 'FormularioDatos', component: FormularioDatos },



  { path: '/proyectos/nuevo-proyecto', name: 'ProyectoNuevo', component: ProyectoNuevo},
  { path: '/hola', name: 'Hola', component: () => import('../views/Hola.vue') },
  { path: '/ver', name: 'Ver', component: () => import('../views/Ver.vue') }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})



export default router
