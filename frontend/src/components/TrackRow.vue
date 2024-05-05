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
        <v-img v-if="!image_name" class="mx-2 my-1 rounded" :src="`../../public/images/misc/track_placeholder.jpg`"></v-img>
        <v-img v-else class="mx-2 my-1 rounded" :src="`../../public/images/cover_art/${image_name}.jpg`"></v-img>
        <td>{{ title }}</td>
        <td>{{ length }}</td>
        <td>{{ date }}</td>
    </tr>
</template>