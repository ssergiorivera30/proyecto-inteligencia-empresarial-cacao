<template>
   <div class="mx-auto 2xl:max-w-screen-md">
      <div class="grid grid-cols-1 mb-10">

          <!-- <div role="alert" class="sm:mr-6 mt-16 sm:mt-6 mb-6 sm:mb-0 xl:w-5/12 z-50 mx-auto absolute left-0 sm:left-auto right-0 sm:top-0 sm:w-1/2 w-10/12 bg-white dark:bg-gray-800 shadow-lg rounded flex pr-4 py-4 transition duration-150 ease-in-out" id="notification">
                        <button aria-label="close" class="absolute right-0 mr-4 text-gray-500 dark:text-gray-100 dark:hover:text-gray-400 hover:text-gray-600 transition duration-150 ease-in-out cursor-pointer focus:ring-2 focus:outline-none focus:ring-gray-500 rounded" onclick="closeModal()">
                            <svg  xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-x" width="20" height="20" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" />
                                <line x1="18" y1="6" x2="6" y2="18" />
                                <line x1="6" y1="6" x2="18" y2="18" />
                            </svg>
                        </button>
                        <div class="pr-3 pl-4">
                            <div class="h-12 w-12 sm:h-10 sm:w-10 rounded-full">
                                <img src="https://tuk-cdn.s3.amazonaws.com/assets/components/notifications/n_1.png" alt="Avatar display" role="img" class="h-full w-full object-cover rounded-full shadow" />
                            </div>
                        </div>
                        <div>
                            <p class="text-sm text-gray-800 dark:text-gray-100 font-semibold">Ashley Wilson</p>
                            <p class="text-xs text-gray-600 dark:text-gray-400 font-normal">Has requested to follow you.</p>
                            <div class="flex items-center pt-2">
                                <button class="focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-700 bg-indigo-700 transition duration-150 ease-in-out hover:bg-indigo-600 rounded text-white px-5 py-1 text-xs">Accept</button>
                                <button class="bg-gray-200 dark:bg-gray-700 dark:text-indigo-600 dark:hover:bg-gray-600 transition duration-150 ease-in-out focus:outline-none focus:ring-2 focus:ring-offset-2  focus:ring-gray-300 hover:bg-gray-300 rounded text-indigo-700 px-5 py-1 text-xs ml-2" onclick="closeModal()">Decline</button>
                            </div>
                        </div>
                    </div> -->
                  

         <ServicePreviewBasicInfo :ServiceName="ServiceName" :ServiceDescription="ServiceDescription" />

         <div class="flex items-baseline flex-wrap my-5 justify-center md:justify-start ">
            <div class="flex border-l border-t border-b rounded">
               <a href="javascript:history.back()"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200 ">
                  <div class="flex leading-5">
                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-chevron-left w-5 h-5">
                        <polyline points="15 18 9 12 15 6"></polyline>
                     </svg>
                     <span class="hidden md:block">Atrás</span>
                  </div>
               </a>

               <button @click="OrdenVisivility(true), InputIdEidtAsigned = null, open = true"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200">
                  <div class="flex leading-4">
                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-edit w-5 h-5 mr-1">
                        <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                        <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                     </svg>
                     <span class="hidden md:block">Agregar campos</span>
                  </div>
               </button>

               <button @click="EditHeaderTitleDescriptionService = false"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200">
                  <div class="flex leading-5">
                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-edit w-5 h-5 mr-1">
                        <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                        <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                     </svg>
                     <span class="hidden md:block">Editar encabezado</span>
                  </div>
               </button>

               <button @click="SaveNewForm()"
                  class="text-sm border-r focus:outline-none flex justify-center px-4 py-2 font-bold cursor-pointer hover:bg-gray-200 ">
                  <div class="flex leading-5">

                     <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-save w-5 h-5 mr-1">
                        <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path>
                        <polyline points="17 21 17 13 7 13 7 21"></polyline>
                        <polyline points="7 3 7 8 15 8"></polyline>
                     </svg>
                     <span class="hidden md:block">{{ OrderInfoBasicForm }}</span>
                  </div>
               </button>

               
            </div>
         </div>

