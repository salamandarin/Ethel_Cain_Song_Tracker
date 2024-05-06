<script setup>
import {ref} from 'vue'

const props = defineProps({
    artist_name: String,
    real_name: String,
})

const tracks = ref([])

fetch('http://localhost:8000/searchbyartist', {
    method: 'POST',
    body: JSON.stringify({
        "ArtistName" : props.artist_name
    })
})
.then(response => response.json())
.then(data => {
    data.forEach(track => {
        tracks.value.push(track)
    });
})
</script>

<template>
    <v-card class="pt-3">
        <v-card-title class="text-h4 text-center text-wrap">{{ artist_name }}</v-card-title>
        <v-card-subtitle class="text-center">AKA: {{ real_name }}</v-card-subtitle>

        <!-- tracks by artist -->
        <v-expansion-panels>
            <v-expansion-panel>
                <v-expansion-panel-title class="text-h6">Tracks</v-expansion-panel-title>
                <v-expansion-panel-text>
                    <v-list density="compact">
                        <v-list-item v-for="track in tracks" :key="track.TrackId">
                            <v-list-item-title style="font-size: 16px">{{ track.TrackTitle }}</v-list-item-title>
                        </v-list-item>
                    </v-list>
                </v-expansion-panel-text>
            </v-expansion-panel>
        </v-expansion-panels>
    </v-card>
</template>