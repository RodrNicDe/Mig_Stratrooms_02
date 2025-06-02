import app from "./app.js";

const port = process.env.PORT || 3001;
const host = '0.0.0.0'; // importante para Render

app.listen(port, host, () => {
  console.log(`Servidor corriendo en http://${host}:${port}`);
});
