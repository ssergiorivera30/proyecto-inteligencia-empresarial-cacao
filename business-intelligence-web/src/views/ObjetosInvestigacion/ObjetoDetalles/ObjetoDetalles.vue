<template>
  <div class="pl-4 mt-5 mr-2 py-1 sm:max-w-xl md:max-w-full lg:container">
    <div class="flex flex-col">
      <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
        <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8 pb-24">
          <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg pb-24">
            <table class="min-w-full divide-y divide-gray-200 ">
              <thead class="bg-gray-50">
                <tr>
                  <th scope="col" class="relative px-6 py-3">Resumen </th>
                  <th v-for="inputs in ArrayInputs" :key="inputs" scope="col"
                    class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    {{ inputs.input.name }}
                  </th>
                  
                </tr>
              </thead>
              <tbody class="bg-white divide-y divide-gray-200">
                <tr v-for="dataForm in datos" :key="dataForm.id">
                  <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                    <router-link :to="'/proyecto/objeto/detalle/inicio/'+dataForm[0]" class="text-blue-600 hover:text-blue-900">Detalles</router-link>
                  </td>
                  <td v-for="(column) in sizeColumns" :key="column" class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ dataForm[column]}}</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

  import axios from "axios"
  import API_ROUTER from "./../../../services/SERVER_API"
  import PreviewForm from "./../../../components/Formularios/PreviewForm"
  import PreviewFormSave from "./../../../components/Formularios/PreviewFormSave"
  export default {
    components: {
      PreviewForm,
      PreviewFormSave
    },
    data() {
      return {
        name: 'ObjetoDetalles',
        OrderForm: 'load',
        NameForm: '',
        DescriptionForm: '',

        datos: [],
        ArrayInputs: [],

        rutaDataBasic: '',
        rutaDataListar: '',

        column: 0,
        sizeColumns: 0,

      }
    },
    mounted: function () {



    },
    methods: {
      LoadFromBasic: function () {
        axios.post(API_ROUTER.PHP7_CONTROLLER + this.rutaDataBasic,
          {
            id_form: this.$route.params.id,
          }).then((response) => {
            this.ArrayInputs = JSON.parse(response.data.datos)
            this.sizeColumns = this.ArrayInputs.length
          })
      },
      GetData: function () {
        axios.post(API_ROUTER.PHP7_CONTROLLER + this.rutaDataListar,
          {
            table: this.NameTable,
            id_form: this.$route.params.id,
          }).then(res => {
            this.datos = res.data
          }).catch(error => {
            Alert(error)
          })

      },
    }
  }
</script>