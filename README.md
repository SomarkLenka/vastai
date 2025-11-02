# VastAI OpenWebUI with Ollama

Custom Docker image based on VastAI's OpenWebUI with the latest version of Ollama installed.

## Base Image
- **Base:** vastai/openwebui:v0.6.18-cuda-12.8-pytorch-2.7.1-py312
- **Includes:**
  - OpenWebUI v0.6.18
  - CUDA 12.8
  - PyTorch 2.7.1
  - Python 3.12
  - Latest Ollama

## Building Locally

```bash
docker build -t somark28/openwebui:ollama-latest .
```

## Building on GitHub Actions

This repository uses GitHub Actions to automatically build and push the Docker image to Docker Hub.

### Setup Instructions

1. **Fork or push this repository to GitHub**

2. **Add Docker Hub credentials as GitHub Secrets:**
   - Go to your GitHub repository
   - Click on `Settings` → `Secrets and variables` → `Actions`
   - Click `New repository secret`
   - Add two secrets:
     - `DOCKER_USERNAME`: Your Docker Hub username (somark28)
     - `DOCKER_PASSWORD`: Your Docker Hub password or access token

3. **Trigger the build:**
   - **Automatic:** Push to the `main` branch
   - **Manual:** Go to `Actions` tab → `Build and Push Docker Image` → `Run workflow`

The build will take 20-40 minutes on GitHub's servers and will automatically push to Docker Hub.

## Running the Container

```bash
docker run -d \
  -p 8080:8080 \
  -p 11434:11434 \
  --gpus all \
  somark28/openwebui:ollama-latest
```

- Port 8080: OpenWebUI interface
- Port 11434: Ollama API

## Image Size
Approximately 45.8 GB
