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
    <v-card>
        <v-card-title>{{ artist_name }}</v-card-title>
        <v-card-subtitle>{{ real_name }}</v-card-subtitle>
<!--        <v-img width="100%" :src="`../../public/images/artists/${image_name}`"></v-img>-->
        <br>
        <v-expansion-panels>
            <v-expansion-panel title="Tracks">
                <v-expansion-panel-text>
                    <v-list density="compact">
                        <v-list-item
                            v-for="track in tracks"
                            :key="track.TrackId"
                            :title="track.TrackTitle"
                        ></v-list-item>
                    </v-list>
                </v-expansion-panel-text>
            </v-expansion-panel>
        </v-expansion-panels>
    </v-card>
</template>