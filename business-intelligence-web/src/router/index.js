import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'
import ProyectosInicio from '../views/Proyectos/ProyectosInicio'
import ProyectosHome from '../views/Proyectos/ProyectosHome'
import ProyectoDetalles from '../views/Proyectos/ProyectosDetalles/ProyectoDetalles'
import ProyectoIntegrantes from '../views/Proyectos/ProyectosDetalles/ProyectoIntegrantes'


import Formularios from '../views/Formularios/Formularios'



import FormularioNuevo from '../views/Formularios/FormularioNuevo'

import FromularioConstructor from '../views/Formularios/FromularioConstructor'
import FromularioEditor from '../views/Formularios/FromularioEditor'



import FromularioCompartir from '../views/Formularios/FromularioCompartir'
import FromularioVistaPrevia from '../views/Formularios/FromularioVistaPrevia'
import FormularioDetalles from '../views/FormularioDetalles/FormularioDetalles'



FormularioDetalles
import ProyectoNuevo from '../views/Proyectos/ProyectoNuevo'


const routes = [
  { path: '/',  name: 'Home', component: Home  },
  { path: '/proyectos', name: 'ProyectosInicio', component: ProyectosInicio  },

  { path: '/proyecto/detalles', name: 'ProyectoDetalles', component: ProyectoDetalles, 
    children:
      [
        { path: 'home', component: ProyectosHome },      
        { path: 'detalles', component: ProyectoDetalles },      
      ] 
  },
  { path: '/proyecto/formularios', name: 'Formularios', component: Formularios},
  { path: '/proyecto/integrantes', name: 'ProyectoIntegrantes', component: ProyectoIntegrantes},



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






  { path: '/proyectos/nuevo-proyecto', name: 'ProyectoNuevo', component: ProyectoNuevo},
  { path: '/hola', name: 'Hola', component: () => import('../views/Hola.vue') },
  { path: '/ver', name: 'Ver', component: () => import('../views/Ver.vue') }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})



export default router
