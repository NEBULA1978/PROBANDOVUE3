<script setup>
import { ref } from "vue";

const name = "Vue 3";

const counter = ref(0);

const increment = () => {
    counter.value++;
};

const decrement = () => {
    counter.value--;
};

const reset = () => {
    counter.value = 0;
};
</script>

<template>
    <h1>Hola {{ name }}!</h1>
    <h2 :class="counter >= 0 ? 'positive' : 'negative'">
        {{ counter }}
    </h2>
    <button @click="increment">Incremet</button>
    <button @click="decrement">Decrement</button>
    <button @click="reset">Reset</button>
</template>



