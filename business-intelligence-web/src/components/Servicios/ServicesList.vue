<template>

    <section v-if="ArrayServices === null" class="max-w-lg px-4 py-12 mx-auto">
        <img class="mx-auto sm:w-1/4 select-none pointer-events-none" :src="EmptyService" draggable="false"/>
        <h2 class="mt-5 text-xs font-medium text-center text-gray-600 select-none" draggable="false">Tienes (0) {{ ServiceName }}</h2>
    </section>

    <div v-else class="w-full  overflow-hidden">

        <div v-for="info in ArrayServices" :key="info"
            class="grid grid-cols-12 my-2 h-20 text-sm leading-none text-gray-800 bg-white hover:bg-gray-50 border-b border-gray-100 shadow-sm">

            <div class="col-span-5 flex justify-between cursor-pointer" @click="this.$router.push(RouteLink + info.id)">

                <div class="flex items-center">
                    <div class="w-16 h-full rounded">
                        <img class="w-full h-full rounded-sm  select-none pointer-events-none" draggable="false"
                            :class="[ info.logo === 'default.svg' ? 'ml-1' : 'object-cover' ]"
                            :src="SrcPublic+info.logo" />
                    </div>

                    <div class="pl-4 pr-10 ">
                        <p class="font-medium my-white-space py-1 max-w-xs md:max-w-xs lg:max-w-md xl:max-w-lg ">{{ info.name }}</p>
                        <p class="text-xs leading-3 text-gray-600 py-1 my-white-space max-w-xs md:max-w-xs lg:max-w-md xl:max-w-lg ">{{ info.description }}</p>
                    </div>
                </div>
            </div>


            <!-- flex-col overflow-hidden
whitespace-nowrap truncate -->

            <div class="hidden md:flex col-span-1 justify-center ml-4">

            </div>

            <div class="hidden md:flex col-span-2 justify-center ml-4">
                <div class="flex items-center">
                    <svg class="_418c4939 flex-none" width="100" height="40" stroke-width="2" stroke="#003976"
                        fill="rgba(137, 86, 255, 0)">
                        <path class="sparkline--fill"
                            d="M4 24.43 L 4 24.43 L 7.764705882352941 26.28 L 11.529411764705882 27.16 L 15.294117647058822 25.12 L 19.058823529411764 25 L 22.823529411764707 24.78 L 26.588235294117645 25.87 L 30.352941176470587 25.18 L 34.11764705882353 24.96 L 37.88235294117647 25.98 L 41.64705882352941 26.18 L 45.411764705882355 25.32 L 49.17647058823529 25.05 L 52.94117647058823 25.11 L 56.705882352941174 27.19 L 60.470588235294116 26.68 L 64.23529411764706 24.72 L 68 23.14 L 71.76470588235294 25.73 L 75.52941176470588 5 L 79.29411764705883 12.89 L 83.05882352941177 15.67 L 86.82352941176471 25.43 L 90.58823529411765 22.19 L 94.35294117647058 14.49 L 98.11764705882352 13.82 L 101.88235294117646 16.31 L 105.6470588235294 21.32 L 109.41176470588235 22.36 L 113.17647058823529 21.73 L 116.94117647058823 20.86 L 120.70588235294117 24.52 L 124.47058823529412 23.78 L 128.23529411764707 25.62 L 132 24.79 L 135.76470588235293 21.78 L 139.52941176470588 23.14 L 143.2941176470588 20.69 L 147.05882352941177 22.63 L 150.8235294117647 23.11 L 154.58823529411765 24.71 L 158.35294117647058 22.45 L 162.11764705882354 24.13 L 165.88235294117646 23.4 L 169.64705882352942 25.51 L 173.41176470588235 21.83 L 177.1764705882353 23.47 L 180.94117647058823 26.82 L 184.70588235294116 24.37 L 188.47058823529412 23.38 L 192.23529411764704 20.82 L 196 22.99 V 40 L 4 40 Z"
                            stroke="none"></path>
                        <path class="sparkline--line"
                            d="M4 24.43 L 4 24.43 L 7.764705882352941 26.28 L 11.529411764705882 27.16 L 15.294117647058822 25.12 L 19.058823529411764 25 L 22.823529411764707 24.78 L 26.588235294117645 25.87 L 30.352941176470587 25.18 L 34.11764705882353 24.96 L 37.88235294117647 25.98 L 41.64705882352941 26.18 L 45.411764705882355 25.32 L 49.17647058823529 25.05 L 52.94117647058823 25.11 L 56.705882352941174 27.19 L 60.470588235294116 26.68 L 64.23529411764706 24.72 L 68 23.14 L 71.76470588235294 25.73 L 75.52941176470588 5 L 79.29411764705883 12.89 L 83.05882352941177 15.67 L 86.82352941176471 25.43 L 90.58823529411765 22.19 L 94.35294117647058 14.49 L 98.11764705882352 13.82 L 101.88235294117646 16.31 L 105.6470588235294 21.32 L 109.41176470588235 22.36 L 113.17647058823529 21.73 L 116.94117647058823 20.86 L 120.70588235294117 24.52 L 124.47058823529412 23.78 L 128.23529411764707 25.62 L 132 24.79 L 135.76470588235293 21.78 L 139.52941176470588 23.14 L 143.2941176470588 20.69 L 147.05882352941177 22.63 L 150.8235294117647 23.11 L 154.58823529411765 24.71 L 158.35294117647058 22.45 L 162.11764705882354 24.13 L 165.88235294117646 23.4 L 169.64705882352942 25.51 L 173.41176470588235 21.83 L 177.1764705882353 23.47 L 180.94117647058823 26.82 L 184.70588235294116 24.37 L 188.47058823529412 23.38 L 192.23529411764704 20.82 L 196 22.99"
                            fill="none"></path>
                        <line class="sparkline--cursor" x1="-1000" x2="-1000" y1="0" y2="40" stroke-width="2"></line>
                        <circle class="sparkline--spot" cx="-1000" cy="24.37" r="2"></circle>
                        <rect width="200" height="40" style="fill: transparent; stroke: transparent"
                            class="sparkline--interaction-layer">
                        </rect>
                    </svg>
                </div>
            </div>

            <div class="hidden md:flex col-span-3 md:col-span-3 justify-left ml-12 md:ml-4 overflow-x-hidden">

                <div class="flex items-center pl-2">
                    <div  v-for="(memb, index) in info.members" :key="index" class="">
                        <div v-if="memb.avatar == 0" :title="memb.name + ' - ' + memb.email" class="-ml-2 flex items-center justify-center w-10 h-10 rounded-full bg-purple-800 text-white border-2 border-white uppercase shadow select-none" draggable="false">{{ memb.name.substring(0,2) }}</div>

                        <div class="-ml-2 " v-else>
                            <img  :src="ImageAvatar+memb.avatar" :title="memb.name + ' - ' + memb.email" role="img" class="flex w-10 h-10 object-cover rounded-full border-2 bg-white  border-white shadow select-none"  draggable="false">
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
        components: {

        },
        name: 'ServicesList',
        data() {
            return {
                RouteSrc: API_ROUTER.API_UI + 'icons/database.png',
                EmptyService: API_ROUTER.API_UI + 'empty-services.svg',
                ImageAvatar: API_ROUTER.API_PUBLIC + "avatars/",
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

            console.log(this.ArrayServices)

        },
        methods: {

        }
    }
</script>