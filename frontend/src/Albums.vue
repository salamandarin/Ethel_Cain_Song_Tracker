<script setup>
import {ref} from 'vue'
import AlbumCard from './components/AlbumCard.vue'

const raw_albums = ref([])
const albums = ref([])

fetch('http://localhost:8000/listalbums', {
    method: 'POST'
})
.then(response => response.json())
.then(data => {
    data.forEach(album => {
        raw_albums.value.push(album)
    });
    albums.value = raw_albums.value.filter(raw_albums => raw_albums.Artist <= 3);
})
</script>

<template>
    <v-container>
        <h1>Albums</h1>
        <v-row>
            <v-col cols="4" v-for="album in albums" :key="album.AlbumId">
                <AlbumCard :title="album.AlbumTitle" :date="album.AlbumDate" :image_name="album.AlbumImage"></AlbumCard>
            </v-col>
        </v-row>
    </v-container>
</template>