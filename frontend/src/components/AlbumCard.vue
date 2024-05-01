<script setup>
import {ref} from 'vue'

defineProps({
    title: String,
    date: String,
    image_name: String,
})

const tracklist = ref([])

fetch('http://localhost:8000/gettrackbyalbum', {
    method: 'POST'
})
.then(response => response.json())
.then(data => {
    console.log(data)
    data.forEach(track => {
        tracklist.value.push(track)
    });
})
</script>

<template>
    <v-card>
        <v-card-title>{{ title }}</v-card-title>
        <v-card-subtitle>{{ date }}</v-card-subtitle>
        <v-img width="100%" :src="`../../public/images/albums/${image_name}`"></v-img>
        <br>
        <v-expansion-panels>
            <v-expansion-panel title="Tracklist">
                <v-expansion-panel-text>
                    <v-list density="compact">
                        <v-list-item
                            v-for="track in tracklist"
                            :key="track"
                            :title="track"
                        ></v-list-item>
                    </v-list>
                </v-expansion-panel-text>
            </v-expansion-panel>
        </v-expansion-panels>
    </v-card>
</template>

