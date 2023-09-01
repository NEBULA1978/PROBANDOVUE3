<script setup>
import { ref } from "vue";

const name = "Vue 3";

// counter ahora es una variable reactiva
const counter = ref(0);

const increment = () => {
    // mutamos el valor a través de .value
    counter.value++;
};
</script>

<template>
    <h1>Hola {{ name }}!</h1>
    <h2>{{ counter }}</h2>
    <button @click="increment">Click incremet</button>
</template>