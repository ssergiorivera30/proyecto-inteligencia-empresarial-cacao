<template>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-10">

    <div class="mt-3">      
      <header class="flex items-center">
        <a href="javascript:history.back()" class="relative text-white rounded-full focus:outline-none pr-2">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
        </a>
        <h2 class="text-lg leading-6 font-medium text-black">Creación de
          <span class="font-bold">{{ NameTypeService }}</span>
        </h2>
      </header>

       <div v-if="ShowBasic === 2" class="space-y-3 mt-10">
        <div v-if="ServiceType == 1">

        <label class="text-gray-700 font-semibold text-xs">Logo</label>
        <input type="file" name="fileUpload" class="form-control2" @change="onFileChange" >
      </div>     

    </div>
    
    <form v-if="ShowBasic === 1" action="#" method="POST" class="space-y-2 mt-5" @submit.prevent="SaveInitialForm()">
      <div>
        <label class="text-gray-700 font-semibold text-xs">Nombre</label>
        <input type="text" class="form-control2" required v-model="ServiceName" />
      </div>

      <div v-if="ServiceType == 2">
        <label class="text-gray-700 font-semibold text-xs">Nombre de la Empresa, entidad o programa de formación</label>
        <input type="text" class="form-control2" required v-model="ServiceNameEntity" />
      </div>      

      <div>
        <label class="text-gray-700 font-semibold text-xs">Breve descripción</label>
        <textarea wrap="hard" rows="7" class="form-control2" required v-model="ServiceDescription"></textarea>
      </div>        

      <div class="text-left pt-2">
        <button type="submit" class="btn-primary">
          Continuar
        </button>
      </div>
    </form>
    </div>

    <PreviewForm v-show="ServiceName != ''" :NameForm="ServiceName" :DescriptionForm="ServiceDescription" class="hidden md:flex" style="height: 490px;" />

    <div v-show="ServiceName == ''" class="hidden md:flex items-start justify-center select-none pt-10 object-contain">
      <img class="pointer-events-none bg-gray-50 rounded-md static object-contain" loading="lazy" draggable="false" :src="ImageService" alt="" />
    </div>
  </div>
  
</template>
<script>
  import axios from "axios";
  import Noty from "noty";
  import API_ROUTER from "./../../services/SERVER_API";
  import PreviewForm from "./../../components/Formularios/PreviewForm";
  import FileUpload from 'vue-simple-upload/dist/FileUpload'

  export default {
    name: "BuildFirsStep",
    components: {
      PreviewForm,
      FileUpload
    },
    data() {
      return {
        service_group: API_ROUTER.API_UI + "services/team.jpg",
        service_project: API_ROUTER.API_UI + "services/project_1.jpg",
        service_entity: API_ROUTER.API_UI + "services/entity_2.svg",
        service_form: API_ROUTER.API_UI + "services/form_2.svg",
        ImageService: '',
        ImageAvatar:  API_ROUTER.API_PUBLIC + "avatars/",
        ImageServiceLoad: null,

        RouterUploadImage: API_ROUTER.API_GENERAL+'file-upload/upload_avatar_team.php',
       
        CodeServiseRegistred: null,
        
        ShowBasic: 1,

        NameTypeService: '',

        ServiceType: this.$route.params.type_service,
        ServiceName: "",
        ServiceNameEntity: null,
        ServiceDescription: "",

     


      };
    },
    mounted: function () {

      console.log(this.$route)

      if (this.$route.params.type_service == 1) {
        this.NameTypeService = 'grupo ó equipo de trabajo'
        this.ImageService = this.service_group
      }
      else if (this.$route.params.type_service == 2) {
        this.NameTypeService = 'proyecto'
        this.ImageService = this.service_project
      }
      else if (this.$route.params.type_service == 3) {
        this.NameTypeService = 'componente'
        this.ImageService = this.service_entity
      }

      else if (this.$route.params.type_service == 4) {
        this.NameTypeService = 'formulario'
        this.ImageService = this.service_form
      }

    },
    methods: {
      onFileChange: function(event){
        let formData = new FormData();
        formData.append("name", "file");
        formData.append("file", event.target.files[0]);
        formData.append("type_service", this.$route.params.type_service );
        formData.append("service", this.CodeServiseRegistred );
        

        axios.post(API_ROUTER.PHP7_CONTROLLER +'uploadFile/upload_logo.php', formData, {
            headers: { 'Content-Type': 'multipart/form-data' }
         }).then(res =>{

            if(res.data.response == 'success'){
                this.ImageServiceLoad = API_ROUTER.API_UI +"grupos/"+ res.data.image              
            }

            new Noty({
            theme: "sunset",
            layout: "topRight",
            progressBar: true,
            closeWith: ["click", "button"],
            timeout: 8000,
            type: res.data.response,
            text: res.data.mensaje,
          }).show();

          this.$router.replace("/constructor-service/" + this.CodeServiseRegistred);

        })
      }, 
      SaveInitialForm: function () {
        axios.post(API_ROUTER.PHP7_CONTROLLER + "build/create_build_first_step.php", {
          ServiceType: this.$route.params.type_service,
          ServiceFather: this.$route.params.id_service_father,
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
            if(this.ServiceType == 1){
               this.ShowBasic = 2 
               this.CodeServiseRegistred = response.data.code
            }           
          }
        });
      },
    },
  };
</script>