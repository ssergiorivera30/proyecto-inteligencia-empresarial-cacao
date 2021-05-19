<template>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-2">
    <form
      action="#"
      method="POST"
      class="space-y-2 mt-5"
      @submit.prevent="SaveInitialForm()">
      <header class="flex items-center justify-center">
        <h2 v-if="ServiceType == 1" class="text-lg leading-6 font-medium text-black">Creación de <span class="font-bold border-b border-black">grupo</span></h2>
        <h2 v-if="ServiceType == 2" class="text-lg leading-6 font-medium text-black">Creación de <span class="font-bold border-b border-black">proyecto</span></h2>
        <h2 v-if="ServiceType == 3" class="text-lg leading-6 font-medium text-black">Creación de <span class="font-bold border-b border-black">entidad</span></h2>
        <h2 v-if="ServiceType == 4" class="text-lg leading-6 font-medium text-black">Creación de <span class="font-bold border-b border-black">formulario</span></h2>
      </header>

      <div>
        <label class="text-gray-700 font-semibold text-xs">Nombre</label>
        <input
          type="text"
          class="form-control2"
          required
          v-model="ServiceName"
        />
      </div>

      <div v-if="ServiceType == 2">
        <label class="text-gray-700 font-semibold text-xs">Nombre de la Empresa, entidad o programa de formación</label>
        <input
          type="text"
          class="form-control2"
          required
          v-model="ServiceNameEntity"
        />
      </div>

      <div v-if="ServiceType == 1">
        <label class="text-gray-700 font-semibold text-xs">Logo</label>
        <input
          type="file"
          class="form-control2"
          required
        />
      </div>

      <div>
        <label class="text-gray-700 font-semibold text-xs">Breve descripción</label>
        <textarea
          wrap="hard"
          rows="7"
          class="form-control2"
          required
          v-model="ServiceDescription"
        ></textarea>
      </div>


      <div v-if="ServiceType == 1 || ServiceType == 2 || ServiceType == 4"> 
        <label class="text-gray-700 font-semibold text-xs">Integrantes</label>
        <input
          type="text"
          class="form-control2"
          required
        />
      </div>

      <div class="py-2 text-left">
        <button
          type="submit"
          class="inline-flex justify-center py-1 px-2 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-my-primary focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
        >
          Continuar
        </button>
      </div>
    </form>

    <PreviewForm
      v-if="ServiceName != ''"
      :NameForm="ServiceName"
      :DescriptionForm="ServiceDescription"
    />

    <div v-else class="flex justify-center">
      <img v-if="this.$route.params.type_service == 1" class="w-2/3 p-10" :src="service_group" alt="" />
      <img v-if="this.$route.params.type_service == 2" class="w-2/3 p-10" :src="service_project" alt="" />
      <img v-if="this.$route.params.type_service == 3" class="w-2/3 p-10" :src="service_entity" alt="" />
      <img v-if="this.$route.params.type_service == 4" class="w-2/3 p-10" :src="service_form" alt="" />
    </div>
  </div>
</template>
<script>
import axios from "axios";
import Noty from "noty";
import API_ROUTER from "./../../services/SERVER_API";
import PreviewForm from "./../../components/Formularios/PreviewForm";

export default {
  name: "BuildFirsStep",
  components: {
    PreviewForm,
  },
  data() {
    return {
      service_group: API_ROUTER.API_UI + "services/team.svg",
      service_project: API_ROUTER.API_UI + "services/projects.svg",
      service_form: API_ROUTER.API_UI + "services/forms.svg",
      service_entity: API_ROUTER.API_UI + "services/entity.svg",

      ServiceType: this.$route.params.type_service,
      ServiceName: "",
      ServiceNameEntity: null,
      ServiceDescription: "",
    };
  },
  mounted: function () {},
  methods: {
    SaveInitialForm: function () {
      axios
        .post(API_ROUTER.PHP7_CONTROLLER + "build/create_build_first_step.php", {
          ServiceType: this.$route.params.type_service,
          ServiceName: this.ServiceName,
          ServiceDescription: this.ServiceDescription,
        })
        .then((response) => {

          new Noty({
            theme: "sunset",
            layout: "topRight",
            progressBar: true,
            closeWith: ["click", "button"],
            timeout: 8000,
            type: response.data.icono,
            text: response.data.mensaje,
          }).show();

          if(response.data.icono == 'success'){
            this.$router.replace("/constructor-service/" + response.data.code);
          }

          
        });
    },
  },
};
</script>
