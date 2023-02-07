<script >
export default {
  name: "LoginForm",
  data() {
    return {
      user: {
      }
    }
  },
  methods: {
    async onUserLogin(e) {
      e.preventDefault();
      const response = await fetch("http://127.0.0.1:8000/api/v1/auth/token/", {
            method: "POST",
            headers: {
              'Content-Type': 'application/json',
              'Access-Control-Allow-Origin': '*',
              'Access-Control-Allow-Headers': '*'
            },
            body: JSON.stringify(this.user)

          }
      )
      console.log(response)
    }
  }
}

</script>

<template>
 <form @submit="onUserLogin">
   Email: <input name="email" v-model="user.email"/>
   Password: <input type="password" name="password" v-model="user.password" />


   <input type="submit">
 </form>

</template>

<style scoped>
</style>
