<template>
   <div class="py-0">
      <form @submit.prevent="guardar"
         class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-2">

         <div v-for="(input, index) in ArrayInputs" :key="index">
            <div class="block">
               <label class="grid grid-cols-5 gap-4 items-center">
                  <span class="col-span-4 text-gray-700 font-medium">{{ input['input']['name'] }}</span>
                  <div class="text-right">
                     <span class="fa fa-trash cursor-pointer mx-2" @click="DeleteOption(index)"></span>
                     <span class="fa fa-pencil cursor-pointer mx-2" @click="SendIdEdit(index)"></span>
                  </div>
               </label>

               <div class="mt-2" v-if="input['input']['type'] == 'radio'">
                  <div v-for="option in input['input']['options']" :key="option">
                     <label class="inline-flex items-center">
                        <input type="radio" :name="input['input']['name']">
                        <span class="ml-2">{{ option['option']['value']}}</span>
                     </label>
                  </div>
               </div>

               <div class="mt-2" v-if="input['input']['type'] == 'checkbox'">
                  <div v-for="option in input['input']['options']" :key="option">
                     <label class="inline-flex items-center">
                        <input type="checkbox">
                        <span class="ml-2">{{ option['option']['value']}}</span>
                     </label>
                  </div>
               </div>
            </div>

            <div class="block" v-if="input['input']['type'] != 'checkbox' && input['input']['type'] != 'radio'">

               <span v-if="input['input']['type'] == 'textarea'">
                  <textarea :placeholder="input['input']['placeholder']" :value="input['input']['value']" cols="30"
                     rows="10" class="form-control2 py-3">
                  </textarea>
               </span>

               <span v-else-if="input['input']['type'] == 'select'">
                  <select :placeholder="input['input']['placeholder']" :value="input['input']['value']"
                     class="form-control2 py-3">
                     <option value="" selected>Seleccionar opción</option>
                     <option v-for="option in input['input']['options']" :key="option" value="">{{
                        option['option']['value'] }}</option>
                  </select>
               </span>

               <span v-else>

                  <input v-if="input['input']['required'] == 'true'" :type="input['input']['type']"
                     :placeholder="input['input']['placeholder']" :value="input['input']['value']"
                     :minlength="input['input']['minlength']" :maxlength="input['input']['maxlength']"
                     :min="input['input']['min']" :max="input['input']['max']" required class="form-control2 py-3">

                  <input v-else :type="input['input']['type']" :placeholder="input['input']['placeholder']"
                     :value="input['input']['value']" :minlength="input['input']['minlength']"
                     :maxlength="input['input']['maxlength']" :min="input['input']['min']" :max="input['input']['max']"
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
      <details>
         <pre>{{ ArrayInputs  }}</pre>
      </details>
   </div>
</template>

<script>

   export default {
      data() {
         return {
            name: 'PreviewFormEditor',
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
         SendIdEdit: function (value) {
            this.$emit('GetIdEdit', value)
         },
         guardar: function () {
            console.log('Guardar')
         },
         DeleteOption: function (index) {
            this.$props.ArrayInputs.splice(index, 1);
         },
      }
   }
</script>