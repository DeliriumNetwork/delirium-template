import { defineConfig } from 'vite'
import solid from 'vite-plugin-solid'

export default defineConfig({
  base: './',
  plugins: [solid()],
  server: {
    port: 3000,
    proxy: {
      '/resourceName': {
        target: 'http://localhost:30120', //Replace with FiveM server direction
        changeOrigin: true,
      }
    }
  },
})
