<!-- Practica
Agrega un array y su respectivo método y botón add para almacenar los números favoritos del usuario.
Pinta ese array utilizando v-for.
Utiliza :disabled en el botón add, para que solo se pueda presionar si el array no contiene números repetidos. (utiliza una propiedad computada).
:disabled si es true el botón se bloquea: -->
<!-- <button @click="add" :disabled="true">Add</button> -->

<!-- Solución -->


<script setup>
import { ref, computed } from "vue";

const name = "Vue 3";

const counter = ref(0);
const arrayCounter = ref([]);

const increment = () => {
    counter.value++;
};

const decrement = () => {
    counter.value--;
};

const reset = () => {
    counter.value = 0;
};

const add = () => {
    arrayCounter.value.push(counter.value);
};

const blockNumber = computed(() => {
    const number = arrayCounter.value.find((num) => num === counter.value);
    return number || number === 0;
});

const classCounter = computed(() => {
    if (counter.value === 0) {
        return "zero";
    }
    return counter.value > 0 ? "positive" : "negative";
});
</script>

<template>
    <h1>Hola {{ name }}!</h1>
    <h2 :class="classCounter">
        {{ counter }}
    </h2>
    <button @click="increment">Incremet</button>
    <button @click="decrement">Decrement</button>
    <button @click="reset">Reset</button>
    <button @click="add" :disabled="blockNumber">Add</button>
    <ul>
        <li v-for="(item, index) in arrayCounter" :key="index">
            {{ item }}
        </li>
    </ul>
</template>

<style>
.negative {
    color: red;
}

.positive {
    color: green;
}

.zero {
    color: black;
}
</style>