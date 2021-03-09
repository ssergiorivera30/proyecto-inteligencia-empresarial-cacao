import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'
import ProyectosInicio from '../views/Proyectos/ProyectosInicio'
import ProyectosHome from '../views/Proyectos/ProyectosHome'
import ProyectoDetalles from '../views/Proyectos/ProyectosDetalles/ProyectoDetalles'
import ProyectoIntegrantes from '../views/Proyectos/ProyectosDetalles/ProyectoIntegrantes'


import Formularios from '../views/Formularios/Formularios'



import FormularioNuevo from '../views/Formularios/FormularioNuevo'

import FromularioCreador from '../views/Formularios/FromularioCreador'
import FromularioCompartir from '../views/Formularios/FromularioCompartir'
import FromularioVistaPrevia from '../views/Formularios/FromularioVistaPrevia'




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



  { path: '/proyecto/formularios/nuevo', name: 'FormularioNuevo', component: FormularioNuevo,
    children:
      [
        { path: 'creador', name: 'FromularioCreador', component: FromularioCreador },
        { path: 'compartir', name: 'FromularioCompartir', component: FromularioCompartir },
        { path: 'ver', name: 'FromularioVistaPrevia', component: FromularioVistaPrevia },
      ]  
},



  { path: '/proyectos/nuevo-proyecto', name: 'ProyectoNuevo', component: ProyectoNuevo},
  { path: '/hola', name: 'Hola', component: () => import('../views/Hola.vue') },
  { path: '/ver', name: 'Ver', component: () => import('../views/Ver.vue') }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})



export default router
