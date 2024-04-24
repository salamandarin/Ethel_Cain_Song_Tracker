<script setup>
defineProps({
    title: String,
    date: String,
    image_name: String
})
</script>

<template>
    <v-card>
        <v-card-title>{{ title }}</v-card-title>
        <v-card-subtitle>{{ date }}</v-card-subtitle>
        <img width="100%" :src="`../../public/images/albums/${image_name}`">
        <br>
        <v-card-text><slot></slot></v-card-text>
    </v-card>
</template>

