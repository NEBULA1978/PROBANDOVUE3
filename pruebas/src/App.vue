<template>
  <header>
    <img alt="Vue logo" class="logo" src="./assets/logo.svg" width="125" height="125" />
  </header>
  <h1>ARCHIVO PRINCIPAL</h1>
  <br>

  <!-- Example 1 -->
  <EjemploUno/>
  
  <!-- Example 2 -->
  <EjemploDos/>
  <!-- Agregar un salto de línea -->
  <br>
  
  <!-- Example 3 -->
  <EjemploTres/>
 

  <!-- Example 4 -->
  <div>
    <p>EJEMPLO 4</p>
    <pre>
      {{ ejemplo4 }}
    </pre>

    <!-- v-for -->
    <div>
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
    </div>
  </div>
  <!-- Agregar un salto de línea -->
  <br>

  <!-- Example 5 -->
  <div>
    <p>EJEMPLO 5</p>
    <pre>
      {{ ejemplo5 }}
    </pre>

    <!-- Imported Components -->
    <Objetos />
    <VforVif />
  </div>
</template>

<script setup>
import Objetos from './components/Objetos.vue'
import VforVif from './components/VforVif.vue'
import EjemploUno from './components/EjemploUno.vue'
import EjemploDos from './components/EjemploDos.vue'
import EjemploTres from './components/EjemploTres.vue'

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

const ejemplo5 = `
  <!-- Imported Components -->
  <Objetos />
  <VforVif />
`;
</script>

<style scoped></style>