<!-- 
         <div class="flex items-center justify-center sm:px-0 ">
            <div id="alert"
               class="bg-gray-100 w-full transition duration-150 ease-in-out shadow rounded-md md:flex justify-between items-center top-0 my-4 py-4 px-4">
               <div class="sm:flex items-center ">
                  <div class="flex items-center">
                     <div class="mr-2 mt-0.5 sm:mt-0 text-green-600">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"
                           fill="currentColor">
                           <path class="heroicon-ui"
                              d="M12 22a10 10 0 1 1 0-20 10 10 0 0 1 0 20zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm0-9a1 1 0 0 1 1 1v4a1 1 0 0 1-2 0v-4a1 1 0 0 1 1-1zm0-4a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                        </svg>
                     </div>
                     <p class="text-base text-gray-700">
                        <span class="mr-1 text-base font-bold text-gray-700">Información:</span>
                        Este modelo de formularios te permitirá personalizar las entradas de información al sistema.
                     </p>
                  </div>
               </div>
               <div class="flex justify-end mt-4 md:mt-0 md:pl-4 lg:pl-0">
                  <span class="text-sm mr-4 font-bold cursor-pointer text-gray-700">Detalles</span>
                  <span class="text-sm mr-4 font-bold cursor-pointer text-gray-700">Cerrar</span>
               </div>
            </div>
         </div> -->

         <form 
            v-if="EditHeaderTitleDescriptionService === false"
            @submit.prevent="UpdateInfoBasicForm(), EditHeaderTitleDescriptionService = true"
            class="grid gap-x-4 gap-y-1">

            <div class="block">
               <label class="text-gray-700 font-semibold text-xs">Nombre</label>
               <input type="text" class="form-control2" required v-model="ServiceName">
            </div>

            <div>
               <div class="block">
                  <label class="text-gray-700 font-semibold text-xs">Descripción</label>
                  <textarea rows="8" class="form-control2 py-2" required v-model="ServiceDescription"></textarea>
               </div>
               <p class="mt-1 text-sm text-gray-500">
                  * Esta información se puede actualizar posteriormente.
               </p>
            </div>

            <div class="my-1 text-left">
               <button type="submit" class="btn-indigo">Actualizar</button>
               <button type="button" @click="EditHeaderTitleDescriptionService = true" class="mr-3 btn-light">Cancelar</button>
            </div>
         </form>


         

         <ServicePreviewFormEditor 
            v-show="ArrayInputs.length && EditHeaderTitleDescriptionService == true "
            :ServiceName="ServiceName"
            :ServiceDescription="ServiceDescription"
            :ArrayInputs="ArrayInputs"
            @GetIdEdit="AsignedIdEdit" />

         <div class="py-5 text-left ">
            <button @click="SaveNewForm()" type="button" class="mr-3 btn-indigo">{{ OrderInfoBasicForm }}</button>
         </div>

         <div>
      </div>
   </div>

      <TransitionRoot as="template" :show="open">
         <Dialog as="section" static class="fixed inset-0 overflow-hidden" @close="open = false" :open="open">
            <div class="absolute inset-0 overflow-hidden">
               <TransitionChild as="template" enter="ease-in-out duration-500" enter-from="opacity-0"
                  enter-to="opacity-100" leave="ease-in-out duration-500" leave-from="opacity-100" leave-to="opacity-0">
                  <DialogOverlay class="absolute inset-0 bg-gray-500 bg-opacity-75 transition-opacity" />
               </TransitionChild>
               <div class="pt-14 fixed inset-y-0 right-0 pl-10 max-w-full flex">
                  <TransitionChild as="template" enter="transform transition ease-in-out duration-500 sm:duration-700"
                     enter-from="translate-x-full" enter-to="translate-x-0"
                     leave="transform transition ease-in-out duration-500 sm:duration-700" leave-from="translate-x-0"
                     leave-to="translate-x-full">
                     <div class="relative w-screen max-w-md">
                        <TransitionChild as="template" enter="ease-in-out duration-500" enter-from="opacity-0"
                           enter-to="opacity-100" leave="ease-in-out duration-500" leave-from="opacity-100"
                           leave-to="opacity-0">
                           <div class="absolute top-0 left-0 -ml-8 pt-4 pr-2 flex sm:-ml-10 sm:pr-4">
                              <button
                                 class="rounded-md text-gray-300 hover:text-white focus:outline-none focus:ring-2 focus:ring-white"
                                 @click="open = false">
                                 <span class="sr-only">Close panel</span>
                                 <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" aria-hidden="true" fill="none"
                                    viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                       d="M6 18L18 6M6 6l12 12" />
                                 </svg>
                              </button>
                           </div>
                        </TransitionChild>
                        <div class="h-full flex flex-col py-6 bg-white shadow-xl overflow-y-scroll">
                           <div class="px-4 sm:px-6">
                              <DialogTitle v-if="InputIdEidtAsigned == null" class="text-lg font-medium text-gray-900">Crear entrada de datos</DialogTitle>
                              <DialogTitle v-else class="text-lg font-medium text-gray-900">Editar entrada de datos</DialogTitle>
                           </div>
                           <div class="relative flex-1 px-4 sm:px-6">
                              <!-- Replace with your content -->
                              <div class="absolute inset-0 px-4 sm:px-6">

                                 <!--  crear  -->

                                 <form @submit.prevent="AddInput" v-if="InputIdEidtAsigned == null" autocomplete="off" class="my-10">
                                    <div class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-x-4 gap-y-2">
                                       <div class="block">
                                          <label class="text-gray-700 font-semibold text-xs">Tipo de campo</label>
                                          <select class="form-control2" required v-model="InputType"
                                             @change="AttributeInputVisivility">
                                             <option value="text">Respuesta corta</option>
                                             <option value="number">Númerico</option>
                                             <option value="select">Lista desplegable</option>
                                             <option value="textarea">Parrafo</option>
                                             <option value="email">Email</option>
                                             <option value="checkbox">Selección multiple</option>
                                             <option value="radio">Selección única</option>
                                             <option value="file">Archivo</option>
                                             <option value="password">Contraseña</option>
                                             <option value="url">Dirección web</option>
                                             <option value="date">Fecha</option>
                                             <option value="datetime-local">Fecha y hora</option>
                                             <option value="time">Hora</option>
                                             <option value="color">Color</option>
                                          </select>
                                       </div>

                                       <div class="block">
                                          <label class="text-gray-700 font-semibold text-xs">Nombre del campo</label>
                                          <input type="text" class="form-control2" placeholder="" required v-model="InputName">
                                       </div>

                                       <div class="block">
                                          <label class="text-gray-700 font-semibold text-xs">Obligatorio</label>
                                          <select class="form-control2" required v-model="InputRequired">
                                             <option value="false">No</option>
                                             <option value="true">Si</option>
                                          </select>
                                       </div>

                                       <div class="block" v-if="SelectedTypeOptions == 0">
                                          <label class="text-gray-700 font-semibold text-xs">Placeholder</label>
                                          <input type="text" class="form-control2" v-model="InputPlaceholder">
                                       </div>

                                       <div class="block" v-if="SelectedTypeOptions == 0">
                                          <label class="text-gray-700 font-semibold text-xs">Valor por defecto</label>
                                          <input :type="InputType" class="form-control2" v-model="InputValue">
                                       </div>
                                    </div>

                                    <form v-if="SelectedTypeOptions == 1" @submit.prevent="AddOptionForm()"
                                       class="relative mt-8 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-4">

                                       <div v-for="(ACheck, index) in ArrayOptions" :key="index" class="block">
                                          <label class="grid grid-cols-3 gap-4">
                                             <span class="text-gray-700 font-semibold">Opción</span>
                                             <span class="fa fa-trash cursor-pointer"
                                                @click="DeleteOption(index)"></span>
                                          </label>
                                          <input type="text" :name="'name'+index" class="form-control2"
                                             v-model="ACheck['option']['value']" required>
                                       </div>

                                       <button type="submit" v-if="SelectedTypeOptions == 1" class="mt-5 btn-gray">
                                          <i class="fa fa-plus pt-1 mr-2"></i> Agregar opción
                                       </button>
                                    </form>

                                    <div v-if="InputType != '' && InputName != '' " class="py-10 text-left ">
                                       <button type="submit" class="mr-3 btn-indigo">
                                          Crear entrada de datos
                                       </button>
                                       <!-- <button type="submit" class=" btn-green2">Terminar y guardar </button> -->
                                    </div>
                                 </form>

                                 <!-- Editar -->

                                 <div v-if="InputIdEidtAsigned != null">

                                    <form @submit.prevent="open = false, SaveNewForm()"
                                       v-for="(inputEdit, index) in ArrayInputs[InputIdEidtAsigned]" 
                                       :key="index"
                                       :id="index" 
                                       autocomplete="off" 
                                       class="my-10">

                                       <div class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-x-4 gap-y-2">
                                          <div class="block">
                                             <label class="text-gray-700 font-semibold text-xs">Tipo de campo</label>
                                             <select class="form-control2" required v-model="inputEdit.type"
                                                @change="AttributeInputVisivility">
                                                <option value="text">Respuesta corta</option>
                                                <option value="number">Númerico</option>
                                                <option value="select">Lista desplegable</option>
                                                <option value="textarea">Parrafo</option>
                                                <option value="email">Email</option>
                                                <option value="checkbox">Selección multiple</option>
                                                <option value="radio">Selección única</option>
                                                <option value="file">Archivo</option>
                                                <option value="password">Contraseña</option>
                                                <option value="url">Dirección web</option>
                                                <option value="date">Fecha</option>
                                                <option value="datetime-local">Fecha y hora</option>
                                                <option value="time">Hora</option>
                                                <option value="color">Color</option>
                                             </select>
                                          </div>
                                          <div class="block">
                                             <label  class="text-gray-700 font-semibold text-xs">Nombre del campo</label>
                                             <input type="text" class="form-control2" placeholder="" required v-model="inputEdit.name">
                                          </div>
                                          <div class="block">
                                             <label  class="text-gray-700 font-semibold text-xs">Obligatorio</label>
                                             <select class="form-control2" required v-model="inputEdit.required">
                                                <option value="false">No</option>
                                                <option value="true">Si</option>
                                             </select>
                                          </div>

                                          <div class="block"
                                             v-if="inputEdit.type != 'checkbox' && inputEdit.type != 'radio' && inputEdit.type !='select' ">
                                             <label class="text-gray-700 font-semibold text-xs">Placeholder</label>
                                             <input type="text" class="form-control2" v-model="inputEdit.placeholder">
                                          </div>

                                          <div class="block"
                                             v-if="inputEdit.type != 'checkbox' && inputEdit.type != 'radio' && inputEdit.type !='select' ">
                                             <label class="text-gray-700 font-semibold text-xs">Valor por defecto</label>

                                             <textarea v-if="inputEdit.type == 'textarea'" rows="12" :name="'name'+index" class="form-control2" v-model="inputEdit.value"></textarea>                                           
                                             <input v-else :type="inputEdit.type" class="form-control2" v-model="inputEdit.value">
                                          </div>
                                       </div>




                                       <form @submit.prevent="AddOptionFormEdit()"
                                          v-if="inputEdit.type == 'checkbox' || inputEdit.type == 'radio' || inputEdit.type =='select' "
                                          :id="'a_'+index"
                                          class="relative mt-3 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-4"
                                          autocomplete="off">
                                          <div v-for="(ACheck, index) in inputEdit.options" :key="index" class="block">

                                             <label class="grid grid-cols-5 gap-4">
                                                <span class="col-span-3 text-gray-700 font-semibold text-xs">Opción {{ index + 1 }} </span>
                                                <div class="col-span-2 flex justify-end">
                                                <span 
                                                   class="cursor-pointer font-normal hover:font-semibold	group flex rounded-md items-center px-2 py-2 text-sm"
                                                   @click="DeleteOptionEdit(index)">Eliminar opción</span>
                                                </div>
                                             </label>
                                             
                                             <input type="text" :name="'name'+index" class="form-control2" v-model="ACheck['option']['value']" required>


                                          </div>

                                          <button type="submit"
                                             v-if="inputEdit.type == 'checkbox' || inputEdit.type == 'radio' || inputEdit.type =='select' "
                                             class="mt-5 btn-gray">
                                             <i class="fa fa-plus pt-1 mr-2"></i> Agregar opción
                                          </button>
                                       </form>

                                       <div v-if="inputEdit.type != '' && inputEdit.name != '' "
                                          class="py-5 text-left ">
                                          <button type="submit" class="mr-3 btn-indigo">
                                             Actualizar
                                          </button>
                                          <button type="submit" class="mr-3 btn-light">
                                             Cancelar
                                          </button>
                                       </div>

                                    </form>
                                 </div>



                              </div>
                              <!-- /End replace -->
                           </div>
                        </div>
                     </div>
                  </TransitionChild>
               </div>
            </div>
         </Dialog>
      </TransitionRoot>



   </div>


