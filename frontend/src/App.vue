<script setup>
import {ref, computed} from 'vue'
import Home from './Home.vue'

const routes = {
    '/' : Home,
}

const currentPath = ref(window.location.hash)
const drawer = ref(false)

window.addEventListener('hashchange', () => {
    currentPath.value = window.location.hash
})

const currentView = computed(() => {
    return routes[currentPath.value.slice(1)  || '/'] || NotFound
})
</script>

<template>
    <v-app>
        <v-navigation-drawer color="#382214" v-model="drawer">
            <v-list-item prepend-icon="mdi-home-circle-outline" href="#/" title="Home" @click="drawer= !drawer"></v-list-item>
        </v-navigation-drawer>
        <v-app-bar color="black">
            <v-app-bar-nav-icon @click="drawer= !drawer"></v-app-bar-nav-icon>
            <v-app-bar-title>Ethel Cain Song Tracker</v-app-bar-title>
        </v-app-bar>
        <v-main>
            <component :is="currentView"></component>
        </v-main>
    </v-app>
</template>