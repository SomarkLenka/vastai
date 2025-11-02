# Use the vastai/openwebui image as the base
FROM vastai/openwebui:v0.6.18-cuda-12.8-pytorch-2.7.1-py312

# Install latest Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama default port
EXPOSE 11434

# The base image already has its own entrypoint/cmd, we keep it
# Ollama will be available as a service within the container
