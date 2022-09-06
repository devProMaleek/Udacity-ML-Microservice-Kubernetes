

#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="devpromaleek07/abdulmalik07"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run abdulmalik07 \
    --image=$dockerpath \
    --port=80 --labels app=devpromaleek07


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward devpromaleek07 8000:80

