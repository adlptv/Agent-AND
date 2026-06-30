# PINTAR — Security

## OWASP Top 10
1. Broken Access Control
2. Cryptographic Failures
3. Injection (SQL, NoSQL, Command, LDAP)
4. Insecure Design
5. Security Misconfiguration
6. Vulnerable Components
7. Auth Failures
8. Software & Data Integrity Failures
9. Logging & Monitoring Failures
10. SSRF

## Secure Coding
- Input validation: never trust user input
- Output encoding: XSS prevention
- Parameterized queries: SQL injection prevention
- CSP headers, CORS, CSRF tokens
- Rate limiting, WAF rules

## Network Security
- TLS 1.3, certificate pinning
- Firewall rules (iptables, nftables, Windows Firewall)
- VPN, WireGuard, Zero Trust
- Nmap, masscan, Zmap scanning methodology

## Tools
- SAST: SonarQube, Semgrep, Bandit, ESLint-security
- DAST: OWASP ZAP, Burp Suite, Nikto
- Dependency: Dependabot, Snyk, npm audit, cargo audit
- Secret scanning: git-secrets, truffleHog, Gitleaks
