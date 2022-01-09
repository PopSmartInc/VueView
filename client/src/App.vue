<template>
  <v-app>
    <app-header></app-header>

    <v-main>
      <v-container v-if="$route.meta.showAppBar !== false">
        <router-view />
      </v-container>

      <router-view v-else></router-view>
    </v-main>
  </v-app>
</template>

<script>
  import AppHeader from "./components/AppHeader.vue";
  export default {
    name: "App",
    components: {
      AppHeader,
    },
    data: () => ({}),
  };
</script>

<style lang="scss">
</style>
