#!/bin/bash

# Install Ollama (if not installed)
curl -fsSL https://ollama.ai/install.sh | sh

# Start Ollama service
ollama serve &

# Wait for Ollama to start
sleep 5

# Start the Streamlit app
streamlit run app.py --server.port $PORT --server.address 0.0.0.0
