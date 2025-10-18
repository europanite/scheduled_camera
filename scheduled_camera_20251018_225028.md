<!-- P2M_REPORT -->
<!-- GENERATED at 2025-10-18 22:50:28 -->
# Project Export: scheduled_camera

## Overview

- Root: `/home/skinner/scheduled_camera`
- Files: **14**
- Total size: **24789 bytes**
- Total LOC: 687 | SLOC: 512 | TODOs: 0

### Language mix
- markdown: 6
- plain: 4
- bash: 3
- yaml: 1

### Top 12 largest files (bytes)
- `LICENSE` — 11340 bytes
- `CODE_OF_CONDUCT.md` — 4085 bytes
- `capture.sh` — 2511 bytes
- `installer.sh` — 1673 bytes
- `SECURITY.md` — 1161 bytes
- `CONTRIBUTING.md` — 834 bytes
- `.github/pull_request_template.md` — 744 bytes
- `.github/ISSUE_TEMPLATE/bug_report.md` — 666 bytes
- `.gitignore` — 585 bytes
- `README.md` — 405 bytes
- `.dockerignore` — 305 bytes
- `_config.yml` — 274 bytes

### Top 12 longest files (LOC)
- `LICENSE` — 201 LOC
- `capture.sh` — 96 LOC
- `CODE_OF_CONDUCT.md` — 68 LOC
- `installer.sh` — 67 LOC
- `.gitignore` — 58 LOC
- `SECURITY.md` — 38 LOC
- `.dockerignore` — 34 LOC
- `.github/ISSUE_TEMPLATE/bug_report.md` — 30 LOC
- `README.md` — 29 LOC
- `.github/pull_request_template.md` — 27 LOC
- `CONTRIBUTING.md` — 25 LOC
- `_config.yml` — 10 LOC

### Project tree (included subset)
```
scheduled_camera/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   └── bug_report.md
│   └── pull_request_template.md
├── .dockerignore
├── .gitignore
├── _config.yml
├── capture.sh
├── CODE_OF_CONDUCT.md
├── command.sh
├── CONTRIBUTING.md
├── crontab.txt
├── installer.sh
├── LICENSE
├── README.md
└── SECURITY.md
```

## Table of contents (files)

