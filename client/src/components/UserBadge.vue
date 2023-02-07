<template>
  <div v-if="user !== null" class="dropdown">
    <a class="dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
      {{ user.email }}
    </a>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
      <li><a class="dropdown-item" href="/auth/logout/">Log Out</a></li>
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
      user: null
    }
  }

}
</script>

<style scoped>

</style>