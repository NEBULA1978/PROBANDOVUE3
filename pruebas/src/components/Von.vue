<script setup>
const name = "Vue 3";

// método handleClick
const handleClick = () => {
    console.log("me diste cick");
};
</script>

<template>
    <h1>Hola {{ name }}!</h1>
    <button v-on:click="handleClick">Click aquí</button>
    <button @click="handleClick">Click aquí</button>
</template>