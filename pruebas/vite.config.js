import { fileURLToPath, URL } from 'node:url';
import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';

export default defineConfig({
  base: '/PROBANDOVUE3/', // Reemplaza con el nombre de tu repositorio
  plugins: [vue()],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url)),
    },
  },
  server: {
    port: 3000, // Cambia el puerto según tus preferencias
  },
  build: {
    outDir: 'docs', // Carpeta de salida para GitHub Pages
  },
  // Otras configuraciones que desees agregar...
});
