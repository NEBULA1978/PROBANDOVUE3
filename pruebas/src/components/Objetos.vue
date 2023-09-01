<script setup>
// import HelloWorld from './components/HelloWorld.vue'
const name = 'Vue 3';
// creo variable para el color
const styleColor = "color: red;";
const styleColor2 = "color: blue;";

const active = true;
// const active = false;
const colors = ["blue", "red", "green"];
const counter = 1;

const arrayFrutas = ["🍎", "🍌", "🍉", "🍓", "🍒"];

const arrayFrutas2 = [
  {
    name: "Manzana",
    price: "$1.00",
    description: "Una manzana",
  },
  {
    name: "Pera",
    price: "$2.00",
    description: "Una pera",
  },
  {
    name: "Naranja",
    price: "$3.00",
    description: "Una naranja",
  },
];

// Objetos
const fruta = {
  name: "Naranja",
  price: "$3.00",
  description: "Una naranja",
};

const arrayFrutas3 = [
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

// Código del Ejemplo 1
const ejemplo1 = `<ul>
    <li v-for="(fruta, index) in arrayFrutas" :key="index">
      {{ fruta }}
    </li>
  </ul> `
</script>

<template>
  <header>
    <img alt="Vue logo" class="logo" src="../assets/logo.svg" width="125" height="125" />

  </header>
  <br>
  <h1>COMPONENTE Objetos.vue</h1>
  <p>Ejemplo1 </p>
  <pre>
    {{ ejemplo1 }}
  </pre>
  <!-- Objetos: -->
  <ul>
    <li v-for="(fruta, index) in arrayFrutas" :key="index">
      {{ fruta }}
    </li>
  </ul>


  <!-- v-for v-if -->
  <!-- Cuando existen en el mismo nodo, v-if tiene una prioridad más alta que v-for.
  Eso significa que la condición v-if no tendrá acceso a las variables del alcance de v-for: -->

  <!-- <ul>
    <li v-for="fruta in arrayFrutas3" :key="fruta.name" v-if="fruta.stock > 0">
      {{ fruta }}
    </li>
  </ul> -->

  <!-- SOLUCION -->
  <ul>
    <li v-for="fruta in arrayFrutas3" :key="fruta.name" v-if="fruta.stock > 0">
      {{ fruta }}
    </li>
  </ul>
</template>


<style scoped></style>
