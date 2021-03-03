import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'
import ProyectosInicio from '../views/Proyectos/ProyectosInicio'
import ProyectosHome from '../views/Proyectos/ProyectosHome'
import ProyectoDetalles from '../views/Proyectos/ProyectosDetalles/ProyectoDetalles'
import ProyectoFormularios from '../views/Proyectos/ProyectosDetalles/ProyectoFormularios'
import ProyectoIntegrantes from '../views/Proyectos/ProyectosDetalles/ProyectoIntegrantes'
import ProyectoFormularioNuevo from '../views/Proyectos/ProyectosDetalles/ProyectoFormularioNuevo'
import FromularioNuevoCrear from '../views/Proyectos/ProyectosDetalles/FromularioNuevoCrear'


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
  { path: '/proyecto/formularios', name: 'ProyectoFormularios', component: ProyectoFormularios},
  { path: '/proyecto/integrantes', name: 'ProyectoIntegrantes', component: ProyectoIntegrantes},
  { path: '/proyecto/formularios/nuevo', name: 'ProyectoFormularioNuevo', component: ProyectoFormularioNuevo},
  { path: '/proyecto/formularios/nuevo/crear', name: 'FromularioNuevoCrear', component: FromularioNuevoCrear},


  { path: '/proyectos/nuevo-proyecto', name: 'ProyectoNuevo', component: ProyectoNuevo},
  { path: '/hola', name: 'Hola', component: () => import('../views/Hola.vue') },
  { path: '/ver', name: 'Ver', component: () => import('../views/Ver.vue') }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})



export default router
