# docker-agent-sandbox

> Hardened Docker container sandbox & deterministic GitHub Actions evaluation harness for autonomous AI agents.

[![CI Evals](https://img.shields.io/badge/CI-GitHub_Actions-2088FF.svg)](https://github.com/vaibhav7087/docker-agent-sandbox/actions)
[![Docker](https://img.shields.io/badge/Docker-Hardened-2496ED.svg)](https://www.docker.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📌 Features

- **Hardened Linux cgroups:** Memory capped to 512MB, CPU quota to 1.0, and PID limits to 100 to prevent runaway agent subprocesses.
- **Least-Privilege Security:** Non-root execution (`appuser`), all Linux capabilities dropped (`cap_drop: ALL`), and `no-new-privileges: true`.
- **Deterministic Evals in CI:** Automated GitHub Actions workflow testing token budgets, tool call precision, latency ceilings, and schema conformance on every commit.

---

## 🚀 Running Evals Locally

```bash
# Run via pytest
pip install -r requirements.txt
pytest evals/ -v

# Or run within hardened Docker sandbox
docker compose up --build
```

---

## 👨‍💻 Author

**Vaibhav Kadam**  
- Portfolio: [builtbyvaibhav.bylance.in](https://builtbyvaibhav.bylance.in)  
- GitHub: [@vaibhav7087](https://github.com/vaibhav7087)
