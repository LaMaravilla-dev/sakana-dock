# Imagen base
FROM ubuntu:22.04

# Desactiva prompts interactivos
ENV DEBIAN_FRONTEND=noninteractive

# Instala Python y herramientas necesarias
RUN apt-get update && apt-get install -y \
    python3 python3-venv python3-dev \
    python3-pip git curl && \
    apt-get clean

# Asegura que python y pip apunten correctamente
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1 && \
    update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# Crea directorio de trabajo
WORKDIR /app

# Copia el código del proyecto
COPY . /app

# Instala dependencias
RUN pip install --upgrade pip && \
    pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu && \
    pip install -r requirements.txt || true

# Comando de entrada
CMD ["python", "launch_scientist_bfts.py"]
