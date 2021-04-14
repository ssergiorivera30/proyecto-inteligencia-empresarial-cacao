<template>
  <main class="p-6 sm:p-10 space-y-6">
    <div class="flex items-center justify-center">
      <form id="form" class="bg-white rounded px-8 pt-6 pb-8 mb-4">
        <div><img :src="Team" width="300" /></div>
      </form>
    </div>
  </main>
</template>
<script>
import API_ROUTER from "./../../../services/SERVER_API";

export default {
  data() {
    return {
      name: "ProyectoIntegrantes",
      Team: API_ROUTER.API_UI + "team/team.svg",
    };
  },
  mounted: function () {},
  methods: {},
};
</script>
