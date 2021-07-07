<template>
  <header class="flex items-center justify-between my-5">

    <h2 class="text-md font-bold leading-6 text-gray-800">{{ ServiceName }}</h2>

    <div class="relative">
        <router-link :to="ServiceLink" class="inline-flex items-center px-2 py-1 rounded-md bg-gray-200 text-xs font-regular leading-none text-gray-800">  
            <span v-html="ServiceIconHTML"></span>
            <span>{{ ServiceNameLink }}</span>
        </router-link >
    </div>

  </header>
</template>

<script>
export default {
  name: 'ServicesTitles',
  props: {
    ServiceName: String,
    ServiceNameLink: String,
    ServiceLink: String,
    ServiceIconHTML: String
  }
}
</script>

