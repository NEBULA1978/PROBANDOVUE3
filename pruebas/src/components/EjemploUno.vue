<template>
  <div>
      <!-- Example 1 -->
    <div>
      <p>EJEMPLO 1</p>
      <pre>
      {{ ejemplo1 }}
    </pre>
    
      <h2>Hola {{ name }}! de javascript</h2>
      <h2 v-bind:style="styleColor">Hola {{ name }}</h2>
      <h2 :style="styleColor2">Hola {{ name }}</h2>
      <h2 :style="styleColor">Hola {{ name.toUpperCase() }}</h2>
      <h3>{{ active ? "Estoy activado" : "Estoy desactivado" }}</h3>
      <h4 :style="'color: ' + colors[2]">Color con interpolación</h4>
      <h5>Contador: {{ counter + 1 }}</h5>
    </div>
    <!-- Agregar un salto de línea -->
    <br>
  </div>
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

const ejemplo1 = `
  <h2>Hola {{ name }}! de javascript</h2>
  <h2 v-bind:style="styleColor">Hola {{ name }}</h2>
  <h2 :style="styleColor2">Hola {{ name }}</h2>
  <h2 :style="styleColor">Hola {{ name.toUpperCase() }}</h2>
  <h3>{{ active ? "Estoy activado" : "Estoy desactivado" }}</h3>
  <h4 :style="'color: ' + colors[2]">Color con interpolación</h4>
  <h5>Contador: {{ counter + 1 }}</h5>
`;
</script>
<style scoped>
/* # Estilos específicos para el componente EjemploUno */
</style>
