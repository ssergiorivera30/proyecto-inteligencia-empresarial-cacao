<template>

    <section v-if="ArrayServices === null" class="max-w-lg px-4 py-12 mx-auto">
        <img class="mx-auto sm:w-1/4" :src="EmptyService" />
        <h2 class="mt-2 text-lg font-medium text-center text-gray-800">Tienes (0) {{ ServiceName }},
            <router-link :to="'/create-service/'+ ServiceID " class="w-full py-2 text-blue-900 font-bold capitalize">{{
                ServiceNameLink }}</router-link>
        </h2>
    </section>

    <div v-else class="w-full">
        <div class="bg-white shadow overflow-hidden	">
            <div class="w-full whitespace-nowrap">
                <div class="w-full">
                    <div v-for="info in ArrayServices" :key="info" @click="this.$router.push(RouteLink + info.id)"
                        class="grid grid-cols-12 cursor-pointer h-20 text-sm leading-none text-gray-800 bg-white hover:bg-gray-100 border-b border-gray-100  pl-4 ">

                        <div class="col-span-6 flex justify-between cursor-pointer">
                            <div class="flex items-center">
                                <div class="w-10 h-full">
                                    <img v-if="this.$props.ServiceID == 1" class="w-full h-full"
                                        :src="SrcPublic+info.logo" />
                                    <img v-if="this.$props.ServiceID == 2" class="w-full h-full"
                                        :src="SrcPublic+'default.svg'" />
                                    <img v-if="this.$props.ServiceID == 3" class="w-full h-full"
                                        :src="SrcPublic+'default.svg'" />
                                </div>
                                <div class="pl-4">
                                    <p v-if="info.name.length > 36" class="font-medium">{{ info.name.substring(0,36)
                                        }}...</p>
                                    <p v-else class="font-medium">{{ info.name }}</p>
                                    <p v-if="info.description.length > 28" class="text-xs leading-3 text-gray-600 pt-2">
                                        {{ info.description.substring(0,28) }}...</p>
                                    <p v-else class="text-xs leading-3 text-gray-600 pt-2">{{ info.description }}</p>
                                </div>
                            </div>
                        </div>

                        <div class="hidden md:flex col-span-3 justify-center ml-4">
                            <div class="flex items-center">
                                                                
                            </div>
                        </div>

                        <div class="hidden sm:flex col-span-6 md:col-span-3  justify-between ml-12 md:ml-4">
                            <div class="flex items-center">
                                <img class="w-8 h-8 overflow-hidden object-cover rounded-full border-2 border-white shadow"
                                    :src="imagen_a" />
                                <img class="w-8 h-8 overflow-hidden object-cover rounded-full border-2 border-white shadow -ml-2"
                                    :src="imagen_b" />
                                <img class="w-8 h-8 overflow-hidden object-cover rounded-full border-2 border-white shadow -ml-2"
                                    :src="imagen_c" />
                                <img class="w-8 h-8 overflow-hidden object-cover rounded-full border-2 border-white shadow -ml-2"
                                    :src="imagen_d" />
                                <img class="w-8 h-8 overflow-hidden object-cover rounded-full border-2 border-white shadow -ml-2"
                                    :src="imagen_e" />
                            </div>
                        </div>


                    </div>
                </div>
            </div>
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
                SrcPublic: API_ROUTER.API_PUBLIC + this.$props.FilePathImg,
                imagen_a: API_ROUTER.API_PUBLIC + 'users/a_4_0.png',
                imagen_b: API_ROUTER.API_PUBLIC + 'users/a_4_1.png',
                imagen_c: API_ROUTER.API_PUBLIC + 'users/a_4_2.png',
                imagen_d: API_ROUTER.API_PUBLIC + 'users/a_4_3.png',
                imagen_e: API_ROUTER.API_PUBLIC + 'users/a_4_4.png',

               

            }
        },
        props: {
            ArrayServices: Object,
            ServiceNameLink: String,
            RouteLink: String,
            ServiceID: String,
            ServiceName: String,
            FilePathImg: String,
        },
        mounted: function () {
        },
        methods: {
        }
    }
</script>