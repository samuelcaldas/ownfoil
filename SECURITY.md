# Security Policy

## Supported Versions

We provide security updates for the following versions of Ownfoil:

| Version | Supported          |
| ------- | ------------------ |
| Latest  | ✅ Yes            |
| < 1.0   | ❌ No             |

## Reporting a Vulnerability

We take the security of Ownfoil seriously. If you believe you have found a security vulnerability, please report it to us as described below.

### How to Report Security Issues

**Please do not report security vulnerabilities through public GitHub issues.**

Instead, please report them privately using one of these methods:

1. **GitHub Security Advisories (Preferred)**
   - Go to https://github.com/samuelcaldas/ownfoil/security/advisories/new
   - Create a new security advisory with details about the vulnerability

2. **Email**
   - Send an email to [security email - maintainer should add their email]
   - Include the word "SECURITY" in the subject line

### What to Include in Your Report

Please include the following information in your security report:

- **Type of issue** (e.g., buffer overflow, SQL injection, cross-site scripting, etc.)
- **Full paths of source file(s) related to the manifestation of the issue**
- **The location of the affected source code** (tag/branch/commit or direct URL)
- **Any special configuration required to reproduce the issue**
- **Step-by-step instructions to reproduce the issue**
- **Proof-of-concept or exploit code** (if possible)
- **Impact of the issue**, including how an attacker might exploit the issue

This information will help us triage your report more quickly.

### Response Timeline

- **Initial Response**: We will acknowledge receipt of your vulnerability report within 48 hours
- **Status Updates**: We will send regular updates on our progress, at least every 7 days
- **Resolution**: We aim to resolve critical vulnerabilities within 30 days

### What to Expect After Reporting

1. **Acknowledgment**: We'll confirm receipt of your report
2. **Investigation**: We'll investigate and validate the vulnerability
3. **Development**: We'll develop and test a fix
4. **Release**: We'll release the security update
5. **Disclosure**: We'll coordinate public disclosure of the vulnerability

## Security Update Process

When a security vulnerability is confirmed:

1. **Immediate Assessment**: We assess the severity and impact
2. **Fix Development**: We develop a fix in a private repository
3. **Testing**: We thoroughly test the fix
4. **Release**: We release the security update
5. **Notification**: We notify users about the security update
6. **Public Disclosure**: We publish details about the vulnerability (after users have had time to update)

## Security Best Practices for Users

### Docker Security
- Always use the latest version of Ownfoil
- Keep your Docker installation up to date
- Use non-root users when possible (PUID/PGID)
- Regularly scan your containers for vulnerabilities
- Use proper network isolation

### Access Control
- Use strong, unique passwords for admin accounts
- Enable authentication for your Tinfoil shop
- Limit network access to Ownfoil (use reverse proxy, VPN, etc.)
- Regularly review user accounts and permissions

### Configuration Security
- Keep console keys secure and private
- Use HTTPS when accessing Ownfoil over the internet
- Regularly backup your configuration and data
- Monitor access logs for suspicious activity

### Network Security
- Don't expose Ownfoil directly to the internet without proper protection
- Use a reverse proxy with SSL/TLS termination
- Consider using VPN access for remote administration
- Implement proper firewall rules

## Vulnerability Disclosure Policy

We follow a **responsible disclosure** policy:

- We will work with security researchers to verify and address reported vulnerabilities
- We will not take legal action against researchers who report vulnerabilities in good faith
- We will publicly acknowledge researchers who report vulnerabilities (with their consent)
- We will coordinate disclosure timing to ensure users have adequate time to update

## Security Features in Ownfoil

### Authentication
- User authentication system with password hashing
- Session management
- Role-based access control

### File Security
- File validation and sanitization
- Secure file handling
- Path traversal protection

### Network Security
- Optional shop encryption
- Secure client certificate handling
- HTTP security headers

## Security Dependencies

We actively monitor and update our dependencies for security vulnerabilities:

- **Automated Scanning**: Dependabot monitors for vulnerable dependencies
- **Regular Updates**: We update dependencies regularly
- **Security Audits**: We use tools like `safety` and `pip-audit` for Python packages

## Bug Bounty Program

Currently, we do not have a formal bug bounty program. However, we greatly appreciate security research and will:

- Acknowledge security researchers in our release notes
- Provide public recognition for significant discoveries
- Consider establishing a formal program as the project grows

## Contact Information

- **Security Issues**: Use GitHub Security Advisories (preferred)
- **General Security Questions**: Open a discussion on GitHub
- **Project Maintainer**: [Maintainer should add contact info]

## Legal

This security policy is provided "as is" without warranty of any kind. We reserve the right to modify this policy at any time.

---

Thank you for helping keep Ownfoil and our users safe!