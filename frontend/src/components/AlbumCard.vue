<script setup>
defineProps({
    title: String,
    date: String,
    image_name: String,
    tracklist: Array
})
</script>

<template>
    <v-card>
        <v-card-title>{{ title }}</v-card-title>
        <v-card-subtitle>{{ date }}</v-card-subtitle>
        <img width="100%" :src="`../../public/images/albums/${image_name}`">
        <br>
        <v-expansion-panels>
            <v-expansion-panel title="Tracklist">
                <v-expansion-panel-text>
                    <v-list lines="one">
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

