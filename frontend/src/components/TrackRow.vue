<script setup>
const props = defineProps({
    track_id: Number,
    title: String,
    length: String,
    date: String,
    image_name: String,
    image_size: String,
})
</script>

<template>
    <tr>
        <td style="width: 0" class="text-center px-0 track-num">{{ track_id }}</td>

        <!-- placeholder track image there is none -->
        <v-img
            v-if="!image_name"
            :height="image_size"
            :width="image_size"
            min-height="50px"
            min-width="50px"
            class="mr-2 my-1 rounded"
            :src="`../../public/images/misc/track_placeholder.jpg`"
        ></v-img>
        <!-- track image -->
        <v-img
            v-else
            :height="image_size"
            :width="image_size"
            min-height="50px"
            min-width="50px"
            class="mr-2 my-1 rounded"
            :src="`../../public/images/cover_art/${image_name}`"
        ></v-img>

        <!-- other variables -->
        <td>{{ title }}</td>
        <td class="text-center">{{ length }}</td>
        <td class="text-center">{{ date }}</td>
    </tr>
</template>

<style>
.track-num {
    border-style: none !important;
    font-size: 12px;
    color: #535353;
}
</style>