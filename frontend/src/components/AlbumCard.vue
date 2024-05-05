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
    <v-card class="pa-3 rounded-lg artist-card">
        <!-- album image -->
        <v-img v-if="image_name === 'Colossus.jpg'"
               width="100%"
               class="rounded"
               :src="`../../public/images/artists/Atlas_2.jpg`"
        ></v-img>
        <v-img v-else
               width="100%"
               class="rounded"
               :src="`../../public/images/cover_art/${image_name}`"
        ></v-img>

        <!-- title & subtitle -->
        <v-card-title class="text-h4
                             font-weight-bold
                             text-center
                             text-wrap
                             mt-1 pb-1"
        >{{ title }}</v-card-title>
        <v-card-subtitle
            class="text-h6 text-center mb-1"
        >{{ date }}</v-card-subtitle>

        <!-- tracklist expansion panel -->
        <v-expansion-panels>
            <v-expansion-panel>
                <v-expansion-panel-title
                    class="tracklist-title text-medium-emphasis"
                >Tracklist</v-expansion-panel-title>
                <v-expansion-panel-text class="tracklist">
                    <v-list density="compact" class="pl-2 bg-grey-darken-4 rounded">
                        <!-- numbered tracklist -->
                        <v-list-item v-for="(track, index) in tracklist" :key="track.TrackId" class="my-0 py-0">
                            <v-list-item-title
                                style="font-size: 14px;"
                            >{{ index + 1 }}. {{ track.TrackTitle }}</v-list-item-title>
                        </v-list-item>
                    </v-list>
                </v-expansion-panel-text>
            </v-expansion-panel>
        </v-expansion-panels>
    </v-card>
</template>

<style>
.artist-card * {
    font-family: "IM Fell English", serif !important;
}

.tracklist * {
    padding: 0px !important;
}
</style>