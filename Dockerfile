# Use the vastai/openwebui image as the base
FROM vastai/openwebui:v0.6.18-cuda-12.8-pytorch-2.7.1-py312

# Install Ollama binary directly to minimize disk space usage
RUN curl -L https://github.com/ollama/ollama/releases/latest/download/ollama-linux-amd64 -o /usr/local/bin/ollama && \
    chmod +x /usr/local/bin/ollama

# Expose Ollama default port
EXPOSE 11434

# The base image already has its own entrypoint/cmd, we keep it
# Ollama will be available as a service within the container
