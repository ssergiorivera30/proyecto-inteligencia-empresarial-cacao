<template>
  <div class="grid grid-cols-1 md:grid-cols-2 gap-10">


    <div class="mt-3">
      <header class="flex items-center" @click="ShowBasic = 2 ">
        <a href="javascript:history.back()" class="relative text-white rounded-full focus:outline-none pr-2">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
        </a>
        <h2 class="text-lg leading-6 font-medium text-black">Creación de
          <span class="font-bold">{{ NameTypeService }}</span>
        </h2>
      </header>

      <div v-if="ShowBasic === 2" class="space-y-3 ">
        <div v-if="ServiceType == 1">
        <label class="text-gray-700 font-semibold text-xs">Logo</label>

        <FileUpload 
          :target="RouterUploadImage+'?id='+ CodeServiseRegistred"
          action="POST"
          class="form-control2"/>
      </div>

      <div class="text-left">
        <button type="button" class="btn-light mr-2" @click="ShowBasic = 1 ">
          Atrás
        </button>

        <button type="button" class="btn-primary">
          Continuar
        </button>
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

      <pre>{{ UserMembersSelect }}</pre>

      <div v-if="UserMembersSelect.length  > 0" class="py-1 flex items-center flex-wrap select-none pr-2	">
        <div class="w-12 h-12 bg-cover bg-center rounded-md" 
          v-for="(Members, index) in UserMembersSelect" 
          :key="index" 
          :title="Members.name +' - '+ Members.email"
          @click="UserMembersSelectUpdate = UserMembersSelect[index]"
        >
          <img
            loading="lazy" draggable="false"
            :src="Members.avatar" 
            alt=""
            class="h-full w-full overflow-hidden object-cover rounded-full border-2 border-white dark:border-gray-700 shadow pointer-events-none" />
        </div>
      </div>

       <pre>{{ UserMembersSelectUpdate.length  }}</pre>

      

      <div v-show="UserMembersSelectUpdate.length != 0" class="items-center justify-between">
         <div class="grid grid-cols-12 items-center shadow-sm my-3 px-2 py-2 rounded w-full">

          
          <div class="col-span-2 sm:col-span-1 md:col-span-2 lg:col-span-1 h-10 w-10 ">
            <img :src="UserMembersSelectUpdate['avatar'] " role="img" class="rounded-full object-cover h-full w-full shadow">
          </div>

          <div class="col-span-4 md:col-span-5 lg:col-span-6">
            <p class="text-md text-gray-600 font-bold truncate overflow-ellipsis overflow-hidden">{{ UserMembersSelectUpdate['name'] }}</p>
            <p class="sm:text-md text-sm text-gray-600 truncate overflow-ellipsis overflow-hidden ">{{ UserMembersSelectUpdate['email'] }}</p>
          </div>

          <div class="col-span-1 lg:col-span-1">            
            <h5 class="font-medium">
              <svg @click="UserMembersSelect.splice(index, 1)" xmlns="http://www.w3.org/2000/svg" class="cursor-pointer h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </h5>
          </div>

          <div class="col-span-1 lg:col-span-1">            
            <h5 class="font-medium">              
              <svg @click="UserMembersSelectUpdate = []"  xmlns="http://www.w3.org/2000/svg" class="cursor-pointer h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </h5>
          </div>

          <div class="col-span-2 lg:col-span-3">
            <select class="pr-5 font-medium truncate overflow-ellipsis overflow-hidden bg-gray-50" v-model="UserMembersSelectUpdate['permissions']">
              <option value="1" disabled>Propietario</option>
              <option value="2">Ver</option>
              <option value="3">Editar</option>

            </select>
          </div>

          
        </div>    
      </div>    

      <div v-if="ServiceType == 1 || ServiceType == 2 || ServiceType == 4">
        <label class="text-gray-700 font-semibold text-xs">Integrantes</label>
        <input type="search" class="form-control2" v-model="IdentificatorMember" placeholder="Buscar usuario" @keyup="SearchUser" />
      </div>

      <div class="items-center justify-between">
         <div class="" v-for="(user, index) in UserMembersList" :key="index">

          <!-- <span >{{ UserMembersSelect.find( user => user.email ) }} d</span> -->

              <span >{{ UserMembersSelect.includes('syrivera89@misena.edu.co') }}</span>


          <div class="grid grid-cols-12 items-center shadow-sm my-3 px-2 py-2 rounded w-full">
              <div class="col-span-3 sm:col-span-1 md:col-span-3 lg:col-span-1 h-10 w-10 ">
                <img src="https://cdn.tuk.dev/assets/photo-1544817747-b11e3e3b6ac2.jfif" role="img" class="rounded-full object-cover h-full w-full shadow">
              </div>

              <div class="col-span-5 md:col-span-6 lg:col-span-7">
                <p class="text-md text-gray-600 font-bold truncate overflow-ellipsis overflow-hidden">{{ user.name }}</p>
                <p class="sm:text-md text-sm text-gray-600 truncate overflow-ellipsis overflow-hidden ">{{ user.email }}</p>
              </div>

              <div class="col-span-2 lg:col-span-1">
                <h5 class="font-medium">
                  <svg @click="AddMember(user.code, user.name, user.email, 'https://cdn.tuk.dev/assets/photo-1544817747-b11e3e3b6ac2.jfif', UserMembersList[index]['permissions'] )" xmlns="http://www.w3.org/2000/svg" class="cursor-pointer h-5 w-5 text-principal-color-ui" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                  </svg>
                </h5>
              </div>

              <div class="col-span-2 lg:col-span-3">
                <pre>{{ UserMembersList[index]['permissions'] }}</pre>
                <select class="pr-5 font-medium truncate overflow-ellipsis overflow-hidden bg-gray-50" v-model="UserMembersList[index]['permissions']">
                  <option value="1" disabled>Propietario</option>
                  <option value="2">Ver</option>
                  <option value="3">Editar</option>
                </select>
              </div>
          </div>         


        </div>    
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

        RouterUploadImage: API_ROUTER.API_GENERAL+'file-upload/upload_avatar_team.php',
       
        CodeServiseRegistred: 1,
        
        ShowBasic: 1,

        NameTypeService: '',

        ServiceType: this.$route.params.type_service,
        ServiceName: "",
        ServiceNameEntity: null,
        ServiceDescription: "",

        IdentificatorMember: null,
        UserMembersList: [],
        UserMembersSelect: [],
        UserMembersSelectUpdate: [],       


      };
    },
    mounted: function () {

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
      AddMember: function(code, name, email, avatar, permissions){

        this.UserMembersSelect.push({
          code: code,
          name: name,
          email: email,
          avatar: avatar,
          permissions: permissions 
        })


      },
      SearchUser: function () {

        if(this.IdentificatorMember != null && this.IdentificatorMember != "" && this.IdentificatorMember != " " && this.IdentificatorMember != "  "){        
          axios.post(API_ROUTER.PHP7_CONTROLLER + "permissions/load_user.php", {
            IdentificatorNotMember: this.IdentificatorMember
          }).then((response) => {

            console.log(typeof(response.data) )

            if( typeof(response.data) == 'string'){
              this.UserMembersList = []

            }else{
              this.UserMembersList = response.data
            }

          });

        } else{

          this.UserMembersList = []
        }
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
            if(this.ServiceType == 1){
               this.ShowBasic = 2 
               this.CodeServiseRegistred = response.data.code
            }else{
              this.$router.replace("/constructor-service/" + response.data.code);
            }            
          }
        });
      },
    },
  };
</script>