<script setup>
import {ref} from 'vue'
import ArtistCard from './components/ArtistCard.vue'

// const artists = ref([])

// fetch('http://localhost:8000/listartists', {
//     method: 'POST'
// })
// .then(response => response.json())
// .then(data => {
//     console.log(data)
//     data.forEach(Artist => {
//         Artists.value.push(Artist)
//     });
// })

let ArtistId = 0;
const artists = ref([
    {
        ArtistId: ArtistId++,
        Name: 'Ethel Cain',
        Image: 'Spotify_2023.jpg',
        Description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
    },
])
</script>

<template>
    <v-container>
        <v-row>
            <v-col cols="5" v-for="artist in artists" :key="artist.ArtistId">
                <ArtistCard :name="artist.Name" :image_name="artist.Image" :description="artist.Description"></ArtistCard>
            </v-col>
        </v-row>
    </v-container>
</template>