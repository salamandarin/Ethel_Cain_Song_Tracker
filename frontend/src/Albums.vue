<script setup>
import {ref} from 'vue'
import AlbumCard from './components/AlbumCard.vue'

// const albums = ref([])

// fetch('http://localhost:8000/listalbums', {
//     method: 'POST'
// })
// .then(response => response.json())
// .then(data => {
//     console.log(data)
//     data.forEach(album => {
//         albums.value.push(album)
//     });
// })

let AlbumId = 0;
const albums = ref([
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    {
        AlbumId: AlbumId++,
        Title: 'Test Album Title',
        Date: 'April 23, 2024',
        Image: 'Nightmares.jpg',
        Description: 'description',
    },
    ])


const tracklists = ref([])
</script>

<template>
    <v-container w-100>
        <h1>Albums</h1>
        <v-row>
            <v-col cols="3" v-for="album in albums" :key="album.AlbumId">
                <AlbumCard :title="album.Title" :date="album.Date" :image_name="album.Image">{{ album.Description }}</AlbumCard>
            </v-col>
        </v-row>
    </v-container>
</template> v