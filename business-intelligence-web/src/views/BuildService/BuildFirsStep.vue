<template>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
    <form action="#" method="POST" class="space-y-2 mt-5" @submit.prevent="SaveInitialForm()">

      <header class="flex items-center">
        <a href="javascript:history.back()" class="mr-3 pt-1" title="Atrás"><i
            class="bx bx-chevron-left font-bold"></i></a>
        <h2 class="text-lg leading-6 font-medium text-black">Creación de
          <span class="font-bold">{{ NameTypeService }}</span>
        </h2>
      </header>

      <div>
        <label class="text-gray-700 font-semibold text-xs">Nombre</label>
        <input type="text" class="form-control2" required v-model="ServiceName" />
      </div>

      <div v-if="ServiceType == 2">
        <label class="text-gray-700 font-semibold text-xs">Nombre de la Empresa, entidad o programa de formación</label>
        <input type="text" class="form-control2" required v-model="ServiceNameEntity" />
      </div>

      <div v-if="ServiceType == 1">
        <label class="text-gray-700 font-semibold text-xs">Logo</label>
        <input type="file" class="form-control2" required />
      </div>

      <div>
        <label class="text-gray-700 font-semibold text-xs">Breve descripción</label>
        <textarea wrap="hard" rows="7" class="form-control2" required v-model="ServiceDescription"></textarea>
      </div>

      <div v-if="ServiceType == 1 || ServiceType == 2 || ServiceType == 4">
        <label class="text-gray-700 font-semibold text-xs">Integrantes</label>
        <input type="text" class="form-control2" v-model="IdentificatorMember" placeholder="Buscar usuario" @keyup="SearchUser" />
      </div>

      <div class="items-center justify-between">


         <div class="grid grid-cols-12 items-center shadow-sm my-3 px-2 py-2 rounded w-full" v-for="(user, index) in UserMembersList" :key="index">

          <div class="col-span-3 sm:col-span-1 md:col-span-2 lg:col-span-1 h-10 w-10 ">
            <img src="https://cdn.tuk.dev/assets/photo-1544817747-b11e3e3b6ac2.jfif" role="img" class="rounded-full object-cover h-full w-full shadow">
          </div>

          <div class="col-span-5 md:col-span-6 lg:col-span-7">
            <p class="text-md text-gray-600 font-bold truncate overflow-ellipsis overflow-hidden">{{ user.name }}</p>
            <p class="sm:text-md text-sm text-gray-600 truncate overflow-ellipsis overflow-hidden ">{{ user.email }}</p>
          </div>

          <div class="col-span-2 lg:col-span-1">
            <h5 class="font-medium">
              <svg xmlns="http://www.w3.org/2000/svg" class="cursor-pointer h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
              </svg>
            </h5>
            <!-- <h5 class="font-medium">
              <svg xmlns="http://www.w3.org/2000/svg" class="cursor-pointer h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </h5> -->
          </div>

          <div class="col-span-2 lg:col-span-3">
            <select class="pr-5 font-medium truncate overflow-ellipsis overflow-hidden bg-gray-50">
              <option value="" disabled>Propietario</option>
              <option value="">Editor</option>
              <option value="">Ver</option>
            </select>
          </div>
        </div>




    
      </div>


      <div class="py-4 flex items-center flex-no-wrap">
        <div class="w-12 h-12 bg-cover bg-center rounded-md">
          <img loading="lazy" draggable="false"
            src="https://tuk-cdn.s3.amazonaws.com/assets/components/avatars/a_4_0.png" alt=""
            class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow pointer-events-none" />
        </div>
        <div class="w-12 h-12 bg-cover rounded-md -ml-2">
          <img loading="lazy" draggable="false"
            src="https://tuk-cdn.s3.amazonaws.com/assets/components/avatars/a_4_1.png" alt=""
            class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow pointer-events-none" />
        </div>
      </div>


      <div class="text-left">
        <button type="submit" class="btn-primary">
          Continuar
        </button>
      </div>
    </form>

    <PreviewForm v-if="ServiceName != ''" :NameForm="ServiceName" :DescriptionForm="ServiceDescription"
      class="hidden md:flex" />

    <div v-else class="hidden md:flex justify-center ">
      <img v-if="this.$route.params.type_service == 1" class="px-10 pointer-events-none" loading="lazy"
        draggable="false" :src="service_group" alt="" />
      <img v-if="this.$route.params.type_service == 2" class="px-10 pointer-events-none" loading="lazy"
        draggable="false" :src="service_project" alt="" />
      <img v-if="this.$route.params.type_service == 3" class="px-10 pointer-events-none" loading="lazy"
        draggable="false" :src="service_entity" alt="" />
      <img v-if="this.$route.params.type_service == 4" class="px-10 pointer-events-none" loading="lazy"
        draggable="false" :src="service_form" alt="" />
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
        service_group: API_ROUTER.API_UI + "services/team1.svg",
        service_project: API_ROUTER.API_UI + "services/project_1.svg",
        service_entity: API_ROUTER.API_UI + "services/entity_2.svg",
        service_form: API_ROUTER.API_UI + "services/form_2.svg",

        NameTypeService: '',

        ServiceType: this.$route.params.type_service,
        ServiceName: "",
        ServiceNameEntity: null,
        ServiceDescription: "",

        IdentificatorMember: null,
        UserMembersList: [],
        UserMembersSelect: [],

      };
    },
    mounted: function () {

      if (this.$route.params.type_service == 1) {
        this.NameTypeService = 'grupo'
      }
      else if (this.$route.params.type_service == 2) {
        this.NameTypeService = 'proyecto'
      }
      else if (this.$route.params.type_service == 3) {
        this.NameTypeService = 'componente'
      }

      else if (this.$route.params.type_service == 4) {
        this.NameTypeService = 'formulario'
      }

    },
    methods: {
      SearchUser: function () {
        axios.post(API_ROUTER.PHP7_CONTROLLER + "permissions/load_user.php", {
          IdentificatorNotMember: this.IdentificatorMember
        }).then((response) => {

          this.UserMembersList = response.data

        });
      },
      SaveInitialForm: function () {
        axios.post(API_ROUTER.PHP7_CONTROLLER + "build/create_build_first_step.php", {
          ServiceType: this.$route.params.type_service,
          ServiceName: this.ServiceName,
          ServiceDescription: this.ServiceDescription,
        }).then((response) => {
          new Noty({
            theme: "sunset",
            layout: "topRight",
            progressBar: true,
            closeWith: ["click", "button"],
            timeout: 8000,
            type: response.data.icono,
            text: response.data.mensaje,
          }).show();

          if (response.data.icono == "success") {
            this.$router.replace("/constructor-service/" + response.data.code);
          }
        });
      },
    },
  };
</script>