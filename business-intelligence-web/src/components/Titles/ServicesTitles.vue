<template>
  <header class="flex items-center justify-between my-5">

    <h2 class="text-md font-bold leading-6 text-gray-800">{{ ServiceName }}</h2>

    <div class="relative">
        <router-link :to="ServiceLink" class="inline-flex items-center px-2 py-1 rounded-md bg-gray-200 text-xs font-regular text-color-text-ui">  
            <span v-html="ServiceIconHTML"></span>
            <span class="text-xs">{{ ServiceNameLink }}</span>
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

