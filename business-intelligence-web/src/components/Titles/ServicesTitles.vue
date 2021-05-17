<template>
  <header class="flex items-center justify-between px-2 my-5">
    <h2 class="text-lg font-bold leading-6 text-gray-800">{{ ServiceName }}</h2>      
    <div class="relative">
        <router-link :to="ServiceLink" class=" flex p-2 rounded-md bg-blue-900">
            <span class="text-xs font-medium leading-none text-white">{{ ServiceNameLink }}</span>
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
  }
}
</script>

