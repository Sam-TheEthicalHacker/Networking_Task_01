# Ethical_Hacking_Task_02_Sanjay

## Task 02 – Nmap Localhost Scanning
**Student:** Sanjay  
**Internship:** Cybersecurity / Ethical Hacking  
**Date:** June 28, 2026  
**Target:** localhost (127.0.0.1)  
**System:** Kali Linux  

---

## Project Overview

This repository contains all files related to **Task 02** of the Ethical Hacking Internship program. The task focused on performing authorized Nmap scans against the local machine (localhost / 127.0.0.1) to practice fundamental network reconnaissance commands, interpret their outputs, and document findings in a professional format.

All scans were conducted exclusively on the student's own machine within the internship lab environment. No external hosts or third-party systems were involved.

---

## Objective

To understand and apply the following Nmap scanning techniques:
- Verify the Nmap installation and version
- Perform a basic TCP port scan on localhost
- Use service/version detection to identify running services
- Attempt OS fingerprinting using elevated privileges

---

## Tools Used

| Tool   | Version   | Purpose                        | Platform   |
|--------|-----------|--------------------------------|------------|
| Nmap   | 7.94SVN   | Network scanning & enumeration | Kali Linux |

---

## Commands Executed

```bash
# Verify Nmap installation
nmap --version

# Basic port scan (top 1000 TCP ports)
nmap localhost

# Service and version detection
nmap -sV localhost

# OS fingerprinting (requires root)
sudo nmap -O localhost
```

---

## Files Included

```
Ethical_Hacking_Task_02_Sanjay/
│
├── README.md                  ← This file
├── Research_Notes.docx        ← Detailed research notes with port table
├── Command_Outputs.txt        ← Raw commands, outputs, and observations
├── Scan_Report.docx           ← Professional internship report (PDF-ready)
│
└── Screenshots/
    ├── nmap_version.png       ← nmap --version output
    ├── nmap_localhost.png     ← Basic scan output
    ├── nmap_sv_localhost.png  ← Service detection output
    └── OS_version.png         ← OS detection output
```

---

## Key Findings

| Scan Type             | Command            | Result                                       |
|-----------------------|--------------------|----------------------------------------------|
| Version Check         | nmap --version     | Nmap 7.94SVN confirmed installed             |
| Basic Port Scan       | nmap localhost     | All 1000 TCP ports closed — no open ports    |
| Service Detection     | nmap -sV localhost | No services identified (no open ports)       |
| OS Fingerprinting     | sudo nmap -O       | Inconclusive — no open ports for fingerprint |

### Summary
- **Host Status:** UP (confirmed on all scans)
- **Open Ports:** None detected across all 1000 TCP ports
- **Services:** No running services identified
- **OS Detection:** Inconclusive — Nmap requires at least one open port to perform reliable OS fingerprinting
- **Network Distance:** 0 hops (loopback confirmed)
- **Latency:** Sub-millisecond (< 0.001s) — expected for loopback interface

---

## Port Reference Table

| Port(s)  | Service  | Description                                         |
|----------|----------|-----------------------------------------------------|
| 20 / 21  | FTP      | File Transfer Protocol (control + data)             |
| 22       | SSH      | Secure Shell — encrypted remote access              |
| 23       | Telnet   | Unencrypted remote terminal (deprecated)            |
| 25       | SMTP     | Simple Mail Transfer Protocol — outgoing email      |
| 53       | DNS      | Domain Name System — resolves domain names          |
| 80       | HTTP     | Standard unencrypted web traffic                    |
| 110      | POP3     | Post Office Protocol — email retrieval              |
| 143      | IMAP     | Internet Message Access Protocol — email management |
| 443      | HTTPS    | Encrypted web traffic (TLS/SSL)                     |
| 445      | SMB      | Windows file sharing and authentication             |
| 3389     | RDP      | Remote Desktop Protocol — Windows remote access     |

*None of the above ports were observed as open during scanning.*

---

## Recommendations

- Keep unnecessary network services **disabled** to minimize attack surface.
- Enable and configure a **firewall** (e.g., `ufw` on Linux) to control traffic.
- Perform **periodic Nmap scans** on your own systems to audit open ports.
- Apply **OS and software updates** regularly to patch known vulnerabilities.
- **Enable only required services** — principle of least privilege applies to services too.
- Monitor system **logs** for unexpected connection attempts.

---

## Conclusion

Task 02 was completed successfully. All four Nmap commands were executed, screenshots were captured, and findings were documented. The absence of open ports on the default Kali Linux installation is the expected and correct result, demonstrating a minimal-exposure baseline configuration. The limitations observed in service detection and OS fingerprinting (caused by no open ports) are consistent with standard Nmap behavior and were accurately recorded.

---

## Disclaimer

All scans were conducted exclusively on the student's own machine (`localhost / 127.0.0.1`) within a controlled internship lab environment. No third-party systems, networks, or production infrastructure were scanned or targeted. This task was completed solely for **educational purposes** as part of an authorized internship program. No systems were harmed, accessed without authorization, or exploited in any way.
