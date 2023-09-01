<script setup>
// import HelloWorld from './components/HelloWorld.vue'
import Objetos from './components/Objetos.vue'
import VforVif from './components/VforVif.vue'
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
// Código del Ejemplo 1
const ejemplo1 = `
  <h2>Hola {{ name }}! de javascript</h2>
  <!-- Muestro variable del color -->
  <h2 v-bind:style="styleColor">Hola {{ name }}</h2>
  <!-- Muestro variable con otro color -->
  <h2 :style="styleColor2">Hola {{ name }}</h2>

  <!-- Uso de expresiones de JavaScript -->
  <h2 :style="styleColor">Hola {{ name.toUpperCase() }}</h2>
  <h3>{{ active ? "Estoy activado" : "Estoy desactivado" }}</h3>
  <h4 :style="'color: ' + colors[2]">Color con interpolación</h4>
  <h5>Contador: {{ counter + 1 }}</h5>
`;

</script>

<template>
  <header>
    <img alt="Vue logo" class="logo" src="./assets/logo.svg" width="125" height="125" />

  </header>
  <h1>Hola VUE 3 h1</h1>
      <pre>
    {{ ejemplo1 }}
  </pre>

  <h2>Hola {{ name }}! de javascript</h2>
  <!-- Muestro variable del color -->
  <h2 v-bind:style="styleColor">Hola {{ name }}</h2>
  <!-- Muestro variable con otro color -->
  <h2 :style="styleColor2">Hola {{ name }}</h2>

  <!-- Uso de expresiones de JavaScript -->
  <h2 :style="styleColor">Hola {{ name.toUpperCase() }}</h2>
  <h3>{{ active ? "Estoy activado" : "Estoy desactivado" }}</h3>
  <h4 :style="`color: ${colors[2]}`">Color con interpolación</h4>
  <h5>Contador: {{ counter + 1 }}</h5>

  <!-- Cada enlace solo puede contener una sola expresión , lo siguiente NO funcionará:

  <p>{{if (active) { return counter }}}</p> -->

  <!-- ///////////////////////// -->
  <!-- Directivas -->
  <!-- Las directivas son atributos especiales con el prefijo v- .
  El trabajo de una directiva es aplicar actualizaciones de forma reactiva al DOM
  #v-if
  doc v-if(opens new window)
  La directiva v-if se usa para mostrar o ocultar un elemento de la plantilla. -->

  <h2>Hola {{ name }}!</h2>
  <h2 v-if="active">v-if en acción</h2>

  <!-- v-else
  Un elemento v-else debe seguir inmediatamente a un v-if o un v-else-if elemento; de lo contrario, no se reconocerá. -->

  <h2 v-if="active">v-if en acción</h2>
  <h2 v-else>v-else en acción</h2>

  <h2 v-if="active === true">Estoy en true</h2>
  <h2 v-else-if="active === false">Estoy en false</h2>
  <h2 v-else>Estoy indeciso</h2>

  <!-- Incorrecto:

  <template>
      <h1>Hola {{ name }}!</h1>
      <h2 v-if="active === true">Estoy en true</h2>
      <h2 v-else-if="active === false">Estoy en false</h2>
      <p>Lorem ipsum dolor sit</p>
      <h2 v-else>Estoy indeciso</h2>
  </template> -->

  <!-- v-show
  La directiva v-show se usa para mostrar o ocultar un elemento de la plantilla.
  v-show solo cambia la propiedad display CSS del elemento.
  En términos generales, v-if tiene costos de alternancia más altos mientras que v-show tiene costos de renderización inicial más altos. Así que prefiera v-show si necesita alternar algo con mucha frecuencia, y prefiera v-if si es poco probable que la condición cambie en el tiempo de ejecución. -->

  <h2 v-show="active">Estoy en true</h2>

  <!-- v-for
  doc v-for(opens new window)
  La directiva v-for se usa para iterar sobre una lista de elementos.
  Para darle a Vue una pista para que pueda rastrear la identidad de cada nodo y, por lo tanto, reutilizar y reordenar los elementos existentes, debe proporcionar un atributo key único para cada elemento. -->

  <ul>
    <li v-for="(fruta, index) in arrayFrutas" :key="index">
      {{ fruta }}
    </li>
  </ul>

  <ul>
    <li v-for="fruta in arrayFrutas2" :key="name">
      {{ fruta.name }} - {{ fruta.price }} - {{ fruta.description }}
    </li>
  </ul>
  <!-- Importo componentoe de objeto -->
  <Objetos />
  <VforVif />
</template>

<!-- Objetos: -->
<!-- <ul>
  <li v-for="(fruta, index) in arrayFrutas" :key="index">
    {{ fruta }}
  </li>
</ul> -->


<!-- v-for v-if -->
<!-- Cuando existen en el mismo nodo, v-if tiene una prioridad más alta que v-for.
Eso significa que la condición v-if no tendrá acceso a las variables del alcance de v-for: -->



<style scoped></style>

<!-- APUNTES -->
<!-- Este código es un ejemplo de una aplicación Vue 3. Aquí hay una descripción de lo que hace cada parte del código:

    En la sección <script setup>, se define una serie de variables, incluidas algunas para ejemplos de Vue, como name, arrayFrutas, y varios ejemplos de plantillas. También se importan algunos componentes externos que no están presentes en este fragmento de código.

    En la sección <template>, se utiliza el sistema de plantillas de Vue para renderizar contenido en la interfaz de usuario. Aquí hay algunas de las cosas que se hacen en esta sección:
        Se muestra el nombre name en varios lugares utilizando interpolación de datos: {{ name }}.
        Se utiliza la directiva v-if para mostrar o ocultar elementos según la condición active. Por ejemplo: <h2 v-if="active">v-if en acción</h2>.
        Se utiliza la directiva v-show para mostrar u ocultar un elemento según la condición active. Por ejemplo: <h2 v-show="active">Estoy en true</h2>.
        Se utiliza la directiva v-for para iterar sobre una lista de elementos y renderizarlos en una lista. Por ejemplo: <li v-for="(fruta, index) in arrayFrutas" :key="index">{{ fruta }}</li>.
        También se muestra contenido condicional basado en la disponibilidad de stock de frutas.
        Se importan y utilizan componentes externos Objetos y VforVif en la plantilla.

    En la sección <style scoped>, puedes agregar estilos CSS específicos para esta plantilla. Los estilos definidos aquí solo se aplicarán a los elementos dentro de esta plantilla y no afectarán a otros elementos en la aplicación.

En resumen, este código muestra cómo utilizar las directivas de Vue.js como v-if, v-show, y v-for para controlar la visibilidad y generar contenido dinámico en una aplicación Vue 3. También demuestra cómo organizar el código en una estructura Vue 3 típica con una sección <script setup> para la lógica y una sección <template> para la interfaz de usuario. -->