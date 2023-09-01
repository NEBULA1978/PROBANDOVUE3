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

<!-- TIP

En lugar de una propiedad calculada, podemos definir la misma función como un método. Para el resultado final, los dos enfoques son exactamente iguales. Sin embargo, la diferencia es que las propiedades calculadas se almacenan en caché en función de sus dependencias reactivas.
Una propiedad calculada solo se volverá a evaluar cuando algunas de sus dependencias reactivas hayan cambiado. -->

<!-- // método -->
<!-- const classCounter = () => {
    if (counter.value === 0) {
        return "zero";
    }
    return counter.value > 0 ? "positive" : "negative";
}; -->

<!-- <h2 :class="classCounter()">
    {{ counter }}
</h2> -->