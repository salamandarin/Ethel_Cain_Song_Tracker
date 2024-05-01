<script setup>
import {ref} from 'vue'

defineProps({
    name: String,
    image_name: String,
    description: String,
})

const tracks = ref([])

fetch('http://localhost:8000//artistsearch', {
    method: 'POST'
})
    .then(response => response.json())
    .then(data => {
        console.log(data)
        data.forEach(track => {
            tracks.value.push(track)
        });
    })
</script>

<template>
    <v-card>
        <v-card-title>{{ name }}</v-card-title>
        <v-card-subtitle>{{ description }}</v-card-subtitle>
        <v-img width="100%" :src="`../../public/images/artists/${image_name}`"></v-img>
        <br>
        <v-expansion-panels>
            <v-expansion-panel title="Tracks">
                <v-expansion-panel-text>
                    <v-list density="compact">
                        <v-list-item
                            v-for="track in tracks"
                            :key="track"
                            :title="track"
                        ></v-list-item>
                    </v-list>
                </v-expansion-panel-text>
            </v-expansion-panel>
        </v-expansion-panels>
    </v-card>
</template>