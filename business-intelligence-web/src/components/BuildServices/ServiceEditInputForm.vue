<template>

<!-- {{ Input_Asigned_By_Edit }} -->

      <TransitionRoot as="template" :show="Input_Asigned_By_Edit != null">
         <Dialog as="section" static class="fixed inset-0 overflow-hidden" @close="open = false, Deactive_Input_Asigned_Edit(null)" :open="open">
            <div class="absolute inset-0 overflow-hidden">
               <TransitionChild as="template" enter="ease-in-out duration-500" enter-from="opacity-0"
                  enter-to="opacity-100" leave="ease-in-out duration-500" leave-from="opacity-100" leave-to="opacity-0">
                  <DialogOverlay class="absolute inset-0 bg-gray-500 bg-opacity-75 transition-opacity" />
               </TransitionChild>
               <div class="fixed inset-y-0 right-0 pl-10 max-w-full flex">
                  <TransitionChild as="template" enter="transform transition ease-in-out duration-500 sm:duration-700"
                     enter-from="translate-x-full" enter-to="translate-x-0"
                     leave="transform transition ease-in-out duration-500 sm:duration-700" leave-from="translate-x-0"
                     leave-to="translate-x-full">
                     <div class="relative w-screen max-w-xl">
                        <TransitionChild as="template" enter="ease-in-out duration-500" enter-from="opacity-0"
                           enter-to="opacity-100" leave="ease-in-out duration-500" leave-from="opacity-100"
                           leave-to="opacity-0">
                           <div class="absolute top-0 left-0 -ml-8 pt-4 pr-2 flex sm:-ml-10 sm:pr-4">
                              <button
                                 class="rounded-md text-gray-300 hover:text-white focus:outline-none focus:ring-2 focus:ring-white"
                                 @click="open = false, Deactive_Input_Asigned_Edit(null)">
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
                              <DialogTitle class="text-lg font-medium text-gray-900">Editar entrada de datos</DialogTitle>
                           </div>
                           <div class="relative flex-1 px-4 sm:px-6">

                              <!-- Replace with your content -->
                              
                              <div class="absolute inset-0 px-4 sm:px-6">



                                    <form 
                                       @submit.prevent="open = false, Save_Input_Edit()"
                                       v-for="(inputEdit, index) in ArrayInputEdit" 
                                       :key="index"
                                       :id="index" 
                                       autocomplete="off" 
                                       class="my-10 pb-10">

                                       <div class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-x-4 gap-y-2">
                                          
                                          <div class="block">
                                             <label  class="text-gray-700 font-semibold text-xs">Nombre del campo</label>
                                             <input type="text" class="form-control2" placeholder="" required v-model="inputEdit.name">
                                          </div>

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


                                       <form @submit.prevent="CRUDOptionInputJSON('edit', null)"
                                          v-if="inputEdit.type == 'checkbox' || inputEdit.type == 'radio' || inputEdit.type =='select' "
                                          :id="'a_'+index"                                          
                                          autocomplete="off">

                                          <draggable :list="inputEdit.options" class="relative mt-3 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-3">


                                          <div v-for="(ACheck, index) in inputEdit.options" :key="index" class="block">

                                        
                                             <label class="grid grid-cols-5 gap-4 items-center">
                                                <div class="col-span-4 group flex items-center text-gray-700 font-semibold text-xs ">                     
                                                   <img src="./../../assets/draggable.svg" alt="" width="20" height="20" class="cursor-move" />Opción {{ index + 1 }}
                                                </div>
                                                <div class="flex justify-end">
                                                     <span class="bx bxs-trash text-gray-500 cursor-pointer justify-self-end" @click="CRUDOptionInputJSON('delete_option_list_edit', index)"></span>
                                                </div>
                                             </label>

                                            
                                             
                                             <!-- <input type="text" :name="'name'+index" class="form-control2" v-model="ACheck['option']['value']" required> -->

                                                 <input type="text" :name="'name'+index" class="form-control2" 
                                                v-model="ACheck['option']['value']" 
                                                required 
                                                @keyup="CRUDSubOptions('edit_other', ACheck['option']['value'])" />

                                          
                                          <div v-if="ACheck['option']['value'] == '/otro' || ACheck['option']['value'] == '/otros'"  >

                                             <div class="grid grid-cols-2 gap-2 my-3">

                                                <label class="inline-flex items-center">
                                                   <input type="radio" :name="'name'+index" v-if="ACheck['option']['value'] == '/otro'" checked>
                                                   <input type="radio" :name="'name'+index" v-else @click="ACheck['option']['value'] = '/otro', CRUDSubOptions('edit_other', '/otro')">
                                                   <span class="ml-2 text-xs">Opción simple</span>
                                                </label>                                         

                                                <label class="inline-flex items-center">
                                                   <input type="radio" :name="'name'+index" v-if="ACheck['option']['value'] == '/otros'" checked>
                                                   <input type="radio" :name="'name'+index" v-else @click="ACheck['option']['value'] = '/otros', CRUDSubOptions('edit_other', '/otros')">
                                                   <span class="ml-2 text-xs">Opciones multiples</span>
                                                </label>

                                             </div>

                                             <div class="block" v-if="ACheck['option']['value'] == '/otro'">
                                                <label class="text-gray-700 font-semibold text-xs">¿Cual?</label>
                                                <input type="text" class="form-control2" placeholder="Una respuesta opcional del usuario" >
                                             </div>

                                             <div class="block" v-if="ACheck['option']['value'] === '/otros'">
                                                <label class="text-gray-700 font-semibold text-xs">El usuario puede agregar multiples respuestas de tipo: texto</label>

                                                <div class="grid grid-cols-6 gap-1 mt-2">

                                                      <div v-if="ArraySubOptionsTypes.option1.state === false" @click="CRUDSubOptions('activate_type_text', 'text')" 
                                                         class="justify-self-center border border-gray-200 rounded w-12 h-12 hover:border-blue-200 cursor-pointer" >
                                                         <i class="text-xl bx bx-text p-3 text-gray-400 hover:text-blue-900"></i>
                                                      </div>

                                                      <div v-else @click="CRUDSubOptions('inactive_type_text', 'text')" 
                                                         class="justify-self-center border-2 rounded w-12 h-12 border-blue-500 cursor-pointer" >
                                                         <i class="text-xl bx bx-text p-3 text-blue-900"></i>
                                                      </div>

                                                      <div v-if="ArraySubOptionsTypes.option2.state === false" @click="CRUDSubOptions('activate_type_file', 'file')"
                                                         class="justify-self-center border border-gray-200 rounded w-12 h-12 hover:border-blue-200 cursor-pointer">
                                                         <i class="text-xl bx bx-folder p-3 text-gray-400 hover:text-blue-900"></i>
                                                      </div>

                                                      <div v-else @click="CRUDSubOptions('inactive_type_file', 'file')" 
                                                         class="justify-self-center border-2 rounded w-12 h-12 border-blue-500 cursor-pointer" >
                                                         <i class="text-xl bx bx-folder p-3 text-blue-900"></i>
                                                      </div>
                                                </div>


                                                <div class="grid grid-cols-6 gap-1 mt-2">  

                                                      <div v-if="ArraySubOptionsTypes.option1.state === true" class="justify-self-center border border-gray-200 rounded w-12 h-12 hover:border-blue-200" >
                                                         <i class="text-xl bx bx-text p-3 text-gray-400 hover:text-blue-900"></i>
                                                      </div>

                                                      <div v-if="ArraySubOptionsTypes.option2.state === true" class="justify-self-center border border-gray-200 rounded w-12 h-12" title="Tipo archivo"><i class="text-xl bx bx-file p-3 text-gray-400"></i></div>
                                                      <div v-if="ArraySubOptionsTypes.option2.state === true" class="justify-self-center border border-gray-200 rounded w-12 h-12" title="Tipo PDF"><i class="text-xl bx bxs-file-pdf p-3 text-gray-400"></i></div>
                                                      <div v-if="ArraySubOptionsTypes.option2.state === true" class="justify-self-center border border-gray-200 rounded w-12 h-12" title="Tipo DOC, DOCX"><i class="text-xl bx bxs-file-doc p-3 text-gray-400"></i></div>
                                                      <div v-if="ArraySubOptionsTypes.option2.state === true" class="justify-self-center border border-gray-200 rounded w-12 h-12" title="Tipo PNG, JPEG, JPG"><i class="text-xl bx bxs-file-png p-3 text-gray-400"></i></div>
                                                      <div v-if="ArraySubOptionsTypes.option2.state === true" class="justify-self-center border border-gray-200 rounded w-12 h-12" title="Tipo JSON"><i class="text-xl bx bxs-file-json p-3 text-gray-400"></i></div>
                                                      
                                                </div>
                                             </div>
                                          </div> 


                                          </div>

                                          </draggable>

                                          <!-- <pre>{{ inputEdit['sub_option_other'] }}</pre> -->

                                         

                                          <button type="submit"
                                             v-if="inputEdit.type == 'checkbox' || inputEdit.type == 'radio' || inputEdit.type =='select' && inputEdit['sub_option_other'] == 0 "
                                             class="mt-5 btn-gray w-full">
                                             <i class="bx bx-plus pt-1 mr-2"></i> Agregar opción
                                          </button>


                                       </form>

                                       <div v-if="inputEdit.type != '' && inputEdit.name != '' "
                                          class="py-5 text-left ">
                                          <button type="submit" class="mr-3 btn-indigo">
                                             Actualizar
                                          </button>
                                          <button type="button" class="mr-3 btn-light" @click="open = false">
                                             Cancelar
                                          </button>
                                       </div>

                                    </form>

                                      <details class="mt-10 p-3 bg-gray-500 text-white rounded">
                                    <summary>Editor de campos</summary>
                                    <pre>{{ ArrayInputEdit  }}</pre>
                                 </details>

                             
                              </div>
                          
                           </div>
                        </div>
                     </div>
                  </TransitionChild>
               </div>
            </div>
         </Dialog>
      </TransitionRoot>



