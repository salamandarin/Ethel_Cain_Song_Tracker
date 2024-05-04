<script setup>
import {ref} from 'vue'

const props = defineProps({
    title: String,
    date: String,
    image_name: String,
})

const tracklist = ref([])

fetch('http://localhost:8000/searchfortracksonalbum', {
    method: 'POST',
    body: JSON.stringify({
        "AlbumTitle" : props.title
    })
})
.then(response => response.json())
.then(data => {
    data.forEach(track => {
        tracklist.value.push(track)
    });
})
</script>

<template>
    <v-card>
        <v-card-title class="font-weight-bold">{{ title }}</v-card-title>
        <v-card-subtitle class="font-weight-bold">{{ date }}</v-card-subtitle>
        <v-img width="100%" :src="`../../public/images/albums/${image_name}`"></v-img>
        <br>
        <v-expansion-panels>
            <v-expansion-panel class="font-weight-bold" title="Tracklist">
                <v-expansion-panel-text>
                    <v-list density="compact">
                        <v-list-item
                            v-for="track in tracklist"
                            :key="track.TrackId"
                            :title="track.TrackTitle"
                        ></v-list-item>
                    </v-list>
                </v-expansion-panel-text>
            </v-expansion-panel>
        </v-expansion-panels>
    </v-card>
</template>

