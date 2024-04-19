<script setup>
    fetch('http://localhost:8000/listtracks', {
        method: 'POST'
    })
    .then(response => response.json())
    .then(data => {
        console.log(data)
    })
</script>

<template>
    <h1>Tracks</h1>
</template>