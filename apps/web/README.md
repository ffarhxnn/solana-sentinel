# Sentinel web dashboard

Next.js interface for wallet observations, alert rules, provider health and paper research. Run from the repository root with `pnpm dev`, then open `http://127.0.0.1:4317`.

The default is a labeled, local demo with in-memory persistence. Live transaction broadcasting is disabled. Production defaults to monitor-only and requires operator authentication. Credentials remain server-side; never put private provider keys in `NEXT_PUBLIC_` settings.

See the root README for architecture, contribution scope and validation, and `SECURITY.md` for deployment boundaries.
