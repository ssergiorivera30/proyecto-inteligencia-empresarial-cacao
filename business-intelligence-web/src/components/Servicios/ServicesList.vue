<template>

<header class="flex items-center justify-between px-2 my-5">
    <h2 class="text-lg font-bold leading-6 text-gray-800">Mis {{ ServiceName }}</h2>      
    <div class="relative">
        <router-link :to="'/create-service/'+ ServiceID " class=" flex p-2 rounded-md bg-blue-900">
            <span class="text-xs font-medium leading-none text-white">{{ ServiceNameLink }}</span>
        </router-link >
    </div>
</header>

<pre>
    {{ ArrayServices  }}
</pre>

<section v-if="1 == 1" class="max-w-lg px-4 py-12 mx-auto">
        <img class="mx-auto sm:w-1/4" :src="EmptyService" />
        <h2 class="mt-2 text-lg font-medium text-center text-gray-800">Tienes (0) {{ ServiceName }} registrados 
            <router-link :to="'/create-service/'+ ServiceID " class="w-full py-2 text-blue-900 font-bold ">{{ ServiceNameLink }}</router-link>

        </h2>
    </section>

    

        <div v-else class="w-full">
            
            <div class="bg-white shadow overflow-y-auto">
                <table class="w-full whitespace-nowrap">
                    <tbody class="w-full">
                        <tr v-for="info in ArrayServices" :key="info"
                            @click="this.$router.push('/proyecto/ver/detalles/'+ info.id)"
                            class="cursor-pointer h-20 text-sm leading-none text-gray-800 bg-white hover:bg-gray-100 border-b border-gray-100">
                            <td class="pl-4 cursor-pointer">
                                <div class="flex items-center">
                                    <div class="w-10 h-10">
                                        <img class="w-full h-full" src="https://cdn.tuk.dev/assets/templates/olympus/projects.png" />
                                    </div>
                                    <div class="pl-4">
                                        <p v-if="info.name.length > 36" class="font-medium">{{ info.name.substring(0,36) }}...</p>
                                        <p v-else class="font-medium">{{ info.name }}</p>

                                        <p  v-if="info.description.length > 28" class="text-xs leading-3 text-gray-600 pt-2">{{ info.description.substring(0,28) }}...</p>
                                        <p v-else class="text-xs leading-3 text-gray-600 pt-2">{{ info.description }}</p>
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
                            <td class=" pl-16">
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
    name: 'ServicesList',
    data() {
        return {
            RouteSrc: API_ROUTER.API_UI + 'icons/database.png',  
            EmptyService: API_ROUTER.API_UI + 'empty-services.png',        
        }
    },
    props:{
        ArrayServices: Object,
        ServiceName: String,
        ServiceNameLink: String ,
        ServiceID: String,
    },
    mounted: function () {

    },
    methods: { 
    }
}
</script>