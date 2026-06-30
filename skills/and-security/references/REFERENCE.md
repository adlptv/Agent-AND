# PINTAR Security Reference

## OWASP Top 10
1. Broken Access Control
2. Cryptographic Failures
3. Injection (SQL, NoSQL, Command, LDAP)
4. Insecure Design
5. Security Misconfiguration
6. Vulnerable Components
7. Auth Failures
8. Software & Data Integrity
9. Logging & Monitoring Failures
10. SSRF

## Secure Coding
- Input validation: never trust user input
- Output encoding: XSS prevention
- Parameterized queries: SQL injection prevention
- CSP headers, CORS configuration, CSRF tokens
- Rate limiting, WAF rules

## Tools
- SAST: SonarQube, Semgrep, Bandit, ESLint-security
- DAST: OWASP ZAP, Burp Suite, Nikto
- Dependency: Dependabot, Snyk, npm audit
- Secret scanning: git-secrets, truffleHog, Gitleaks

## Network
- TLS 1.3, certificate pinning
- Firewall: iptables, nftables, Windows Firewall
- VPN: WireGuard, OpenVPN, Zero Trust architecture
- Scanning: Nmap, masscan methodology
