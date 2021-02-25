import { createRouter, createWebHashHistory } from 'vue-router'
import Home from '../views/Home.vue'
import ProjectsHome from '../views/Projects/ProjectsHome'
import NewProject from '../views/Projects/NewProject'

const routes = [
  { path: '/',  name: 'Home', component: Home  },
  { path: '/proyectos', name: 'ProjectsHome', component: ProjectsHome,
    children:
    [
      {
        // UserProfile will be rendered inside User's <router-view>
        // when /user/:id/profile is matched
        path: 'nuevo-proyecto',
        component: NewProject
      }      
    ] 
  },
  { path: '/hola', name: 'Hola', component: () => import('../views/Hola.vue') },
  { path: '/dashboard', name: 'Dashboard', component: () => import('../views/Dashboard.vue') },
  { path: '/ver', name: 'Ver', component: () => import('../views/Ver.vue') }
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})



export default router
