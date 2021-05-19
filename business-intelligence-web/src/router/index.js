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

import EntityDetallesHeader from './../views/Entitys/EntityDetallesHeader'
import EntityRegistros from './../views/Entitys/EntityRegistros'
import EntytiRegistrar from './../views/Entitys/EntytiRegistrar'



import TeamResumen from './../views/Team/TeamResumen'
import ServiciosInfoBasicDetalles from './../views/Servicios/ServiciosInfoBasicDetalles'















import ServiciosMenuPrincipal from '../views/Servicios/ServiciosMenuPrincipal'
import ServiciosHome from '../views/Servicios/ServiciosHome'

// Maps

import MapsHome from '../views/Maps/MapsHome'
import MapsCreate from '../views/Maps/MapsCreate'

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

{ path: '/cuenta/ver', name: 'MyCuentaHeader', redirect:'/cuenta/ver/info', component: MyCuentaHeader,
  children:
    [
      { path: 'info/', name: 'Cuenta', component: Cuenta },              
      { path: 'personalizacion/', name: 'Personalizacion', component: Personalizacion },
      { path: 'seguridad/', name: 'Seguridad', component: Seguridad },
    ]  
},




// ******************************************************************************************** //
// ******************************************************************************************** //
// ******************************************************************************************** //
// ******************************************************************************************** //


{ path: '/create-service/:type_service',  name: 'BuildFirsStep', component: BuildFirsStep  },
{ path: '/constructor-service/:id_service',  name: 'BuildSecondStep', component: BuildSecondStep  },

{ path: '/grupo/ver', name: 'GrupoDetallesHeader', component: GrupoDetallesHeader,
  children:
    [
      { path: 'detalle/:id_group', name: 'GrupoResumen', component: GrupoResumen },  
      { path: 'proyectos/:id_group', name: 'GrupoProyectos', component: GrupoProyectos },     
      { path: 'equipo/:id_service', component: TeamResumen }, 
    ]   
},

{ path: '/proyecto/ver', name: 'ProyectosDetallesHeader', redirect:'/proyecto/ver/detalle', component: ProyectosDetallesHeader,
  children:
    [
      { path: 'detalle/:id_project', name: 'ProyectoResumen', component: ProyectoResumen }, 
      { path: 'entidades/:id_project', name: 'ProyectoEntidades', component: ProyectoEntidades }, 
      { path: 'equipo/:id_service', component: TeamResumen }, 
    ]   
},



{ path: '/entidad', name: 'EntityDetallesHeader', redirect:'/entidad/registros', component: EntityDetallesHeader,
  children:
    [
      { path: 'registros/:id_entity', name: 'EntityRegistros', component: EntityRegistros },
      { path: 'registrar/:id_entity', name: 'EntytiRegistrar', component: EntytiRegistrar },      
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
