<script setup>
// import HelloWorld from './components/HelloWorld.vue'

const name = "Vue 3";
const arrayFrutas = [
    {
        name: "Manzana",
        price: "$1.00",
        description: "Una manzana",
        stock: 0,
    },
    {
        name: "Pera",
        price: "$2.00",
        description: "Una pera",
        stock: 10,
    },
    {
        name: "Naranja",
        price: "$3.00",
        description: "Una naranja",
        stock: 20,
    },
];
</script>

<template>
    <header>
        <img alt="Vue logo" class="logo" src="../assets/logo.svg" width="125" height="125" />

    </header>





    <!-- v-for v-if -->
    <!-- Cuando existen en el mismo nodo, v-if tiene una prioridad más alta que v-for.
  Eso significa que la condición v-if no tendrá acceso a las variables del alcance de v-for: -->

    <h1>Hola {{ name }}!</h1>
    <ul>
        <li v-for="fruta in arrayFrutas" :key="fruta.name" v-if="fruta.stock > 0">
            {{ fruta }}
        </li>
    </ul>

    <!-- SOLUCION -->
    <!-- <ul>
        <li v-for="fruta in arrayFrutas3" :key="fruta.name" v-if="fruta.stock > 0">
            {{ fruta }}
        </li>
    </ul> -->
</template>


<style scoped></style>
