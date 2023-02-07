<script setup>
import { RouterLink, RouterView } from 'vue-router'
import UserBadge from "./components/UserBadge.vue";
</script>

<template>


      <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <!-- Container wrapper -->
          <div class="container-fluid">
            <!-- Toggle button -->
            <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <i class="fas fa-bars"></i>
            </button>

            <!-- Collapsible wrapper -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <!-- Navbar brand -->
              <a class="navbar-brand mt-2 mt-lg-0" href="#">
                <img src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp" height="15" alt="MDB Logo" loading="lazy">
              </a>
              <!-- Left links -->
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <RouterLink to="/account">Account</RouterLink>
                </li>
                <li class="nav-item">
                  <RouterLink to="/lms/list-students/">List Students</RouterLink>
                </li>
              </ul>
              <!-- Left links -->
            </div>
            <!-- Collapsible wrapper -->


            <form action="/i18n/setlang/" method="post"><input type="hidden" name="csrfmiddlewaretoken" value="M4YPLrB2pgJbkm0UYOmzkRFO99WognTCPMHJVPzShenmfMNAfagtnfjk1sSUt90U">
              <input name="next" type="hidden" value="">
              <select name="language">




                <option value="en" selected="">
                  English (en)
                </option>

                <option value="uk">
                  Українська (uk)
                </option>

              </select>
              <input type="submit" value="Go">
            </form>


            <UserBadge />

          </div>
        </nav>
      </header>

  <RouterView />
</template>

<style scoped>
</style>
