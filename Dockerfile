FROM mcr.microsoft.com/devcontainers/python:3.10

# Install Pylians + other cosmology libraries
RUN pip install pylians==0.12 pyccl camb halotools

# Default command keeps container alive (for Colab load)
CMD ["bash", "-c", "while sleep 300; do date > /tmp/keepalive_$$; done"]
