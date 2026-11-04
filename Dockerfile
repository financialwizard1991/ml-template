# 1. Start from an official Linux image with Python 3.11 already installed
FROM python:3.11-slim

# 2. Work inside /app in the container (like cd, and creates it)
WORKDIR /app

# 3. Copy only what install needs: the recipe and the package
COPY pyproject.toml ./
COPY src/ src/

# 4. Install the package and dev tools (same command as last night)
RUN pip install --no-cache-dir -e ".[dev]"

# 5. Copy the tests
COPY tests/ tests/

# 6. What runs when the container starts
CMD ["pytest", "-q"]