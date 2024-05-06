<script setup>
import {ref} from 'vue'

const props = defineProps({
    artist_name: String,
    real_name: String,
    image_name: String,
    description: String,
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
    <v-card class="pt-3 px-3">
        <!-- title + image -->
        <div class="card-head">
            <div class="my-auto">
                <!-- tommy / Miss Anhedonia gets smaller font size -->
                <v-card-title
                    v-if="artist_name === 'tommy / Miss Anhedonia'"
                    class="text-h5 text-center text-wrap"
                >{{ artist_name }}</v-card-title>
                <!-- all other artist names -->
                <v-card-title v-else class="text-h4 text-center text-wrap">{{ artist_name }}</v-card-title>

                <v-card-subtitle class="text-center">aka: {{ real_name }}</v-card-subtitle>
            </div>
            <v-img
                height="100%" class="rounded-circle" :src="`../../public/images/artists/${image_name}`"
            ></v-img>
        </div>

        <!-- description -->
        <p class="mx-1 mt-3 pa-2 rounded-sm">{{ description }}</p>

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

<style>
.card-head {
    display: grid;
    grid-template-columns: 60% 30% 10%;
}
</style>