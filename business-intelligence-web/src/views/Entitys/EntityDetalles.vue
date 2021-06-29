<template>
    <div>
        <ServiceToptInfoBasic :ServiceStatus="parseInt(ServiceStatus)" :IdService="parseInt(this.$route.params.id_entity)" />

        <div v-if="DataServiceRows.length > 0" class="w-full mt-5">
            <table class="min-w-max w-full table-auto">
                <thead>
                    <tr class="bg-gray-200 text-gray-600 capitalize text-sm leading-normal">
                        <th class="py-3 px-6 text-left">Opciones</th>
                        <th class="py-3 px-6 text-left">Código</th>
                        <th class="py-3 px-6 text-left max-w-xs" v-for="(data, index) in resizeColumns(DataServiceColumns)" :key="index">{{ data.name }}</th>
                    </tr>
                </thead>
                <tbody class="text-gray-600 text-sm font-light">
                    <tr class="border-b border-gray-200 hover:bg-gray-100" v-for="(data, index) in DataServiceRows" :key="index">
                        <td class="py-3 px-6 text-center">
                            <div class="flex item-center justify-center">
                                <div class="w-4 mr-2 transform hover:text-purple-500 hover:scale-110">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                    </svg>
                                </div>
                            </div>
                        </td>
                        <td class="px-6 py-4 text-sm text-gray-500">{{ data[0] }}</td>
                        <td v-for="(column) in sizeColumns" :key="column" class="px-6 py-4 text-sm text-gray-500 max-w-xs">{{ data[column] }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div v-else class="hidden md:flex justify-center">
            <img class="px-10 w-96	" :src="Team" alt="" />
        </div>
    </div>
</template>
<script>
    import axios from 'axios';
    import API_ROUTER from './../../services/SERVER_API'

    import ServiceToptInfoBasic from '../../components/Utilidades/ServiceToptInfoBasic.vue'

    export default {
        name: 'EntityDetalles',
        components: {
            ServiceToptInfoBasic,
        },
        data() {
            return {

                RoutesNavs: [{
                    Linkroute: '/proyecto/detalles',
                    nameRoute: 'Detalles'
                }, {
                    Linkroute: '/proyecto/formularios',
                    nameRoute: 'Recolección de datos'
                }, {
                    Linkroute: '/proyecto/integrantes',
                    nameRoute: 'Integrantes'
                }, ],
                Team: API_ROUTER.API_UI + "empty/empty-data-table.svg",
                ServiceStatus: 1,
                DataServiceColumns: [],
                DataServiceRows: [],
                sizeColumns: 6,
            }
        },
        mounted: function() {
            this.LoadDataService()
        },
        methods: {
            resizeColumns: function(ArrayNames) {
                return ArrayNames.slice(0, this.sizeColumns)
            },
            LoadDataService: function() {
                axios.post(API_ROUTER.PHP7_CONTROLLER + "build-2/2_listar_data.php", {
                    id_service: this.$route.params.id_entity,
                }).then((res) => {
                    this.DataServiceColumns = res.data.columns
                    if (res.data.rows != null) {
                        this.DataServiceRows = res.data.rows
                    }
                }).catch(() => {
                    alert('Error de conexión')
                })
            },
        }
    }
</script>