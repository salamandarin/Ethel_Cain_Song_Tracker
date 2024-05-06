<script setup>
import { ref } from 'vue'

const row_1 = ref([
    "Pitt_tall_green.jpeg",
    "Chicago_green_1.jpeg",
    "Chicago_orange_1.jpeg",
])
const row_2 = ref([
    "Pitt_wide_red_1.PNG",
    "Pitt_wide_green_2.PNG",
])
</script>

<template>
    <div class="first-about">
        <v-img class="about-photo" src="../public/images/home_page/other/band.jpg"></v-img>
        <article>
            <h1>Background</h1>
            <p>Out of 200+ known tracks attributed to Ethel Cain, only about 40 of those are available major streaming services. The rest were put onto various of the internet at some point in time. Some come from obscure corners of the internet (for example, demo tracks from Preacher's Daughter came from a Google Drive folder she once shared), and many others were posted by her either on Soundcloud, Tumblr, or Bandcamp. This website attempts to consolidate all of that information in one place.</p>
        </article>
    </div>
    <div class="second-about">
        <article>
            <h1>About</h1>
            <p>Hayden Silas Anhedönia (aka Ethel Cain) is a singer, songwriter, and producer from Perry, Florida.
                She began releasing music under the name Ethel Cain in 2019, and released her debut album,
                Preacher's Daughter, in 2022.</p>
            <br>
            <p>Her debut album, Preacher's Daughter, is a concept album that tells the story of the character Ethel Cain. It is the first album in the Ethel Cain family tree trilogy, and the only one released so far.</p>
        </article>
        <v-img class="desktop-tablet-only about-photo" src="../public/images/home_page/other/church.jpg"></v-img>
    </div>

    <v-container class="mt-10">
        <v-row>
            <v-col v-for="(image, index) in row_1" :key="index" cols="4" class="d-flex flex-wrap">
                <v-img :src="`../../public/images/home_page/image_grid/${image}`"></v-img>
            </v-col>
        </v-row>
        <v-row>
            <v-col v-for="(image, index) in row_2" :key="index" cols="6" class="d-flex flex-wrap">
                <v-img :src="`../../public/images/home_page/image_grid/${image}`"></v-img>
            </v-col>
        </v-row>
    </v-container>

    <v-carousel class="mt-16" hide-delimiters height="calc(100vh - 64px)"> <!-- menu bar is 64px -->
        <v-carousel-item src="../public/images/home_page/live_shows/EC_2_edited.jpg"></v-carousel-item>
        <v-carousel-item class="carousel" src="../public/images/home_page/live_shows/EC_3.jpg"></v-carousel-item>
        <v-carousel-item src="../public/images/home_page/live_shows/EC_4.jpg"></v-carousel-item>
    </v-carousel>
</template>

<style>
.first-about {
    display: grid;
    grid-template-columns: 55% 45%;

    margin-left: 40px;
    margin-right: 40px;
    margin-top: 0;
}
.first-about article,
.second-about article {
    margin-top: 50px;
}
.first-about h1,
.second-about h1 {
    font-size: 30px;
    margin-left: 25px;
}
.first-about p,
.second-about p {
    font-size: 20px;
    margin-left: 50px;
    margin-right: 25px;
    margin-top: 5px;
}
.second-about {
    display: grid;
    grid-template-columns: 45% 55%;

    margin-left: 40px;
    margin-right: 40px;
    margin-top: 0;
}
.about-photo {
    max-width: 100%;
    border-radius: 10px;
    margin-top: 25px;
    margin-bottom: 25px;
}
</style>