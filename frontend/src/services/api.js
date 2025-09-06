import axios from "axios";

const API_URL = process.env.REACT_APP_API_URL || "https://expert-space-parakeet-4jgvwxxj4w5vcj9wv-5000.app.github.dev";

export const getFicha = () => axios.get(`${API_URL}/FICHAS`);
export const createFicha = (ficha) => axios.post(`${API_URL}/FICHAS`, ficha);
export const deleteFicha = (id) => axios.delete(`${API_URL}/FICHAS/${id}`)