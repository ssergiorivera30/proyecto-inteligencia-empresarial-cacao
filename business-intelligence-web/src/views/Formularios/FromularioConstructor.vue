<template>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
    <form
      action="#"
      method="POST"
      class="space-y-6 mt-5"
      @submit.prevent="SaveInitialForm()">
      <header class="flex items-center justify-center">
        <h2 class="text-lg leading-6 font-medium text-black">Formulario nuevo</h2>
      </header>

      <div>
        <label class="block text-gray-700">Nombre del formulario</label>
        <input
          type="text"
          class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none"
          required
          v-model="NameForm"
        />
      </div>

      <div>
        <label class="block text-gray-700">Breve descripción</label>
        <textarea
          rows="4"
          class="w-full px-4 py-2 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none"
          required
          v-model="DescriptionForm"
        ></textarea>
        <p class="mt-1 text-sm text-gray-500">* Formulario privado.</p>
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
      v-if="NameForm != ''"
      :NameForm="NameForm"
      :DescriptionForm="DescriptionForm"
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

import PreviewForm from "./PreviewForm";

export default {
  components: {
    PreviewForm,
  },
  data() {
    return {
      name: "FromularioConstructor",
      img_form_person: API_ROUTER.API_UI + "/forms/new_form.svg",
      NameForm: "",
      DescriptionForm: "",
    };
  },
  mounted: function () {},
  methods: {
    SaveInitialForm: function () {
      axios
        .post(API_ROUTER.PHP7_CONTROLLER + "form_create.php", {
          IdFormProject: this.$route.params.id_project,
          NameForm: this.NameForm,
          DescriptionForm: this.DescriptionForm,
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

          this.$router.replace("/proyecto/formulario/editor/" + response.data.code);
        });
    },
  },
};
</script>
