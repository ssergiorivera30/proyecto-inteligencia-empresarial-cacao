<template>
  <div class="">
    <WelcomeSistema />
    <ServicesRecent />
  </div>
</template>

<script>
import ServicesRecent from "../components/Servicios/ServicesRecent";
import WelcomeSistema from "../components/Home/WelcomeSistema";

export default {
  components: {
    ServicesRecent,
    WelcomeSistema,
  },
  data() {
    return {
      name: "Home",
    };
  },
  mounted: function () {},
  methods: {},
};
</script>
