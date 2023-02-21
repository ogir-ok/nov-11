<script >
export default {
  name: "LoginForm",
  data() {
    return {
      user: {
      },
      formErorr: null
    }
  },
  methods: {
    async onUserLogin(e) {
      e.preventDefault();
      this.formErorr = null;
      const response = await fetch("/api/v1/auth/token/", {
            method: "POST",
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify(this.user)
          }
      )

      if(response.status !== 200) {
        try {
            this.formErorr = (await response.json()).detail
        } catch {
            this.formErorr = 'Unknown error.'

        }
      } else {
        const response_data = await response.json()
        localStorage.setItem('nov-11-access', response_data.access)
        localStorage.setItem('nov-11-refresh', response_data.refresh)
      }

    }
  }
}

</script>

<template>
 <form @submit="onUserLogin">
   Email: <input name="email" v-model="user.email"/>
   Password: <input type="password" name="password" v-model="user.password" />

   {{ formErorr }}

   <input type="submit">
 </form>

</template>

<style scoped>
</style>
