<template>


<header class="flex items-center justify-between px-2 my-5">
    <h2 class="text-lg font-bold leading-6 text-gray-800">Grupos</h2>      
    <div class="relative">
        <router-link to="/create-service/1" class=" flex p-2 rounded-md bg-blue-900">
            <span class="text-xs font-medium leading-none text-white">Nuevo grupo</span>
        </router-link >
    </div>
</header>



       <div class="w-full">            
            <div class="bg-white shadow overflow-y-auto">
                <table class="w-full whitespace-nowrap">                   
                    <tbody class="w-full">
                        <tr v-for="group in ArrayGroups" :key="group"
                            @click="this.$router.push('/grupo/detalle/'+ group.id)"
                            class="cursor-pointer h-20 text-sm leading-none text-gray-800 bg-white hover:bg-gray-100 border-b border-gray-100">
                            <td class="pl-4 cursor-pointer">
                                <div class="flex items-center">
                                    <div class="w-10 items-center">
                                        <img class="w-full" src="http://grupodeinvestigacionnova.com/assets/images/logo-t.png" />
                                    </div>
                                    <div class="pl-4">
                                        <p v-if="group.name.length > 36" class="font-medium">{{ group.name.substring(0,36) }}...</p>
                                        <p v-else class="font-medium">{{ group.name }}</p>

                                        <p  v-if="group.description.length > 28" class="text-xs leading-3 text-gray-600 pt-2">{{ group.description.substring(0,28) }}...</p>
                                        <p v-else class="text-xs leading-3 text-gray-600 pt-2">{{ group.description }}</p>
                                    </div>
                                </div>
                            </td>
                            <td class="hidden pl-12">
                                <p class="text-sm font-medium leading-none text-gray-800">72%</p>
                                <div class="w-24 h-3 bg-gray-100 rounded-full mt-2">
                                    <div class="w-20 h-3 bg-green-progress rounded-full"></div>
                                </div>
                            </td>
                            <td class="hidden pl-12">
                                <p class="font-medium">32/47</p>
                                <p class="text-xs leading-3 text-gray-600 mt-2">5 tasks pending</p>
                            </td>
                            <td class="hidden pl-20">
                                <p class="font-medium">$13,000</p>
                                <p class="text-xs leading-3 text-gray-600 mt-2">$4,200 left</p>
                            </td>
                            <td class="hidden pl-20">
                                <p class="font-medium">22.12.21</p>
                                <p class="text-xs leading-3 text-gray-600 mt-2">34 days</p>
                            </td>
                            <td class="pl-16">
                                <div class="flex items-center">
                                    <img class="shadow-md w-8 h-8 rounded-full" src="https://cdn.tuk.dev/assets/templates/olympus/projects(8).png" />
                                    <img class="shadow-md w-8 h-8 rounded-full -ml-2" src="https://cdn.tuk.dev/assets/templates/olympus/projects(9).png" />
                                    <img class="shadow-md w-8 h-8 rounded-full -ml-2" src="https://cdn.tuk.dev/assets/templates/olympus/projects(10).png" />
                                    <img class="shadow-md w-8 h-8 rounded-full -ml-2" src="https://cdn.tuk.dev/assets/templates/olympus/projects(11).png" />                                    
                                </div>
                            </td>                           
                        </tr>                     
                    </tbody>
                </table>
            </div>
        </div>
</template>

<script>

   import API_ROUTER from './../../services/SERVER_API'
   export default {
      data() {
         return {
            name: 'ServicesGroups',
            DrowdownAction: 'hidden',
            RouteSrc: API_ROUTER.API_UI + 'icons/database.png',          
        }
    },
    props:{
        ArrayGroups: Object,
    },
    mounted: function () {
    },
    methods: {
        DrowdownActionFunc(){
            this.DrowdownAction = this.DrowdownAction === 'hidden' ? 'block' : 'hidden'
        }, 
    }
}
</script>