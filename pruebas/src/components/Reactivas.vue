<script setup>
const name = "Vue 3";

let counter = 0;

const increment = () => {
    counter++;
    // efectivamente aumentar
    console.log(counter);
};
</script>

<template>
    <h1>Hola {{ name }}!</h1>
    <h2>{{ counter }}</h2>
    <button @click="increment">Click incremet</button>
    <h2>NO VA NO TIENE REACTIVIDAD REF</h2>
</template>