<template>
  <header>
    <img alt="Vue logo" class="logo" src="./assets/logo.svg" width="125" height="125" />
  </header>
  <h1>ARCHIVO PRINCIPAL</h1>
  <br>

  <!-- Example 1 -->
  <EjemploUno/>

  <!-- Agregar un salto de línea -->
  <br>

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

  <!-- Example 3 -->
  <div>
    <p>EJEMPLO 3</p>
    <pre>
      {{ ejemplo3 }}
    </pre>

    <!-- v-show -->
    <h2 v-show="active">Estoy en true</h2>
  </div>
  <!-- Agregar un salto de línea -->
  <br>

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



const ejemplo2 = `
  <h2>Hola {{ name }}!</h2>
  <h2 v-if="active">v-if en acción</h2>
`;

const ejemplo3 = `
  <h2 v-show="active">Estoy en true</h2>
`;

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
