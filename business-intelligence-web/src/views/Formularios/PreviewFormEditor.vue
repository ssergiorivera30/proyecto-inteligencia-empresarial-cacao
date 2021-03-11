<template>  
      <div class="pt-2 pb-16 lg:pt-3">
        
         <div class="space-y-3">

            <form @submit.prevent="guardar" class="relative mt-5 grid grid-cols-1 gap-5">
               <div v-for="input in ArrayInputs" :key="input.id" class="label-intro">
                  <div class="-mt-4 absolute tracking-wider px-1 text-xs">
                     <label class="bg-white text-gray-600 px-1">{{ input['input']['name'] }}</label>
                  </div>

                  <span v-if="input['input']['type'] == 'textarea'">
                     <textarea 
                        :placeholder="input['input']['placeholder']" 
                        :value="input['input']['value']" 
                        cols="30"
                        rows="10"
                        class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full">
                  </textarea>
                  </span>

                  <span v-else-if="input['input']['type'] == 'select'">
                     <select 
                        :placeholder="input['input']['placeholder']" 
                        :value="input['input']['value']"
                        class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full">
                        <option value="0">Seleccionar opción</option>
                        <option value="1">Texto</option>
                        <option value="2">Entero</option>
                        <option value="3">Buleano</option>
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
                        class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full">

                        <input 
                         v-else
                        :type="input['input']['type']" 
                        :placeholder="input['input']['placeholder']"
                        :value="input['input']['value']" 
                        :minlength="input['input']['minlength']"
                        :maxlength="input['input']['maxlength']"
                        :min="input['input']['min']"
                        :max="input['input']['max']"                        
                        class="text-sm text-black placeholder-gray-500 py-1 pl-2 px-1 outline-none block h-full w-full">
                  </span>
               </div>

               <div class="py-1 text-left" v-if="ArrayInputs.length  > 0">
                  <button type="submit"
                     class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-green-400 hover:bg-green-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-green-400">
                     Guardar
                  </button>
               </div>
            </form>

            <pre>{{ ArrayInputs  }}</pre>
         </div>
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