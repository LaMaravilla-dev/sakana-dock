# AI-Scientist (Dockerizado)

Este repositorio contiene un `Dockerfile` que permite construir una imagen Docker para ejecutar el proyecto [AI-Scientist-v2](https://github.com/SakanaAI/AI-Scientist-v2) con soporte para CPU, usando Ubuntu 23.04.

## ⚙️ Requisitos

- Docker instalado: [Guía oficial](https://docs.docker.com/get-docker/)
- Una clave API válida de OpenAI

## 🚀 Cómo usar este repositorio

### 1. Clonar este repositorio

```bash
git clone https://github.com/tu-usuario/sakana-dock.git
cd sakana-dock

### 2. Clonar este repositorio
debes configurar tu api-key en las variables de entorno


docker build -t ai-scientist .
docker run --env-file .env -it --rm ai-scientist

