<template>
   <div class="py-0">



      <form @submit.prevent="guardar" autocomplete="off">

         <draggable class="relative mt-5 grid grid-cols-1 xs:grid-cols-1 sm:grid-cols-1 md:grid-cols-1 gap-4 gap-y-2"
            :list="ArrayInputs" @change="log">




            <div v-for="(input, index) in ArrayInputs" :key="index">
               <div class="block">
                  <label class="grid grid-cols-5 gap-4 items-center">
                     <span class="col-span-4 text-gray-700 font-medium  group flex items-center">
                        <img src="./../../assets/draggable.svg" alt="" width="20" height="20" class="cursor-move">
                        {{ input['input']['name'] }}</span>
                     <div class="text-right">

                        <div class="w-56 text-right">
                           <Menu as="div" class="relative inline-block text-left">
                              <div>
                                 <MenuButton
                                    class="inline-flex justify-center w-full px-4 py-2 text-sm font-medium text-white bg-black rounded-md bg-opacity-20 hover:bg-opacity-30 focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75">
                                    Options
                                    <ChevronDownIcon class="w-5 h-5 ml-2 -mr-1 text-violet-200 hover:text-violet-100"
                                       aria-hidden="true" />
                                 </MenuButton>
                              </div>

                              <transition enter-active-class="transition duration-100 ease-out"
                                 enter-from-class="transform scale-95 opacity-0"
                                 enter-to-class="transform scale-100 opacity-100"
                                 leave-active-class="transition duration-75 ease-in"
                                 leave-from-class="transform scale-100 opacity-100"
                                 leave-to-class="transform scale-95 opacity-0">
                                 <MenuItems
                                    class="absolute right-0 w-56 mt-2 origin-top-right bg-white divide-y divide-gray-100 rounded-md shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none">
                                    <div class="px-1 py-1">
                                       <MenuItem v-slot="{ active }">
                                       <button :class="[ active ? 'bg-violet-500 text-gray-900' : 'text-gray-900', 'group flex rounded-md items-center w-full px-2 py-2 text-sm' ]"
                                          @click="DeleteOption(index)" title="Eliminar"><i class="fa fa-trash"></i>Eliminar</button>
                                       </MenuItem>

                                       <MenuItem v-slot="{ active }">
                                       <button :class="[ active ? 'bg-violet-500 text-gray-900' : 'text-gray-900', 'group flex rounded-md items-center w-full px-2 py-2 text-sm' ]"
                                          @click="SendIdEdit(index)" title="Eliminar"><i class="fa fa-trash"></i>Editar</button>
                                       </MenuItem>
                                    </div>
                                 </MenuItems>
                              </transition>
                           </Menu>
                        </div>
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
                        :maxlength="input['input']['maxlength']" :min="input['input']['min']"
                        :max="input['input']['max']" class="form-control2 py-3">
                  </span>
               </div>
            </div>
         </draggable>
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

   import { VueDraggableNext } from 'vue-draggable-next'
   import { Menu, MenuButton, MenuItems, MenuItem } from "@headlessui/vue";


   export default {
      components: {
         draggable: VueDraggableNext,
         Menu,
         MenuButton,
         MenuItems,
         MenuItem,
      },

      data() {
         return {
            name: 'PreviewFormEditor',
            enabled: true,
            dragging: false,
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
      }
   }
</script>