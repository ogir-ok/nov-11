<template>
  <div v-if="!userLoaded">
    Loading...
  </div>
  <div v-else-if="user !== null" class="dropdown">
    <a class="dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
      {{ user.email }}
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
      <li><a class="dropdown-item" @click="doLogOut()">Log Out</a></li>
    </ul>
  </div>
  <div v-else>
    <RouterLink to="/login/"> Log In </RouterLink>
  </div>
</template>

<script>
export default {
  name: "UserBadge",
  data() {
    return {
      user: null,
      userLoaded: false
    }
  },
  async mounted() {
    const token = localStorage.getItem('nov-11-access')
    let user = null

    const response = await fetch('/api/v1/auth/user-info/', {
      headers: {
        'Authorization': `Bearer ${token}`,
        'Content-Type': 'application/json'
      }
    })

    if (response.status === 200) {
      user = await response.json()
    } else if (response.status === 403) {
      // try renew token
      const newTokenResponse = await fetch('/api/v1/auth/refresh/', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify({'refresh': localStorage.getItem('nov-11-refresh')})
          }
      )

      if (newTokenResponse.status === 200 ) {
        localStorage.setItem('nov-11-access', (await newTokenResponse.json()).access)
        // retry last api call
      } else {
        localStorage.removeItem('nov-11-access')
        localStorage.removeItem('nov-11-refresh')

      }

    } else {
      user = {email: 'Error'}
    }

    this.user = user;
    this.userLoaded = true;
  },
  methods: {
    doLogOut() {
      localStorage.removeItem('nov-11-access')
      localStorage.removeItem('nov-11-refresh')
      this.user = null;
    }
  }
}
</script>

<style scoped>

</style>