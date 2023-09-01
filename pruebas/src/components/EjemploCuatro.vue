<template>
      <p>EJEMPLO 4</p>
      <pre>
      {{ ejemplo4 }}
    </pre>
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

const ejemplo4 = `
  <ul>
    <li v-for="(fruta, index) in arrayFrutas" :key="index">
      {{ fruta }}
    </li>
  </ul>

  <ul>
    <li v-for="fruta in arrayFrutas2" :key="fruta.name">
      {{ fruta.name }} - {{ fruta.price }} - {{ fruta.description }}
    </li>
  </ul>
`;

</script>
<style scoped>
/* # Estilos específicos para el componente EjemploUno */
</style>
