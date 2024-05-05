<script setup>
import {ref} from 'vue'
import TrackRow from './components/TrackRow.vue'

const tracks = ref([])

fetch('http://localhost:8000/listtracks', {
    method: 'POST'
})
    .then(response => response.json())
    .then(data => {
        data.forEach(track => {
            tracks.value.push(track)
        });
    })
</script>

<template>
    <v-table
        density="compact"
        height="calc(100vh - 100px)" fixed-header
        class="mx-16 my-4 rounded-lg"
    >
        <thead>
        <tr>
            <th> </th>
            <th>Title</th>
            <th>Length</th>
            <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <TrackRow v-for="track in tracks" :key="track.TrackId"
                :title="track.TrackTitle"
                :length="track.TrackLength"
                :date="track.TrackDate"
                :image_name="track.TrackImage"
            ></TrackRow>
        </tbody>
    </v-table>
</template>