<script setup>
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


// Código del Ejemplo 1
const ejemplo1 = ` <ul>
    <template v-for="fruta in arrayFrutas" :key="fruta.name">
      <li v-if="fruta.stock > 0">
        {{ fruta }}
      </li>
    </template>
  </ul>`
// Código del Ejemplo 2
const ejemplo2 = `<p>Ejemplo2</p>
  <pre>
    {{ ejemplo2 }}
  </pre>

  <ul>
    <template v-for="fruta in arrayFrutas" :key="fruta.name">
      <li v-if="fruta.stock > 0">
        Nombre: {{ fruta.name }}, Precio: {{ fruta.price }}
      </li>
    </template>
  </ul>`
</script>

<template>
    <h1>Hola {{ name }}!</h1>

    <p>Ejemplo1</p>
    <pre>
    {{ ejemplo1 }}
  </pre>
    <ul>
        <template v-for="fruta in arrayFrutas" :key="fruta.name">
            <li v-if="fruta.stock > 0">
                {{ fruta }}
            </li>
        </template>
    </ul>

    <!-- Agrega un espacio o línea aquí -->

    <p>Ejemplo2</p>
    <pre>
    {{ ejemplo2 }}
  </pre>

    <ul>
        <template v-for="fruta in arrayFrutas" :key="fruta.name">
            <li v-if="fruta.stock > 0">
                Nombre: {{ fruta.name }}, Precio: {{ fruta.price }}
            </li>
        </template>
    </ul>
</template>
