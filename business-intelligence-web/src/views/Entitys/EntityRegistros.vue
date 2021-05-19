<template>
   
        <div class="xl:w-3/4 2xl:w-4/5 w-full">
            <div class="py-4 md:py-7">
                <div class="sm:flex items-center justify-between">
                    <p class="text-base sm:text-lg md:text-xl lg:text-2xl font-bold leading-normal text-gray-800">Files</p>
                    <div class="mt-4 sm:mt-0">
                        <button class="inline-flex sm:ml-3 items-start justify-start px-6 py-3 bg-my-primary focus:outline-none rounded">
                            <p class="text-sm font-medium leading-none text-white">Download All</p>
                        </button>
                    </div>
                </div>
            </div>
            <div class="pb-5">
                <div class="overflow-x-auto">
                    <table class="w-full whitespace-nowrap">
                        <tbody>
                            <tr class="text-sm leading-none text-gray-600 h-16">
                                <td class="w-1/2">
                                    <div class="flex items-center">
                                        <div class="w-10 h-10 bg-gray-700 rounded-sm flex items-center justify-center">
                                            <p class="text-xs font-bold leading-3 text-white">FIG</p>
                                        </div>
                                        <div class="pl-2">
                                            <p class="text-sm font-medium leading-none text-gray-800">Fonts.fig</p>
                                            <p class="text-xs leading-3 text-gray-600 mt-2">Shared by Ashley Wilson</p>
                                        </div>
                                    </div>
                                </td>
                                <td class="pl-16">
                                    <p>#designer</p>
                                </td>
                                <td>
                                    <p class="pl-16">3.7gb</p>
                                </td>
                                <td>
                                    <p class="pl-16">4 members</p>
                                </td>
                                <td>
                                    <p class="pl-16">Shared on 21 Februray 2020</p>
                                </td>
                            </tr>
                            <tr class="text-sm leading-none text-gray-600 h-16">
                                <td class="w-1/2">
                                    <div class="flex items-center">
                                        <div class="w-10 h-10 bg-red-400 rounded-sm flex items-center justify-center">
                                            <p class="text-xs font-bold leading-3 text-white">PPT</p>
                                        </div>
                                        <div class="pl-2">
                                            <p class="text-sm font-medium leading-none text-gray-800">Wireframes.ppt</p>
                                            <p class="text-xs leading-3 text-gray-600 mt-2">Shared by Ashley Wilson</p>
                                        </div>
                                    </div>
                                </td>
                                <td class="pl-16">
                                    <p>#designer</p>
                                </td>
                                <td>
                                    <p class="pl-16">3.7gb</p>
                                </td>
                                <td>
                                    <p class="pl-16">4 members</p>
                                </td>
                                <td>
                                    <p class="pl-16">Shared on 21 Februray 2020</p>
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    
</template>

<script>

import NavBarSecondary from './../../components/Utilidades/NavBarSecondary.vue'
import axios from 'axios';
import API_ROUTER from './../../services/SERVER_API'

   export default {
      name: 'EntityRegistros',
      components: {
         NavBarSecondary
      },
      data() {
         return {
           
            RoutesNavs: [
               { Linkroute: '/proyecto/detalles', nameRoute: 'Detalles' },
               { Linkroute: '/proyecto/formularios', nameRoute: 'Recolección de datos' },
               { Linkroute: '/proyecto/integrantes', nameRoute: 'Integrantes' },
            ],

             Team: API_ROUTER.API_UI + "chart/chart.svg",
             Grades: API_ROUTER.API_UI + "chart/grades.svg",
             Text: API_ROUTER.API_UI + "chart/text.svg",

             InfoGroup: [],
         }
      },
      beforeMount: function () {

   

      },
      mounted: function () {
        //  this.LoadIdProject()
      },
      methods: {
         LoadIdProject :function(){
         axios.post(API_ROUTER.PHP7_CONTROLLER + "groups/load_basic_group.php",
            {
               id_group: this.$route.params.id_group,
            }).then((res) => {
               
               this.InfoGroup = res.data

            }).catch(() => {
               
               alert('Error de conexión')

         })
      },


      }
   }
</script>