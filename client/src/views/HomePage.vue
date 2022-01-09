<template>
  <div class="wrapper">
    <div class="text-h3">
      Todays Views
    </div>

    <v-row
      no-gutters
      class="header"
    >
      <v-col cols="3">
        <v-select
          dense
          :items="items"
          label="Outlined style"
          outlined
        ></v-select>
      </v-col>

      <v-spacer></v-spacer>

      <v-btn icon>
        <v-icon>mdi-plus</v-icon>
      </v-btn>
    </v-row>
  </div>
</template>

<script>
  export default {
    name: "HomePage",
    data: () => ({
      items: ["Created"],
    }),
  };
</script>

<style lang="scss" scoped>
  .wrapper {
    padding: 32px 0;
    display: flex;
    flex-direction: column;

    .header {
      display: flex;
      margin-top: 16px;
    }
  }
</style>