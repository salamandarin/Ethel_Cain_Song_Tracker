<script setup>
import { ref, computed } from 'vue'
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


const searchInput = ref("")
const searchResults = ref([])
const searchError = ref("")

// search for song by title
function songSearch() {
    // make sure old results & errors are cleared
    searchResults.value = []
    searchError.value = ""

    fetch('http://localhost:8000/searchbysongname', {
        method: 'POST',
        body: JSON.stringify({
            "TrackTitle": searchInput.value.trim()
        })
    })
    .then(response => response.json())
    .then(data => {
        data.forEach(track => {
            searchResults.value.push(track)
        });
    })
    .catch(error => {
        searchError.value = `No tracks with the title '${searchInput.value.trim()}' were found`
    });
}

// filter tracks
const filteredTracks = computed(() => {
    // if no search results, return all tracks
    if (searchResults.value.length === 0) {
        return tracks.value
    }
    // otherwise return search results
    else {
        return searchResults.value
    }
})

// reset table
function resetTable() {
    searchInput.value = "" // clear search bar
    searchResults.value = [] // clear results
    searchError.value = ""
}
</script>

<template>
    <v-container class="mt-2">
        <v-row>
            <v-text-field
                v-model="searchInput"
                @keydown.enter="songSearch"
                :error-messages="searchError"
                label="Search"
                prepend-inner-icon="mdi-magnify"
                variant="outlined"
                clearable
                density="compact"
                class="mr-3"
            ></v-text-field>

            <v-btn class="bg-grey-darken-3" @click="resetTable">Reset Table</v-btn>
        </v-row>
    </v-container>

    <v-table
        density="compact"
        height="calc(100vh - 160px)" fixed-header
        class="mx-16 mb-4 rounded-lg"
    >
        <thead>
        <tr>
            <th></th>
            <th class="text-center">Title</th>
            <th>Length</th>
            <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <TrackRow v-for="track in filteredTracks" :key="track.TrackId"
                :title="track.TrackTitle"
                :length="track.TrackLength"
                :date="track.TrackDate"
                :image_name="track.TrackImage"
            ></TrackRow>
        </tbody>
    </v-table>
</template>