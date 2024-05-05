<script setup>
import {ref} from 'vue'

const props = defineProps({
    image_name: String,
    title: String,
    length: String,
    date: String,
})
</script>

<template>
    <tr>
        <v-img height="75px" :src="`../../public/images/cover_art/American_Teenager.jpg`"></v-img>
        <td>{{ title }}</td>
        <td>{{ length }}</td>
        <td>{{ date }}</td>
    </tr>
</template>