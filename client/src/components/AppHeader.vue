<template>
  <v-app-bar
    v-if="$route.meta.showAppBar !== false"
    app
  >
    <img
      class="logo"
      src="@/assets/logo.png"
    />
    <div>
      <div
        class="text-h5"
        :style="{color: '#35495e', 'line-height': '24px'}"
      >ue</div>
      <div
        class="text-h5"
        :style="{color: '#41b883', 'line-height': '24px'}"
      >iew</div>
    </div>

    <v-spacer></v-spacer>

    <v-btn icon>
      <v-icon>mdi-help</v-icon>
    </v-btn>
    <v-btn icon>
      <v-icon>mdi-account</v-icon>
    </v-btn>
    <v-btn icon>
      <v-icon>mdi-logout</v-icon>
    </v-btn>
  </v-app-bar>
</template>

<script>
  export default {
    name: "AppHeader",
  };
</script>

<style lang="scss">
  .logo {
    height: 100%;
  }
</style>
