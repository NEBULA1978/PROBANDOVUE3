<template>
  <header>
    <img alt="Vue logo" class="logo" src="./assets/logo.svg" width="125" height="125" />
  </header>
  <h1>ARCHIVO PRINCIPAL</h1>
  <br>

  <!-- Example 1 -->
  <EjemploUno />

  <!-- Example 2 -->
  <EjemploDos />
  <!-- Agregar un salto de línea -->
  <br>

  <!-- Example 3 -->
  <EjemploTres />


  <!-- Example 4 -->
  <EjemploCuatro />

  <!-- Agregar un salto de línea -->
  <br>

  <!-- Example 5 -->
  <EjemploCinco />

  
  
  <div>
    <!-- Imported Components -->
    <Objetos />
    <VforVif />
    
    
    <Von />
    <Vonparametros />
    <Reactivas />
    <br>
    <h2>Tiene reactividad con ref</h2>
    <ReactivasRef />
    <br>
    <h2>Practica botones</h2>
    <Practica />
    <h2>Practica Computed</h2>
    <Computed />
    
    <h2>Practica botones 3</h2>
    <Practica2 />
    <h2>Practica botones con css bootstrap</h2>
    <Bootstrap />
  </div>
</template>

<script setup>
import Objetos from './components/Objetos.vue'
import VforVif from './components/VforVif.vue'
import EjemploUno from './components/EjemploUno.vue'
import EjemploDos from './components/EjemploDos.vue'
import EjemploTres from './components/EjemploTres.vue'
import EjemploCuatro from './components/EjemploCuatro.vue'
import EjemploCinco from './components/EjemploCinco.vue'
import Von from './components/Von.vue'
import Vonparametros from './components/Vonparametros.vue'
import Reactivas from './components/Reactivas.vue'
import ReactivasRef from './components/ReactivasRef.vue'
import Practica from './components/Practica.vue'
import Computed from './components/Computed.vue'
import Practica2 from './components/Practica2.vue'
import Bootstrap from './components/Bootstrap.vue'

// const name = 'Vue 3';
// const styleColor = "color: red;";
// const styleColor2 = "color: blue;";
// const active = true;
// const colors = ["blue", "red", "green"];
// const counter = 1;
// const arrayFrutas = ["🍎", "🍌", "🍉", "🍓", "🍒"];
// const arrayFrutas2 = [
//   {
//     name: "Manzana",
//     price: "$1.00",
//     description: "Una manzana",
//   },
//   {
//     name: "Pera",
//     price: "$2.00",
//     description: "Una pera",
//   },
//   {
//     name: "Naranja",
//     price: "$3.00",
//     description: "Una naranja",
//   },
// ];





</script>

<style scoped></style>
