<!-- Las propiedades computadas nos sirven para generar calculos en nuestros componentes, por ejemplo no se recomienda colocar demasiada lógica en nuestras plantillas HTML, ya que dificulta la interpretación de nuestros componentes.
Por eso, para la lógica compleja que incluye datos reactivos, se recomienda utilizar una propiedad calculada -->

<script setup>
import { ref, computed } from "vue";

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