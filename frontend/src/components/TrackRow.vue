<script setup>
const props = defineProps({
    title: String,
    length: String,
    date: String,
    image_name: String,
    image_size: String,
})
</script>

<template>
    <tr>
        <!-- placeholder image if track has none -->
        <v-img
            v-if="!image_name"
            :height="image_size"
            :width="image_size"
            class="mx-2 my-1 rounded"
            :src="`../../public/images/misc/track_placeholder.jpg`"
        ></v-img>
        <!-- track image -->
        <v-img
            v-else
            :height="image_size"
            :width="image_size"
            class="mx-2 my-1 rounded"
            :src="`../../public/images/cover_art/${image_name}.jpg`"
        ></v-img>

        <!-- other variables -->
        <td>{{ title }}</td>
        <td>{{ length }}</td>
        <td>{{ date }}</td>
    </tr>
</template>