import axios from 'axios'

const api = axios.create({
  baseURL: 'https://improved-space-train-g45r7gg495xx29jx6-5000.app.github.dev', // o tu dominio en producción
})

export default api
