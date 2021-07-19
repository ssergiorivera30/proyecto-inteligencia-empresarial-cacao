<template>
<div class="col-span-2 row-span-3 bg-white shadow overflow-hidden rounded-sm">
            <div class="" >

               <div class="flex items-center">

                  <div class="w-full h-full" >
                        <img class="w-full max-h-36 select-none pointer-events-none object-cover rounded-sm" draggable="false"
                            :class="[ ServiceLogo === 'default.svg' ? 'ml-1' : ' ' ]"
                            :src="SrcIconModulo+FilePathImg+ServiceLogo" />                            
                    </div>
               </div> 

               <div class="px-3 py-3 ">
                     <h3 class="text-md leading-6 font-medium text-gray-600">
                        {{ ServiceName}} 
                     </h3>
                     
               </div>

               <div class="px-3 pb-3 ">
                  <p class="mt-3 max-w-2xl text-sm text-gray-500">
                        {{ ServiceDescription }}
                     </p>
               </div>


               <div class="border-t border-gray-200">
                  <dl>
                     <div v-for="(info, index) in arrayInfoResumenCustom" :key="index">
                        <div v-if="index <= 10">           
                           <div v-if="index % 2 == true"                      
                              class="bg-white px-3 py-3 sm:grid sm:grid-cols-3 sm:gap-4'">
                              <dt class="text-sm font-medium text-gray-500">
                                 {{ info['input']['name'] }}
                              </dt>
                              <dd class="mt-1 pl-2 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                                 {{ info['input']['value'] }}
                              </dd>
                           </div>

                           <div v-else                      
                              class="bg-gray-50 px-3 py-3 sm:grid sm:grid-cols-3 sm:gap-4'">
                              <dt class="text-sm font-medium text-gray-500">
                                 {{ info['input']['name'] }}
                              </dt>
                              <dd class="mt-1 pl-2 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                                 {{ info['input']['value'] }}
                              </dd>
                           </div>
                        </div>
                     </div>
                     
                     <!-- <div class="bg-white px-3 py-3 sm:grid sm:grid-cols-3 sm:gap-4">
                        <dt class="text-sm font-medium text-gray-500">
                           Adjuntos
                        </dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:mt-0 sm:col-span-2">
                           <ul class="border border-gray-200 rounded-md divide-y divide-gray-200">
                              <li class="pl-3 pr-4 py-3 flex items-center justify-between text-sm">
                                 <div class="w-0 flex-1 flex items-center">
                             
                                    <svg class="flex-shrink-0 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg"
                                       viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                       <path fill-rule="evenodd"
                                          d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z"
                                          clip-rule="evenodd" />
                                    </svg>
                                    <span class="ml-2 flex-1 w-0 truncate">
                                       resume_back_end_developer.pdf
                                    </span>
                                 </div>
                                 <div class="ml-4 flex-shrink-0">
                                    <a href="#" class="font-medium text-indigo-600 hover:text-indigo-500">
                                       Descargar
                                    </a>
                                 </div>
                              </li>
                              <li class="pl-3 pr-4 py-3 flex items-center justify-between text-sm">
                                 <div class="w-0 flex-1 flex items-center">
                                    
                                    <svg class="flex-shrink-0 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg"
                                       viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                       <path fill-rule="evenodd"
                                          d="M8 4a3 3 0 00-3 3v4a5 5 0 0010 0V7a1 1 0 112 0v4a7 7 0 11-14 0V7a5 5 0 0110 0v4a3 3 0 11-6 0V7a1 1 0 012 0v4a1 1 0 102 0V7a3 3 0 00-3-3z"
                                          clip-rule="evenodd" />
                                    </svg>
                                    <span class="ml-2 flex-1 w-0 truncate">
                                       coverletter_back_end_developer.pdf
                                    </span>
                                 </div>
                                 <div class="ml-4 flex-shrink-0">
                                    <a href="#" class="font-medium text-indigo-600 hover:text-indigo-500">
                                       Descargar
                                    </a>
                                 </div>
                              </li>
                           </ul>
                        </dd>
                     </div> -->

                     
                     <div class="px-3 py-3 sm:grid sm:grid-cols-3 sm:gap-4">
                        <router-link 
                           :to="'/service/info/basic/'+ IdService" 
                           class="hover:font-bold rounded text-gray-700 text-sm font-semibold">
                           Ver más...
                        </router-link>
                     </div>
                      

                  </dl>
               </div>
            </div>
         </div>

</template>
<script>

import API_ROUTER from './../../services/SERVER_API'

export default {
   name: 'ServiceLeftInfoBasic',
  data() {
    return {      
      SrcIconModulo: API_ROUTER.API_PUBLIC,
    
    }
  },   
  props: {
   ServiceName: String,
   ServiceDescription: String,
   arrayInfoResumenCustom: Object, 
   IdService: String,
   FilePathImg: String,
   ServiceLogo: String,
  },
  mounted: function () {  

   //   this.SrcPublic = API_ROUTER.API_PUBLIC + this.FilePathImg

   // console.log(FilePathImg)

    
   
  }      
}
</script>