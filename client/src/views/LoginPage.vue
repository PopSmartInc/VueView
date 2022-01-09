<template>
  <div class="wrapper">
    <img
      class="hero"
      src="https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80"
    />
    <div class="right">
      <div
        class="right-wrapper login"
        :class="{show: showLogin}"
      >
        <img src="@/assets/logo.png" />
        <v-text-field
          label="Username"
          outlined
        ></v-text-field>
        <v-text-field
          label="Password"
          outlined
        ></v-text-field>
        <div class="bottom-wrapper">
          <v-btn @click="toggleLogin()">Not a member yet? Sign up here</v-btn>
          <v-btn href="/">Log In</v-btn>
        </div>
      </div>

      <div
        class="right-wrapper sign-up"
        :class="{show: !showLogin}"
      >
        <img src="@/assets/logo.png" />
        <v-text-field
          label="Create Username"
          outlined
        ></v-text-field>
        <v-text-field
          label="Create Password"
          outlined
        ></v-text-field>
        <v-text-field
          label="Confirm Password"
          outlined
        ></v-text-field>
        <v-textarea
          label="Tell us about yourself (optional)"
          outlined
        ></v-textarea>
        <div class="bottom-wrapper">
          <v-btn @click="toggleLogin()">Already have an account? Log in here</v-btn>
          <v-btn href="/">Sign Up</v-btn>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: "LoginPage",
    data: function () {
      return {
        showLogin: true,
      };
    },
    methods: {
      toggleLogin: function () {
        this.showLogin = !this.showLogin;
      },
    },
  };
</script>

<style lang="scss" scoped>
  .wrapper {
    height: 100vh;
    width: 100vw;
    display: flex;

    .hero {
      width: 67vw;
      height: 100vh;
      object-fit: cover;
    }

    .right {
      width: 33vw;
      overflow: hidden;

      .right-wrapper {
        width: 100%;
        height: 100vh;
        text-align: center;
        padding: 32px;
        transition: 0.5s cubic-bezier(0.5, -0.2, 0.5, 1.2);
      }

      .login {
        transform: translateY(-100%);

        &.show {
          transform: translateY(0);
        }
      }

      .sign-up {
        transform: translateY(0);

        &.show {
          transform: translateY(-100%);
        }
      }

      .bottom-wrapper {
        display: flex;
        gap: 16px;
        justify-content: end;
        align-items: center;
      }
    }
  }
</style>