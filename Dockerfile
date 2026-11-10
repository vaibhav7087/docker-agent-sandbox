# Hardened Non-Root Sandbox Container for AI Agent Subprocess Execution
FROM python:3.12-alpine

# Enforce least-privilege security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /home/appuser/sandbox

# Install minimal test runner dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source with strict permissions
COPY --chown=appuser:appgroup . .

# Run as unprivileged user
USER appuser

# Security flags
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

CMD ["pytest", "evals/", "-v"]
