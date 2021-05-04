<template>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
    <form
      action="#"
      method="POST"
      class="space-y-6 mt-5"
      @submit.prevent="SaveInitialForm()">
      <header class="flex items-center justify-center">
        <h2 v-if="ServiceType == 1" class="text-lg leading-6 font-medium text-black">Crear nuevo grupo</h2>
        <h2 v-if="ServiceType == 2" class="text-lg leading-6 font-medium text-black">Crear nuevo proyecto</h2>
      </header>

      <div>
        <label class="block text-gray-700">Nombre</label>
        <input
          type="text"
          class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none"
          required
          v-model="ServiceName"
        />
      </div>

      <div v-if="ServiceType == 2">
        <label class="block text-gray-700">Nombre de la Empresa, entidad o programa de formación</label>
        <input
          type="text"
          class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none"
          required
          v-model="ServiceNameEntity"
        />
      </div>

      <div v-if="ServiceType == 1">
        <label class="block text-gray-700">Logo</label>
        <input
          type="file"
          class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none"
          required
        />
      </div>

      <div>
        <label class="block text-gray-700">Breve descripción</label>
        <textarea
          wrap="hard"
          rows="7"
          class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none"
          required
          v-model="ServiceDescription"
        ></textarea>
        <p class="mt-1 text-sm text-gray-500">* Descripción resumida del grupo o equipo de trabajo</p>
      </div>


      <div>
        <label class="block text-gray-700">Integrantes</label>
        <input
          type="text"
          class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none"
          required
        />
      </div>

      <div class="py-2 text-left">
        <button
          type="submit"
          class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-green-600 hover:bg-green-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
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
      <img class="w-2/3 p-10" :src="img_form_person" alt="" />
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
      img_form_person: API_ROUTER.API_UI + "/forms/new_form.svg",
      ServiceType: this.$route.params.type_service,
      ServiceName: "Servicio Nacional de Aprendizaje",
      ServiceNameEntity: null,
      ServiceDescription: "SENA",
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

          this.$router.replace("/constructor-service/" + response.data.code);
        });
    },
  },
};
</script>
