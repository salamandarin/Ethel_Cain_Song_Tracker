<script setup>
import {ref, computed} from 'vue'
import Home from './Home.vue'
import Tracks from './Tracks.vue'
import Albums from './Albums.vue'
import Artists from './Artists.vue'
import EditData from './EditData.vue'

const routes = {
    '/' : Home,
    '/tracks' : Tracks,
    '/albums' : Albums,
    '/artists' : Artists,
    '/editdata' : EditData,
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
        <v-navigation-drawer v-model="drawer">
            <v-list-item prepend-icon="mdi-home-circle" href="#/" title="Home" @click="drawer= !drawer"></v-list-item>
            <v-list-item prepend-icon="mdi-playlist-music" href="#/tracks" title="Tracks" @click="drawer= !drawer"></v-list-item>
            <v-list-item prepend-icon="mdi-album" href="#/albums" title="Albums" @click="drawer= !drawer"></v-list-item>
            <v-list-item prepend-icon="mdi-account-box-multiple" href="#/artists" title="Artists" @click="drawer= !drawer"></v-list-item>
            <v-list-item prepend-icon="mdi-pencil-plus" href="#/editdata" title="Edit Data" @click="drawer= !drawer"></v-list-item>
        </v-navigation-drawer>
        <v-app-bar>
            <v-app-bar-nav-icon @click="drawer= !drawer"></v-app-bar-nav-icon>
            <v-img
                src="../public/images/misc/cross_white.png"
                max-height="40"
                max-width="40"
                contain
            ></v-img>
            <v-app-bar-title>Ethel Cain Song Tracker</v-app-bar-title>
        </v-app-bar>
        <v-main>
            <component :is="currentView"></component>
        </v-main>
    </v-app>
</template>