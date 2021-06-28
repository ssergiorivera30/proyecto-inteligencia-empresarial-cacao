<template>
   <div class="grid grid-cols-1 mb-10 ">
            
      <form  ref="form" @submit.prevent="guardar" autocomplete="off" >
          
         <div v-for="(input, index) in ArrayInputs" :key="index">
          
            <div class="block">
               <label class="grid grid-cols-5 gap-4 items-center">
                  <span class="col-span-4 text-gray-700 font-medium  group flex items-center my-2 capitalize">
                     {{ input['input']['name'] }}</span>                  
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
                        <input type="checkbox" :name="input['input']['name']">
                        <span class="ml-2">{{ option['option']['value']}}</span>
                     </label>
                  </div>
               </div>
            </div>

            <div class="block" v-if="input['input']['type'] != 'checkbox' && input['input']['type'] != 'radio'">

               <span v-if="input['input']['type'] == 'textarea'">
                  <textarea :placeholder="input['input']['placeholder']" :value="input['input']['value']" :name="input['input']['name']" cols="30"
                     rows="10" class="form-control2 py-3">
                  </textarea>
               </span>

               <span v-else-if="input['input']['type'] == 'select'">
                  <select :placeholder="input['input']['placeholder']" :value="input['input']['value']" :name="input['input']['name']"
                     class="form-control2 py-3">
                     <option value="" selected>Seleccionar opción</option>
                     <option v-for="option in input['input']['options']" :key="option" value="">{{
                        option['option']['value'] }}</option>
                  </select>
               </span>

               <span v-else>

                  <input v-if="input['input']['required'] == 'true'" :type="input['input']['type']"
                     :name="input['input']['name']"
                     :placeholder="input['input']['placeholder']" :value="input['input']['value']"
                     :minlength="input['input']['minlength']" :maxlength="input['input']['maxlength']"
                     :min="input['input']['min']" :max="input['input']['max']" required class="form-control2 py-3">

                  <input v-else :type="input['input']['type']" :placeholder="input['input']['placeholder']"
                     :name="input['input']['name']"
                     :value="input['input']['value']" :minlength="input['input']['minlength']"
                     :maxlength="input['input']['maxlength']" :min="input['input']['min']" :max="input['input']['max']"
                     class="form-control2 py-3">
               </span>
            </div>
         </div>
  
         <div class="mt-5 py-1 text-left " v-if="ArrayInputs.length  > 0">
            <button type="submit" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-green-400 hover:bg-green-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-green-400">
               Guardar
            </button>
         </div>
      </form>

      <p >{{ laresp }}</p>

   </div>
</template>

<script>

import axios from 'axios';
// import Noty from "noty";

import API_ROUTER from "./../../services/SERVER_API"

   export default {
      components: {
       
      },
      
      data() {
         return {
            name: 'PreviewFormSave',
            enabled: true,           
            dragging: false,
            NameTable: '',
                     laresp: '',
         }
      },
      props: {
         NameForm: String,
         DescriptionForm: String,
         ArrayInputs: Object,
      },
      mounted: function () {
      
           if(this.$route.params.type == 'ob'){

            this.NameTable = 'z_object_'

         }
         if(this.$route.params.type == 'fo'){

            this.NameTable = 'z_form_'
            
         }

            console.log(this.NameTable)


      },
      methods: {
         log(event) {
            console.log(event)
         },
         SendIdEdit: function (value) {
            this.$emit('GetIdEdit', value)
         },
         guardar: function () {

            const formData = new FormData(this.$refs['form']); // reference to form element
               const data = {}; // need to convert it before using not with XMLHttpRequest
               for (let [key, val] of formData.entries()) {
               Object.assign(data, { [key]: val })
            }

      
             axios.post(API_ROUTER.PHP7_CONTROLLER + "form_regitred_data.php",
               {
                  id_form: this.$route.params.id,
                  table: this.NameTable,
                  data: data
               }).then((response) => {

                  console.log(response)

                  this.laresp = response

                  //                  new Noty({
                  //    theme: "sunset", layout: "topRight", progressBar: true, closeWith: ["click", "button"], timeout: 8000,
                  //    type: response.data.response, text: response.data.mensaje
                  // }).show();

                  if(response.data.response === 'success'){
                     this.$refs.form.reset();
                  }                
               })        
         },
         DeleteOption: function (index) {
            this.$props.ArrayInputs.splice(index, 1);
         },
      }
   }
</script>