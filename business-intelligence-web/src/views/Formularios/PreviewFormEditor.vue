<template>  
      <div class="py-0">

            <form @submit.prevent="guardar" class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-2">

                <div v-for="input in ArrayInputs" :key="input.id">

                  <span v-if="input['input']['type'] == 'checkbox'">
                     <div class="block">
                        <span class="text-gray-700">{{ input['input']['name'] }}</span>
                        <div class="mt-2">
                           <div v-for="option in input['input']['ifCheckbox']" :key="option">
                              <label class="inline-flex items-center">
                                 <input type="checkbox">
                                 <span class="ml-2">{{ option['option']['value']}}</span>
                              </label>
                           </div>                      
                        </div>
                     </div>
                  </span>

                  <span v-if="input['input']['type'] == 'radio'">
                     <div class="block">
                        <span class="text-gray-700">{{ input['input']['name'] }}</span>
                        <div class="mt-2">
                           <div v-for="option in input['input']['ifCheckbox']" :key="option">
                              <label class="inline-flex items-center">
                                 <input type="radio" :name="input['input']['name']">
                                 <span class="ml-2">{{ option['option']['value']}}</span>
                              </label>
                           </div>                      
                        </div>
                     </div>
                  </span>


               <div class="block" v-if="input['input']['type'] != 'checkbox' && input['input']['type'] != 'radio'">
                 
                  <label><span class="text-gray-700 capitalize">{{ input['input']['name'] }}</span></label>

                  <span v-if="input['input']['type'] == 'textarea'">
                     <textarea 
                        :placeholder="input['input']['placeholder']" 
                        :value="input['input']['value']" 
                        cols="30"
                        rows="10"
                        class="form-control2 py-3">
                  </textarea>
                  </span>

                  <span v-else-if="input['input']['type'] == 'select'">
                     <select 
                        :placeholder="input['input']['placeholder']" 
                        :value="input['input']['value']"
                        class="form-control2 py-3">
                        <option value="0">Seleccionar opción</option>
                        <option v-for="option in input['input']['ifCheckbox']" :key="option" value="">{{ option['option']['value'] }}</option>
                     </select>
                  </span>

                                 

                  <span v-else>
                     
                     <input 
                        v-if="input['input']['required'] == 'true'"
                        :type="input['input']['type']" 
                        :placeholder="input['input']['placeholder']"
                        :value="input['input']['value']" 
                        :minlength="input['input']['minlength']"
                        :maxlength="input['input']['maxlength']"
                        :min="input['input']['min']"
                        :max="input['input']['max']"
                        required 
                        class="form-control2 py-3">

                        <input 
                         v-else
                        :type="input['input']['type']" 
                        :placeholder="input['input']['placeholder']"
                        :value="input['input']['value']" 
                        :minlength="input['input']['minlength']"
                        :maxlength="input['input']['maxlength']"
                        :min="input['input']['min']"
                        :max="input['input']['max']"                        
                        class="form-control2 py-3">
                  </span>
                  </div>
               </div>

               

               <!-- <div class="py-1 text-left" v-if="ArrayInputs.length  > 0">
                  <button type="submit"
                     class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-green-400 hover:bg-green-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-green-400">
                     Guardar
                  </button>
               </div> -->
            </form>

           

            <!-- <details><pre>{{ ArrayInputs.length  }}</pre></details> -->
        
      </div>
</template>

<script>

   export default {
      props: {
         NameForm: String,
         DescriptionForm: String,
         ArrayInputs: Object
      },
      data() {
         return {
            name: 'PreviewFormEditor',
         }
      },
      mounted: function () {

      },
      methods: {
         guardar: function () {
            console.log('Guardar')
         }
      }
   }
</script>