</template>

<script>

   import { ref } from 'vue'
   import { Dialog, DialogOverlay, DialogTitle, TransitionChild, TransitionRoot } from '@headlessui/vue'
    import { VueDraggableNext } from 'vue-draggable-next'



   export default {
      name: 'ServiceEditInputForm',
      components:{
         Dialog,
         DialogOverlay,
         DialogTitle,
         TransitionChild,
         TransitionRoot,
         draggable: VueDraggableNext,
      },
      setup() {
         const open = ref(true)
         return {
            open,
         }
      },
       data() {
         return {
           
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

        
            ArrayOptions: [],

            SelectedTypeOptions: 0,

            ArraySubOptionsTypes: {
               option1: {
                  type: '',
               },
               option2: {
                  type: '',
               }
            },
            ArraySubOptionsValues: [],
          
         }
      },
      props: {
         ArrayInputEdit: Object,
         Input_Asigned_By_Edit:Number
     
      },
      mounted: function () {

       
      },
      methods: {

         Deactive_Input_Asigned_Edit: function (Desactive) {
            this.open = false            
            this.$emit('Deactive_Input_Edit', Desactive)
         },

         Save_Input_Edit: function (){
            this.open = false 
            this.$emit('UpdateEditInput', this.$props.Input_Asigned_By_Edit, this.$props.ArrayInputEdit)
         },
         CRUDOptionInputJSON: function(order, index) {   

            if( order === 'add' && this.sub_option_other == 0 ){
               this.ArrayOptions.push({
                  option: {
                     value: ''
                  }
               })
            }

            if(order === 'edit'){
               this.$props.ArrayInputEdit['input']['options'].push({
                  option: {
                     value: ''
                  }
               })
            }

            if(order === 'delete_option_list_create'){

               this.ArrayOptions.splice(index, 1);
            }

            if(order === 'delete_option_list_edit'){

               this.$props.ArrayInputEdit['input']['options'].splice(index, 1)
            }            
         },
          CRUDSubOptions: function(order, type){
            var existOtro = false;
            var existOtroNumero = 0;
       
           this.ArrayOptions.forEach((element, index) => {
               if (element.option.value == '/otro' || element.option.value == '/otros'){
                  existOtro = true;
                  existOtroNumero = existOtroNumero + 1;
                  if(existOtroNumero > 1){
                     this.ArrayOptions.splice(index, 1)                  
                  }
               }
            });
   
            if( order === 'edit_other' && type == '/otro'){ this.sub_option_other = 1 }
            if( order === 'edit_other' && type == '/otros'){ this.sub_option_other = 2 }
            if( order === 'edit_other' && type != '/otro' && type != '/otros' && existOtro == false ){ this.sub_option_other = 0 }
            if( order === 'activate_type_text' ){ this.ArraySubOptionsTypes.option1.type = 'text' }
            if( order === 'inactive_type_text' ){ this.ArraySubOptionsTypes.option1.type = '' }
            if( order === 'activate_type_file' ){ this.ArraySubOptionsTypes.option2.type = 'file' }
            if( order === 'inactive_type_file' ){ this.ArraySubOptionsTypes.option2.type = '' }
         },   

         

             
         AddInput: function () {
            

            var NowData = new Date();
            var NowNumber = Math.floor(Math.random() * (111 - 999)) + 999;
            var TokenValue = this.$route.params.id_service + NowData.getDate() + NowData.getHours() + NowData.getMinutes() + NowData.getSeconds() +  NowData.getTime() + NowNumber;

            this.ArrayInputs.push(
               {
                  input: {
                     'name': this.InputName,
                     'type': this.InputType,
                     'required': this.InputRequired,
                     'placeholder': this.InputPlaceholder,
                     'value': this.InputValue,
                     'token': 'c'+TokenValue,
                     'minlength': this.InputMinlength,
                     'maxlength': this.InputMaxlength,
                     'size': this.InputSize,
                     'min': this.InputMin,
                     'max': this.InputMax,
                     'edit': 0,
                     'options': this.ArrayOptions,
                     'sub_option_other': this.sub_option_other,
                     'sub_options_types': this.ArraySubOptionsTypes,
                     'sub_options_values': this.ArraySubOptionsValues,                     
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
            this.sub_option_other = 0
            this.ArraySubOptions = []

            // this.Send_Input_JSON_Mayor()
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
        
      }
   }
</script>