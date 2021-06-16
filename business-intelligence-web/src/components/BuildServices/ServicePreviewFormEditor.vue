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

               <div class="block" v-if="input['input']['type'] != 'checkbox' && input['input']['type'] != 'radio'">

                  <span v-if="input['input']['type'] == 'textarea'">
                     <textarea :placeholder="input['input']['placeholder']" v-model="input['input']['value']" cols="30" rows="10" class="form-control2 py-3"></textarea>
                  </span>
                  
                  <span v-else-if="input['input']['type'] == 'select'">
                     <select :placeholder="input['input']['placeholder']" :value="input['input']['value']" class="form-control2 py-3">
                        <option value="" selected>Seleccionar opción</option>
                        <option v-for="option in input['input']['options']" :key="option" value="">{{ option['option']['value'] }}</option>
                     </select>
                  </span>

                  <span v-else>

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
                  </span>
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