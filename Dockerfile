# Usar una imagen base de Node.js
FROM node:20

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos de package y lock primero para instalar dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Compilar la aplicación en modo de producción
RUN npm run build

# Exponer el puerto 3000
EXPOSE 3000

# Comando para correr la aplicación
CMD ["npm", "start"]
