<script setup>
import {ref} from 'vue'

const tracks = ref([])

fetch('http://localhost:8000/listtracks', {
    method: 'POST'
})
.then(response => response.json())
.then(data => {
    data.forEach(track => {
        console.log(track)
        tracks.value.push(track)
    });
})

const expanded = ref([])
const search = ref([])
</script>

<template>
    <v-table
        density="compact"
        theme="dark"
        height="calc(100vh - 64px)" fixed-header
    >  <!-- 64px is height of app-bar -->
        <thead>
            <tr>
                <th>Track</th>
                <th>Length</th>
                <th>Date</th>
                <th>Album</th>
                <th>Artist</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="track in tracks" :key="track.TrackId">
                <td>{{ track.TrackTitle }}</td>
                <td>{{ track.TrackLength }}</td>
                <td>{{ track.TrackDate }}</td>
                <td>{{ track.Album }}</td>
                <td>{{ track.Artist }}</td>
            </tr>
        </tbody>
    </v-table>


    <v-container>
        <v-text-field
            v-model="search"
            label="Search"
            prepend-inner-icon="mdi-magnify"
            variant="outlined"
            clearable
            density="compact"
            hide-details
            single-line
        ></v-text-field>
        <v-data-table
            v-model:expanded="expanded"
            :items="tracks"
            :search="search"
            item-value="TrackId"
            density="compact"
            show-expand
        >
            <template v-slot:expanded-row="{ columns, item }">
                <tr>
                    <td :colspan="columns.length">
                        &lt; put notes about {{ item.Title }} here &gt;</td>
                </tr>
            </template>
        </v-data-table>
    </v-container>

</template>