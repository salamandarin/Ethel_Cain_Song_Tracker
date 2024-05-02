<script setup>
import {ref} from 'vue'
import ArtistCard from './components/ArtistCard.vue'

const raw_artists = ref([])
const artists = ref([]);


fetch('http://localhost:8000/listartists', {
    method: 'POST'
})
.then(response => response.json())
.then(data => {
    data.forEach(artist => {
        raw_artists.value.push(artist)
    });
    artists.value = raw_artists.value.filter(raw_artists => raw_artists.ArtistRealName === "Hayden");
})
</script>

<template>
    <v-container>
        <v-row>
            <v-col cols="6" v-for="artist in artists" :key="artist.ArtistId">
                <ArtistCard :artist_name="artist.ArtistName" :real_name="artist.ArtistRealName"></ArtistCard>
            </v-col>
        </v-row>
    </v-container>
</template>