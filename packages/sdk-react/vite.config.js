import react from '@vitejs/plugin-react'
import { defineConfig } from 'vite'
import path from 'path'

export default defineConfig({
  plugins: [react()],
  define: {
    'import.meta.env.VITE_NODE_ENV': JSON.stringify(process.env.VITE_NODE_ENV || 'development'),
  },
  build: {
    outDir: 'dist',
    emptyOutDir: true,
  },
  server: {
    hmr: {
      clientPort: 3012
    }
  }
})
