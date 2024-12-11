# Usa la imagen oficial de Go como base
FROM golang:1.23.4

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el código fuente dentro del contenedor
COPY . .

# Descarga las dependencias de Go
RUN go mod tidy

# Compila la aplicación Go
RUN go build -o app .

# Expone el puerto en el que tu aplicación va a escuchar
EXPOSE 8080

# Define el comando que ejecutará la aplicación cuando el contenedor inicie
CMD ["./app"]
