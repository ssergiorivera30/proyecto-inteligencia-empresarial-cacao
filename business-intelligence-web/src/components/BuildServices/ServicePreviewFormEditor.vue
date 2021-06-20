<template>
   <div class="py-0">
      <form autocomplete="off">
         <draggable class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-2" :list="ArrayInputs">
            <div v-for="(input, index) in ArrayInputs" :key="index">
              
              
               <div class="block">


                  <label class="grid grid-cols-5 gap-4 items-center">
                     <div class="col-span-4 text-gray-700 font-medium text-white group flex items-center">                     
                        <img src="./../../assets/draggable.svg" alt="" width="20" height="20" class="cursor-move" @mousedown="HoverDragg(index)" />{{ input['input']['name'] }} 
                     </div>
                     <div class="flex justify-end">
                        <span class="group cursor-pointer flex rounded-md items-center px-2 py-2 text-sm" @click="SendIdEdit(index)" title="Editar">Editar</span>                                     
                        <span class="group cursor-pointer flex rounded-md items-center px-2 py-2 text-sm" @click="DeleteOption(index)" title="Eliminar">Eliminar</span>
                     </div>
                  </label>



                  <div class="mt-2" v-if="input['input']['type'] == 'radio'">
                     <div v-for="option in input['input']['options']" :key="option">
                        <label class="inline-flex items-center">
                           <input type="radio" :name="input['input']['name']" v-model="input['input']['value']">
                            <span class="rounded-full px-3 py-1 ml-2 text- text-sm capitalize">{{ option['option']['value']}}</span>
                        </label>
                     </div>
                  </div>



                  <div class="mt-2" v-if="input['input']['type'] == 'checkbox'">
                     <div v-for="(option, index) in input['input']['options']" :key="index">
                        <label class="inline-flex items-center my-2">
                           <input type="checkbox">
                           <span class="rounded-full px-3 py-1 ml-2 text- text-sm capitalize">{{ option['option']['value']}}</span>
                        </label>
                     </div>
                  </div>
               </div>

               <!-- SECCION DE CAMPOS ESPECIALES -->

               <div class="block" v-if="input['input']['type'] == 'textarea'">
                  <div>
                     <textarea :placeholder="input['input']['placeholder']" v-model="input['input']['value']" cols="30" rows="10" class="form-control2 py-3"></textarea>
                  </div>
               </div>

               <div class="block" v-if="input['input']['type'] == 'select'">
                   <div>
                     <select v-if="input['input']['sub_option_other'] === 1" :placeholder="input['input']['placeholder']" :value="input['input']['value']" class="form-control2 py-3">
                        <option value="" selected>Seleccionar opción</option>
                        <option v-for="option in input['input']['options']" :key="option" :value="option['option']['value']">{{ option['option']['value'] == '/otro' ? option['option']['value'].slice(1) : option['option']['value'] }}</option>
                     </select>

                      <select v-if="input['input']['sub_option_other'] === 2" :placeholder="input['input']['placeholder']" :value="input['input']['value']" class="form-control2 py-3">
                        <option value="" selected>Seleccionar opción</option>
                        <option v-for="option in input['input']['options']" :key="option" :value="option['option']['value']">{{ option['option']['value'] == '/otros' ? option['option']['value'].slice(1) : option['option']['value'] }}</option>
                     </select>
                  </div>

                  <div v-if="input['input']['sub_option_other'] === 1" class="grid grid-cols-12 gap-4 items-center">
                     <div class="col-span-12">
                        <input type="text" class="form-control2 py-3" placeholder="¿Cual?" />
                     </div>                    
                  </div>

                  <div v-if=" input['input']['sub_option_other'] === 2 " class="grid grid-cols-12 gap-4 items-center">
                     <div class="col-span-8">
                        <input type="text" class="form-control2 py-3" placeholder="Agregar opción" />
                     </div>

                     <div class="col-span-3 flex justify-end">
                        <select :placeholder="input['input']['placeholder']" :value="input['input']['value']" class="form-control2 py-3 capitalize">
                           <option value="" selected>Tipo de dato</option>
                           <option v-for="SubTypeOption in input['input']['sub_options_types']" :key="SubTypeOption" >{{ SubTypeOption['type'] }}</option>
                        </select>
                     </div>

                     <div class="col-span-1 flex justify-end">
                         <span class="bx bxs-trash pt-3 cursor-pointer text-gray-500 justify-self-end mr-4"></span>
                    
                         <span class="bx bx-plus pt-3 cursor-pointer text-gray-500 justify-self-end"></span>
                     </div>
                  </div>                     
               </div>



               <div class="block" 
                  v-if="input['input']['type'] === 'text' ||
                        input['input']['type'] === 'number' ||
                        input['input']['type'] === 'email' ||
                        input['input']['type'] === 'password' ||
                        input['input']['type'] === 'url' ||
                        input['input']['type'] === 'date' ||
                        input['input']['type'] === 'datetime-local' ||
                        input['input']['type'] === 'time' ||
                        input['input']['type'] === 'file' ||
                        input['input']['type'] === 'color' ">


                     <input v-if="input['input']['required'] == 'true'" 
                        :type="input['input']['type']"
                        v-model="input['input']['value']"
                        :placeholder="input['input']['placeholder']"
                        :value="input['input']['value']"
                        :minlength="input['input']['minlength']" 
                        :maxlength="input['input']['maxlength']"
                        :min="input['input']['min']"
                        :max="input['input']['max']"
                        required 
                        class="form-control2 py-3">

                     <input v-else 
                        :type="input['input']['type']" 
                        :placeholder="input['input']['placeholder']"
                        v-model="input['input']['value']"                       
                        :value="input['input']['value']" 
                        :minlength="input['input']['minlength']"                        
                        :maxlength="input['input']['maxlength']" 
                        :min="input['input']['min']"
                        :max="input['input']['max']" 
                        class="form-control2 py-3">
               
               </div>

            </div>
         </draggable>
      </form>

      <details class="mt-5 bg-gray-500 text-white rounded p-3">
           <summary>Modo desarrollo</summary>
         <pre>{{ ArrayInputs  }}</pre>
      </details>

   </div>
</template>

<script>

   import { VueDraggableNext } from 'vue-draggable-next'



   export default {
      components: {
         draggable: VueDraggableNext,     
      },

      data() {
         return {
            name: 'ServicePreviewFormEditor',
            enabled: true,
            dragging: false
         }
      },
      props: {
         NameForm: String,
         DescriptionForm: String,
         ArrayInputs: Object,
      },
      mounted: function () {

      },
      methods: {
         log(event) {
            console.log(event)
         },
         SendIdEdit: function (value) {
            this.$emit('GetIdEdit', value)
         },
         guardar: function () {
            console.log('Guardar')
         },
         DeleteOption: function (index) {
            this.$props.ArrayInputs.splice(index, 1);
         },
         HoverDragg: function(index)
         {
            console.log(index)            
         }
      }
   }
</script>