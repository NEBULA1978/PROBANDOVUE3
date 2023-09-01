<template>
  <!-- Example 2 -->
    <div>
      <p>EJEMPLO 2</p>
      <pre>
      {{ ejemplo2 }}
    </pre>

      <h2>Hola {{ name }}!</h2>
      <h2 v-if="active">v-if en acción</h2>
    </div>
    <!-- Agregar un salto de línea -->
    <br>
</template>
<script setup>
// # Agrega lógica del componente EjemploUno aquí
const name = 'Vue 3';
const styleColor = "color: red;";
const styleColor2 = "color: blue;";
const active = true;
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


const ejemplo2 = `
  <h2>Hola {{ name }}!</h2>
  <h2 v-if="active">v-if en acción</h2>
`;
</script>
<style scoped>
/* # Estilos específicos para el componente EjemploUno */
</style>