- 1. [.dockerignore](#.dockerignore)
- 2. [.github/ISSUE_TEMPLATE/bug_report.md](#.github-ISSUE_TEMPLATE-bug_report.md)
- 3. [.github/pull_request_template.md](#.github-pull_request_template.md)
- 4. [.gitignore](#.gitignore)
- 5. [_config.yml](#_config.yml)
- 6. [capture.sh](#capture.sh)
- 7. [CODE_OF_CONDUCT.md](#CODE_OF_CONDUCT.md)
- 8. [command.sh](#command.sh)
- 9. [CONTRIBUTING.md](#CONTRIBUTING.md)
- 10. [crontab.txt](#crontab.txt)
- 11. [installer.sh](#installer.sh)
- 12. [LICENSE](#LICENSE)
- 13. [README.md](#README.md)
- 14. [SECURITY.md](#SECURITY.md)

---

## Files

<a id=".dockerignore"></a>
### 1. `.dockerignore`
- Size: 305 bytes | LOC: 34 | SLOC: 29 | TODOs: 0 | Modified: 2025-10-11 22:17:09 | SHA1: 4ddfad028bab

#### Brief
# Git
.git

#### Auto Summary
# Git

#### Content

```
# Git
.git
.gitignore

# Python cache
__pycache__/
*.py[cod]
*.pyo
*.pyd

# Node
node_modules/
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Local env/config
.env
*.env
*.local

# OS / IDE
.DS_Store
Thumbs.db
desktop.ini
.vscode/
.idea/

# Build artifacts
dist/
build/
web-build/
.expo/
.expo-shared/
```

<a id=".github-ISSUE_TEMPLATE-bug_report.md"></a>
### 2. `.github/ISSUE_TEMPLATE/bug_report.md`
- Size: 666 bytes | LOC: 30 | SLOC: 24 | TODOs: 0 | Modified: 2025-10-11 22:17:09 | SHA1: 4b4d2b96744a

#### Brief
---
name: Bug Report

#### Auto Summary
Description

#### Content (verbatim)

```markdown
---
name: Bug Report
about: Create a report to help us improve
title: "[Bug] "
labels: bug
assignees: ''
---

## Description
<!-- A clear and concise description of what the bug is -->

## Steps to Reproduce
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

## Expected Behavior
<!-- A clear and concise description of what you expected to happen -->

## Screenshots
<!-- If applicable, add screenshots to help explain your problem -->

## Environment
- OS: [e.g. Ubuntu 22.04]
- Browser/Version: [e.g. Chrome 117]
- Node/Python Version: [e.g. Node 18, Python 3.10]

## Additional Context
<!-- Add any other context about the problem here -->
```

<a id=".github-pull_request_template.md"></a>
### 3. `.github/pull_request_template.md`
- Size: 744 bytes | LOC: 27 | SLOC: 21 | TODOs: 0 | Modified: 2025-10-11 22:17:09 | SHA1: 1b6e1aab4d9a

#### Brief
# Pull Request

#### Auto Summary
Pull Request

#### Content (verbatim)

```markdown
# Pull Request

## Overview
<!-- Briefly describe the purpose of this PR and the problem it solves   -->

## Changes
<!-- List the main changes made in this PR -->
- 

## Testing
<!-- Describe how you tested the changes -->
- [ ] Built and ran locally without errors
- [ ] All tests passed
- [ ] Verified functionality manually (describe how)

## Related Issues
<!-- Link to related issues if applicable -->
- Closes #

## Checklist
- [ ] Code is clean and free of unnecessary comments/debug prints
- [ ] Proper naming conventions and documentation are followed
- [ ] Updated documentation/README if necessary
- [ ] CI pipeline passes successfully

## Notes for Reviewers
<!-- Additional context or things reviewers should pay attention to -->
```

<a id=".gitignore"></a>
### 4. `.gitignore`
- Size: 585 bytes | LOC: 58 | SLOC: 49 | TODOs: 0 | Modified: 2025-10-18 18:59:56 | SHA1: 7b43f8e8f583

#### Brief
# Python
__pycache__/

#### Auto Summary
# Python

#### Content

```
# Python
__pycache__/
*.py[cod]
*.pyo
*.pyd
*.so
*.egg
*.egg-info/
.eggs/
*.log
*.sqlite3
db.sqlite3

# Virtual env
.venv/
env/
venv/
ENV/

# Jupyter
.ipynb_checkpoints/

# Node / React Native (Expo)
node_modules/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
.expo/
.expo-shared/
web-build/
dist/
build/

# macOS / Linux / Windows
.DS_Store
Thumbs.db
desktop.ini

# IDE
.vscode/
.idea/
*.swp

# Docker
*.pid
*.sock
*.tar

# coverage reports (backend & frontend)
coverage/
backend/app/coverage/
frontend/app/coverage/

# Jest cache
frontend/app/.jest-cache/

make_md.py
python_front_*
```

<a id="_config.yml"></a>
### 5. `_config.yml`
- Size: 274 bytes | LOC: 10 | SLOC: 10 | TODOs: 0 | Modified: 2025-10-11 22:17:09 | SHA1: e14a13995724

#### Brief
title: "standard_react_fastapi_environment"
description: "a full-stack development environment"

#### Auto Summary
title: "standard_react_fastapi_environment"

#### Content

```yaml
title: "standard_react_fastapi_environment"
description: "a full-stack development environment"
baseurl: "/standard_react_fastapi_environment"
url: "https://europanite.github.io"
theme: minima
markdown: kramdown
plugins:
  - jekyll-feed
  - jekyll-sitemap
highlighter: rouge
```

<a id="capture.sh"></a>
### 6. `capture.sh`
- Size: 2511 bytes | LOC: 96 | SLOC: 52 | TODOs: 0 | Modified: 2025-10-18 22:47:13 | SHA1: 61029d9efd76

#### Brief
!/usr/bin/env bash
shellcheck disable=SC2155

#### Auto Summary
#!/usr/bin/env bash

#### Content

```bash
#!/usr/bin/env bash
# shellcheck disable=SC2155
set -Eeuo pipefail

# ----------------------------
# Scheduled Camera - single shot capture
# ----------------------------
# Config precedence: ENV > .env file > defaults
# Supported ENV:
#   CAM_DEVICE=/dev/video0
#   CAM_SIZE=1280x720
#   CAM_FLIP=none|h|v|hv        # horizontal/vertical/both
#   CAM_FMT=mjpeg|yuyv422|auto
#   OUT_DIR=./data
#   OUT_PREFIX=img
#   JPEG_QUALITY=2              # 2(best)..31(worst), for ffmpeg PNG/JPEG quality mapping
#   WARMUP_MS=300               # wait time to let camera auto-exposure settle
# ----------------------------
CAM_DEVICE=/dev/video0
CAM_SIZE=1280x720
CAM_FMT=auto

CAM_FLIP=none

OUT_DIR=./data
OUT_PREFIX=img
JPEG_QUALITY=2

WARMUP_MS=300



# load .env if present
if [[ -f ".env" ]]; then
  # shellcheck disable=SC2046
  export $(grep -E '^[A-Za-z_][A-Za-z0-9_]*=' .env | xargs -d '\n')
fi

CAM_DEVICE="${CAM_DEVICE:-/dev/video0}"
CAM_SIZE="${CAM_SIZE:-1280x720}"
CAM_FLIP="${CAM_FLIP:-none}"
CAM_FMT="${CAM_FMT:-auto}"
OUT_DIR="${OUT_DIR:-./data}"
OUT_PREFIX="${OUT_PREFIX:-img}"
JPEG_QUALITY="${JPEG_QUALITY:-2}"
WARMUP_MS="${WARMUP_MS:-300}"

# build flip filter
ff_filter="format=auto"
case "$CAM_FLIP" in
  h)  ff_filter="hflip" ;;
  v)  ff_filter="vflip" ;;
  hv) ff_filter="hflip,vflip" ;;
  none|"") ff_filter="null" ;;
  *) echo "[WARN] Unknown CAM_FLIP='$CAM_FLIP' -> no flip"; ff_filter="null" ;;
esac

# optional pixel format
fmt_args=()
if [[ "$CAM_FMT" != "auto" ]]; then
  fmt_args=(-input_format "$CAM_FMT")
fi

# validations
if [[ ! -e "$CAM_DEVICE" ]]; then
  echo "[ERROR] Camera device not found: $CAM_DEVICE" >&2
  exit 1
fi
if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "[ERROR] ffmpeg not found. Please install it." >&2
  exit 1
fi

# warmup (non-blocking-ish): read a few frames to let exposure settle
# We use a tiny sleep; systemd/cron won’t like long warmups.
sleep "$(awk "BEGIN {printf \"%.3f\", $WARMUP_MS/1000}")"

# paths
today="$(date +%Y%m%d)"
ts="$(date +%Y%m%d%H%M%S)"
out_dir="${OUT_DIR}/img_${today}"
mkdir -p "$out_dir"
outfile="${out_dir}/${OUT_PREFIX}_${ts}.jpg"

# capture one frame
# Notes:
#  -f video4linux2 with -video_size
#  -frames:v 1 for single still
#  -q:v uses JPEG quality for mjpeg path; for raw->jpeg it still applies.
set -x
ffmpeg -hide_banner -loglevel error \
  -f video4linux2 "${fmt_args[@]}" -video_size "$CAM_SIZE" -i "$CAM_DEVICE" \
  -frames:v 1 -vf "$ff_filter" -q:v "$JPEG_QUALITY" "$outfile"
set +x

echo "[OK] Saved: $outfile"
```

<a id="CODE_OF_CONDUCT.md"></a>
### 7. `CODE_OF_CONDUCT.md`
- Size: 4085 bytes | LOC: 68 | SLOC: 50 | TODOs: 0 | Modified: 2025-10-11 22:17:09 | SHA1: 724cc33f0dca

#### Brief
# Contributor Covenant Code of Conduct

#### Auto Summary
Contributor Covenant Code of Conduct

#### Content (verbatim)

```markdown
# Contributor Covenant Code of Conduct

## Our Pledge
We as members, contributors, and leaders pledge to make participation in our community a harassment-free experience for everyone, regardless of age, body size, visible or invisible disability, ethnicity, sex characteristics, gender identity and expression, level of experience, education, socio-economic status, nationality, personal appearance, race, religion, or sexual identity and orientation.

We pledge to act and interact in ways that contribute to an open, welcoming, diverse, inclusive, and healthy community.

## Our Standards
Examples of behavior that contributes to a positive environment include:
- Demonstrating empathy and kindness toward other people
- Being respectful of differing opinions, viewpoints, and experiences
- Giving and gracefully accepting constructive feedback
- Taking responsibility and apologizing to those affected by our mistakes
- Focusing on what is best for the community, not just for ourselves

Examples of unacceptable behavior include:
- The use of sexualized language or imagery, and sexual attention or advances
- Trolling, insulting or derogatory comments, and personal or political attacks
- Public or private harassment
- Publishing others’ private information without explicit permission
- Other conduct which could reasonably be considered inappropriate in a professional setting

## Enforcement Responsibilities
Community leaders are responsible for clarifying and enforcing our standards of acceptable behavior and will take appropriate and fair corrective action in response to any behavior that they deem inappropriate, threatening, offensive,
or harmful.

## Scope
This Code of Conduct applies within all community spaces, and also applies when an individual is officially representing the community in public spaces.

## Enforcement
Instances of abusive, harassing, or otherwise unacceptable behavior may be reported by contacting the maintainers of this project. All complaints will be reviewed and investigated promptly and fairly.

All community leaders are obligated to respect the privacy and security of the reporter of any incident.

## Enforcement Guidelines
Community leaders will follow these guidelines in determining the consequences for any action they deem in violation of this Code of Conduct:

1. **Correction**  
- *Impact*: Use of inappropriate language or other behavior deemed unprofessional.  
- *Consequence*: A private, written warning, with clarity around the nature of the violation and an explanation of why the behavior was inappropriate.

2. **Warning**  
- *Impact*: A violation through a single incident or series of actions.  
- *Consequence*: A warning with consequences for continued behavior. No interaction with the people involved, including unsolicited interaction with those enforcing the Code of Conduct, for a specified period of time.

3. **Temporary Ban**  
- *Impact*: A serious violation of community standards, including sustained inappropriate behavior.  
- *Consequence*: A temporary ban from any sort of interaction or public communication with the community for a specified period of time.

4. **Permanent Ban**  
- *Impact*: Demonstrating a pattern of violation of community standards, including sustained inappropriate behavior, harassment of an individual, or aggression toward or disparagement of classes of individuals.  
- *Consequence*: A permanent ban from any sort of public interaction within the
   community.

## Attribution

This Code of Conduct is adapted from the  
- [Contributor Covenant][v2.1], version 2.1, available at [https://www.contributor-covenant.org/version/2/1/code_of_conduct.html][v2.1].

Community Impact Guidelines were inspired by  
- [Mozilla’s code of conduct enforcement ladder][mozilla-coc].

For answers to common questions about this code of conduct, see the FAQ at  
- [Contributor Covenant FAQ][faq].

[v2.1]: https://www.contributor-covenant.org/version/2/1/code_of_conduct.html
[mozilla-coc]: https://github.com/mozilla/diversity
[faq]: https://www.contributor-covenant.org/faq
```

<a id="command.sh"></a>
### 8. `command.sh`
- Size: 126 bytes | LOC: 3 | SLOC: 3 | TODOs: 0 | Modified: 2025-10-18 20:39:45 | SHA1: 27c4875b9c06

#### Brief
sudo systemctl daemon-reload
sudo systemctl enable --now scheduled-camera.timer

#### Auto Summary
sudo systemctl daemon-reload

#### Content

```bash
sudo systemctl daemon-reload
sudo systemctl enable --now scheduled-camera.timer
systemctl list-timers | grep scheduled-camera
```

<a id="CONTRIBUTING.md"></a>
### 9. `CONTRIBUTING.md`
- Size: 834 bytes | LOC: 25 | SLOC: 19 | TODOs: 0 | Modified: 2025-10-11 22:17:09 | SHA1: 12ea21d94090

#### Brief
# Contributing Guidelines

#### Auto Summary
Contributing Guidelines

#### Content (verbatim)

```markdown
# Contributing Guidelines

Thank you for considering contributing to this project!  
We welcome bug reports, feature requests, and pull requests.  
Please follow the guidelines below to make the process smooth for everyone.

---

## How to Contribute

### 1. Reporting Issues
- Check the [issue tracker](../../issues) to avoid duplicates.
- Use the appropriate [issue template](.github/ISSUE_TEMPLATE/) when creating a new issue.
- Provide as much detail as possible (steps to reproduce, expected behavior, environment, etc.).

### 2. Suggesting Features
- Open a new **Feature Request** issue.
- Explain the problem your idea solves.
- Provide examples, use cases, or references if possible.

### 3. Submitting Pull Requests
Fork the repository and create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
```

<a id="crontab.txt"></a>
### 10. `crontab.txt`
- Size: 80 bytes | LOC: 1 | SLOC: 1 | TODOs: 0 | Modified: 2025-10-18 21:31:33 | SHA1: e74eb3554fd3

#### Brief
* * * * * cd /home/skinner/package/scheduled_shooting;bash capture.sh >> out.log

#### Auto Summary
* * * * * cd /home/skinner/package/scheduled_shooting;bash capture.sh >> out.log

#### Content

```
* * * * * cd /home/skinner/package/scheduled_shooting;bash capture.sh >> out.log
```

<a id="installer.sh"></a>
### 11. `installer.sh`
- Size: 1673 bytes | LOC: 67 | SLOC: 40 | TODOs: 0 | Modified: 2025-10-18 22:48:09 | SHA1: e4b8ebd85e2d

#### Brief
!/usr/bin/env bash

#### Auto Summary
#!/usr/bin/env bash

#### Content

```bash
#!/usr/bin/env bash
set -Eeuo pipefail

# Detect package manager
# if command -v apt >/dev/null 2>&1; then
#   sudo apt update -y
#   sudo apt install -y ffmpeg v4l-utils
# elif command -v dnf >/dev/null 2>&1; then
#   sudo dnf install -y ffmpeg v4l2-tools || true
# elif command -v pacman >/dev/null 2>&1; then
#   sudo pacman --noconfirm -Sy ffmpeg v4l-utils
# fi

# Create data dir
mkdir -p ./data

# Make main executable
chmod +x ./capture.sh

# Install systemd units
if pidof systemd >/dev/null 2>&1; then
  svc=/etc/systemd/system/scheduled-camera.service
  tmr=/etc/systemd/system/scheduled-camera.timer
  def=/etc/default/scheduled-camera

  # Write default env if not exists
  if [[ ! -f "$def" ]]; then
    sudo install -Dm644 /dev/stdin "$def" <<'ENVEOF'
CAM_DEVICE=/dev/video0
CAM_SIZE=1280x720
CAM_FLIP=none
OUT_DIR=%EHOME/scheduled_camera/data
ENVEOF
  fi

  # Write service
  sudo install -Dm644 /dev/stdin "$svc" <<'SRVEOF'
[Unit]
Description=Scheduled Camera - single shot

[Service]
Type=oneshot
EnvironmentFile=-/etc/default/scheduled-camera
WorkingDirectory=%EHOME/scheduled_camera
ExecStart=%EHOME/scheduled_camera/capture.sh
SRVEOF

  # Write timer (every minute; edit as needed)
  sudo install -Dm644 /dev/stdin "$tmr" <<'TMREOF'
[Unit]
Description=Run scheduled-camera.service periodically

[Timer]
OnCalendar=*:0/1
Persistent=true
Unit=scheduled-camera.service

[Install]
WantedBy=timers.target
TMREOF

  sudo systemctl daemon-reload
  sudo systemctl enable --now scheduled-camera.timer
  echo "[OK] systemd timer enabled. Use: journalctl -u scheduled-camera -e"
else
  echo "[INFO] systemd not detected. Use cron or run ./capture.sh manually."
fi
```

<a id="LICENSE"></a>
### 12. `LICENSE`
- Size: 11340 bytes | LOC: 201 | SLOC: 169 | TODOs: 0 | Modified: 2025-10-16 10:55:09 | SHA1: 64f2208f2896

#### Brief
Apache License
                           Version 2.0, January 2004

#### Auto Summary
Apache License

#### Content

```
                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

   END OF TERMS AND CONDITIONS

   APPENDIX: How to apply the Apache License to your work.

      To apply the Apache License to your work, attach the following
      boilerplate notice, with the fields enclosed by brackets "[]"
      replaced with your own identifying information. (Don't include
      the brackets!)  The text should be enclosed in the appropriate
      comment syntax for the file format. We also recommend that a
      file or class name and description of purpose be included on the
      same "printed page" as the copyright notice for easier
      identification within third-party archives.

   Copyright 2025 europanite

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
```

<a id="README.md"></a>
### 13. `README.md`
- Size: 405 bytes | LOC: 29 | SLOC: 21 | TODOs: 0 | Modified: 2025-10-18 21:31:53 | SHA1: e9143ba729ec

#### Brief
# [Scheduled Camera](https://github.com/europanite/scheduled_camera "Scheduled Camera")

#### Auto Summary
[Scheduled Camera](https://github.com/europanite/scheduled_camera "Scheduled Camera")

#### Content (verbatim)

```markdown
# [Scheduled Camera](https://github.com/europanite/scheduled_camera "Scheduled Camera")

---

### 1. Prerequisites
- Debian OS & Camera

### 2. Start the service:

### install
```bash
bash installer.sh
```

### One-shot test
```bash
bash capture.sh
```

### How to use

```bash
bash installer.sh
systemctl status scheduled-camera.timer
journalctl -u scheduled-camera -e
```

# License
- Apache License 2.0
```

<a id="SECURITY.md"></a>
### 14. `SECURITY.md`
- Size: 1161 bytes | LOC: 38 | SLOC: 24 | TODOs: 0 | Modified: 2025-10-18 19:00:06 | SHA1: 1debe9d12151

#### Brief
# Security Policy

#### Auto Summary
Security Policy

#### Content (verbatim)

```markdown
# Security Policy

## Supported Versions

The following table shows which versions of `python_front` are currently being supported with security updates.

| Version | Supported          |
|---------|--------------------|
| main    | :white_check_mark: |

We only provide security updates and fixes for the latest code on the **main** branch.

---

## Reporting a Vulnerability

If you discover a security vulnerability within this project, please help us keep the community safe by following these steps:

- Provide as much detail as possible:
   - A clear description of the vulnerability
   - Steps to reproduce the issue
   - The potential impact
   - Any suggested fixes or mitigations

---

## Security Best Practices for Users

- Always pull the latest image or rebuild the environment to ensure patched dependencies.
- Avoid exposing ports publicly unless necessary.
- Use strong passwords and secrets when connecting to external resources.
- Regularly update Python packages and system dependencies.

---

## Acknowledgements

We deeply appreciate the efforts of security researchers and contributors who help us improve the security of `python_front`.
```