</template>
<script>

   import axios from "axios"
   import Noty from "noty";
   import API_ROUTER from "./../../services/SERVER_API"
   import ArlertBasic from './../../components/Overlay/ArlertBasic'

   import { ref } from 'vue'
   import { Dialog, DialogOverlay, DialogTitle, TransitionChild, TransitionRoot } from '@headlessui/vue'

   import ServicePreviewFormEditor from "./../../components/BuildServices/ServicePreviewFormEditor"

   import ServicePreviewBasicInfo from "./../../components/BuildServices/ServicePreviewBasicInfo"


   export default {
      components: {
         ServicePreviewFormEditor,
         ServicePreviewBasicInfo,
         Dialog,
         DialogOverlay,
         DialogTitle,
         TransitionChild,
         TransitionRoot,
         ArlertBasic
      },
      setup() {
         const open = ref(false)

         return {
            open,
         }
      },
      data() {
         return {
            name: 'BuildSecondStep',
            OrderInfoBasicForm: 'Guardar',
            ServiceName: '',
            ServiceDescription: '',
            EditHeaderTitleDescriptionService: true,
            MinMax: 0,
            Size: 0,
            SelectedTypeOptions: 0,

            InputName: '',
            InputType: 'text',
            InputRequired: false,
            InputPlaceholder: '',
            InputValue: '',
            InputMinlength: '',
            InputMaxlength: '',
            InputSize: '',
            InputMin: '',
            InputMax: '',

            ArrayInputs: [],
            ArrayOptions: [],

            InputIdEidtAsigned: null,
          
         }
      },
      mounted: function () {
         this.LoadBasicInfoService()      
      },
      methods: {

         AsignedIdEdit: function (value) {
            this.InputIdEidtAsigned = value
            this.open = true
         },

         AddOptionForm() {
            this.ArrayOptions.push({
               option: {
                  value: ''
               }
            })
         },

         AddOptionFormEdit() {
            this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'].push({
               option: {
                  value: ''
               }
            })
         },

         DeleteOptionEdit(index) {
            this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'].splice(index, 1)
         },

         DeleteOption: function (index) {
            this.ArrayOptions.splice(index, 1);
         },



         AddInput: function () {
            this.ArrayInputs.push(
               {
                  input: {
                     'name': this.InputName,
                     'type': this.InputType,
                     'required': this.InputRequired,
                     'placeholder': this.InputPlaceholder,
                     'value': this.InputValue,
                     'minlength': this.InputMinlength,
                     'maxlength': this.InputMaxlength,
                     'size': this.InputSize,
                     'min': this.InputMin,
                     'max': this.InputMax,
                     'edit': 0,
                     'options': this.ArrayOptions,
                  }

               }
            );

            this.InputName = ''
            this.InputType = 'text'
            this.InputRequired = false
            this.InputPlaceholder = ''
            this.InputValue = ''
            this.InputMinlength = ''
            this.InputMaxlength = ''
            this.InputSize = ''
            this.InputMin = ''
            this.InputMax = ''
            this.ArrayOptions = []
         },

         AddInputEdit: function () {

            // console.log(this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'])

            if (this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'checkbox' &&
               this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'radio' &&
               this.ArrayInputs[this.InputIdEidtAsigned]['input']['type'] != 'select') {

               this.ArrayInputs[this.InputIdEidtAsigned]['input']['options'] = []
            }

            this.InputType = 'text'
            this.InputIdEidtAsigned = null


         },

         OrdenVisivility: function (orden) {
            // this.EditHeaderTitleDescriptionService = orden
         },

         SizeAndMaxLenght: function () {
            this.InputSize = this.InputMaxlength
         },

         AttributeInputVisivility: function () {
            this.MinMax = 0
            this.Size = 0
            this.SelectedTypeOptions = 0

            if (this.InputType == 'number' ||
               this.InputType == 'date' ||
               this.InputType == 'datetime' ||
               this.InputType == 'month' ||
               this.InputType == 'hour' ||
               this.InputType == 'week') {

               this.MinMax = 1
            }

            if (this.InputType == 'text' ||
               this.InputType == 'tel' ||
               this.InputType == 'url' ||
               this.InputType == 'email' ||
               this.InputType == 'password') {

               this.Size = 1
            }

            if (this.InputType == 'checkbox' ||
               this.InputType == 'radio' ||
               this.InputType == 'select') {

               this.SelectedTypeOptions = 1
            }

            this.ArrayOptions = []

         },

         // PETICIONES A LA BASES DE DATOS

         SaveNewForm: function () {

            axios.post(API_ROUTER.PHP7_CONTROLLER + "build/create_build_second_step.php",
               {
                  id_service: parseInt(this.$route.params.id_service),
                  JSON_inputs: this.ArrayInputs
               }).then((response) => {               

                  ArlertBasic.methods.AlertBasic(response.data.icono, response.data.mensaje, 99000, true)

               }).catch(() => {
                  alert('Error de conexión al guardar el servicio')
               })
         },



         UpdateInfoBasicForm: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "service/service_update_basic.php",
               {
                  serviceId: parseInt(this.$route.params.id_service),
                  ServiceName: this.ServiceName,
                  ServiceDescription: this.ServiceDescription
               }).then((response) => {

                  new Noty({
                     theme: "sunset", layout: "topRight", progressBar: true, closeWith: ["click", "button"], timeout: 8000,
                     type: response.data.icono, text: response.data.mensaje
                  }).show();

               }).catch(() => {
                  alert('Error de conexión al actualizar el servicio')
               })
         },

         LoadBasicInfoService: function () {
            axios.post(API_ROUTER.PHP7_CONTROLLER + "build/load_info_basic_service.php",
               {
                  id_service: this.$route.params.id_service,
               }).then((response) => {

                  if (response.data.mensaje != 1) {
                     // window.history.back()
                  }
                  this.ServiceName = response['data']['datos'][0]['name']
                  this.ServiceDescription = response['data']['datos'][0]['description']

                  if (response['data']['datos'][0]['data_json'] != null) {
                     this.ArrayInputs = JSON.parse(response['data']['datos'][0]['data_json'])
                     this.OrderInfoBasicForm = 'Guardar cambios'

                  }

               }).catch(() => {
                  alert('Error de conexión al cargar el servicio')
               })
         },



      }
   }
</script>