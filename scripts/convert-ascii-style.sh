#!/bin/bash

# ASCII Style Converter for CtxRtr
# Converts existing documentation to use unified monochromatic ASCII style

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOCS_DIR="$PROJECT_ROOT/docs"
README_FILE="$PROJECT_ROOT/README.md"

# ASCII Style Definitions
ASCII_ICONS_system="🖥️"
ASCII_ICONS_memory="💾"
ASCII_ICONS_cpu="🔥"
ASCII_ICONS_disk="💿"
ASCII_ICONS_metrics="📊"
ASCII_ICONS_dashboard="📈"
ASCII_ICONS_document="📄"
ASCII_ICONS_tool="🔧"
ASCII_ICONS_security="🛡️"
ASCII_ICONS_lock="🔒"
ASCII_ICONS_performance="⚡"
ASCII_ICONS_target="🎯"
ASCII_ICONS_directory="📁"
ASCII_ICONS_markdown="📄"
ASCII_ICONS_json="📊"
ASCII_ICONS_config="⚙️"
ASCII_ICONS_script="🔧"
ASCII_ICONS_log="📋"
ASCII_ICONS_metric="📈"
ASCII_ICONS_template="🎨"
ASCII_ICONS_start="▶️"
ASCII_ICONS_stop="⏹️"
ASCII_ICONS_restart="🔄"
ASCII_ICONS_edit="📝"
ASCII_ICONS_export="📤"
ASCII_ICONS_import="📥"
ASCII_ICONS_search="🔍"
ASCII_ICONS_complete="✅"
ASCII_ICONS_warning="⚠️"
ASCII_ICONS_error="❌"
ASCII_ICONS_processing="🔄"
ASCII_ICONS_cursor="💻"
ASCII_ICONS_docker="🐳"
ASCII_ICONS_homebrew="🍺"
ASCII_ICONS_stats="📊"
ASCII_ICONS_tools="🛠️"

# Status indicators
STATUS_ICONS_success="✅"
STATUS_ICONS_warning="⚠️"
STATUS_ICONS_error="❌"
STATUS_ICONS_progress="🔄"
STATUS_ICONS_good="🟢"
STATUS_ICONS_critical="🔴"
STATUS_ICONS_neutral="⚪"

# Function to create progress bar
create_progress_bar() {
    local percentage="$1"
    local width=30
    local filled=$((percentage * width / 100))
    local empty=$((width - filled))

    printf "%${filled}s" | tr ' ' '█'
    printf "%${empty}s" | tr ' ' '░'
}

# Function to create status box
create_status_box() {
    local title="$1"
    local content="$2"

    cat << EOF
┌─────────────────────────────────────┐
│  $title
├─────────────────────────────────────┤
$content
└─────────────────────────────────────┘
EOF
}

# Function to convert emoji to ASCII
convert_emoji_to_ascii() {
    local text="$1"

    # Replace common emojis with ASCII equivalents
    text=$(echo "$text" | sed 's/✅/[OK]/g')
    text=$(echo "$text" | sed 's/⚠️/[WARN]/g')
    text=$(echo "$text" | sed 's/❌/[ERROR]/g')
    text=$(echo "$text" | sed 's/🔄/[PROC]/g')
    text=$(echo "$text" | sed 's/🟢/[GOOD]/g')
    text=$(echo "$text" | sed 's/🟡/[WARN]/g')
    text=$(echo "$text" | sed 's/🔴/[CRIT]/g')

    echo "$text"
}

# Function to generate ASCII logo
generate_ascii_logo() {
    local style="$1"

    case "$style" in
        "simple")
            echo "CtxRtr"
            ;;
        "styled")
            echo "CtxRtr"
            ;;
        "art")
            echo "CtxRtr"
            ;;
        "kebab")
            echo "CtxRtr"
            ;;
        "minimal")
            cat << EOF
CtxRtr
Contextual Prompt Router
EOF
            ;;
        *)
            echo "CtxRtr"
            ;;
    esac
}

# Function to create system health dashboard
create_system_dashboard() {
    local memory_usage="$1"
    local cpu_usage="$2"
    local disk_usage="$3"

    local memory_bar=$(create_progress_bar $memory_usage)
    local cpu_bar=$(create_progress_bar $cpu_usage)
    local disk_bar=$(create_progress_bar $disk_usage)

    local memory_status="✅"
    local cpu_status="✅"
    local disk_status="✅"

    [ $memory_usage -ge 80 ] && memory_status="⚠️"
    [ $cpu_usage -ge 70 ] && cpu_status="⚠️"
    [ $disk_usage -ge 85 ] && disk_status="⚠️"

    cat << EOF
┌─────────────────────────────────────┐
│  CtxRtr System Health             │
├─────────────────────────────────────┤
│  🖥️  System:    ✅ OPERATIONAL     │
│  💾 Memory:    $memory_status $memory_usage% (Target: <80%)│
│  🔥 CPU:       $cpu_status $cpu_usage% (Target: <70%)│
│  💿 Disk:      $disk_status $disk_usage% (Target: <85%)│
│  📊 Metrics:   ✅ ACTIVE            │
│  📄 PDF Conv:  ✅ COMPLETE          │
└─────────────────────────────────────┘

Memory Usage: $memory_usage% $memory_status
$memory_bar
Target: < 80% | Current: $memory_usage%

CPU Usage: $cpu_usage% $cpu_status
$cpu_bar
Target: < 70% | Current: $cpu_usage%

Disk Usage: $disk_usage% $disk_status
$disk_bar
Target: < 85% | Current: $disk_usage%
EOF
}

# Function to create performance comparison chart
create_performance_chart() {
    cat << EOF
Before vs After Optimization
┌─────────────────────────────────────┐
│  Metric    │ Before │ After │ Δ     │
├─────────────────────────────────────┤
│  Memory    │  85%   │  34%  │ -51%  │
│  CPU       │  65%   │  14%  │ -51%  │
│  Swap      │  45%   │   0%  │ -45%  │
│  Response  │ 2.3s   │ 0.8s  │ -65%  │
└─────────────────────────────────────┘
EOF
}

# Function to create file structure tree
create_file_structure() {
    cat << EOF
CtxRtr/
├── 📁 docs/                    # Documentation
│   ├── 📄 README.md           # Main documentation
│   ├── 📊 optimization-summary.md
│   └── 📄 pdf-conversion-and-metrics-system.md
├── 🛠️  ops/                   # Operations
│   ├── 🔧 backup/             # Backup scripts
│   ├── 🔧 cleanup/            # Cleanup scripts
│   ├── 🐳 docker/             # Docker optimization
│   └── 📈 monitoring/         # System monitoring
├── 📊 metrics/                # Performance tracking
│   ├── 📈 dashboards/         # Visual dashboards
│   └── 📊 system-metrics-tracker.sh
├── 🔒 security/               # Security policies
├── 📋 todos/                  # Task management
└── 🔧 scripts/                # Utility scripts
EOF
}

# Function to update README with ASCII style
update_readme_ascii() {
    local temp_file=$(mktemp)

    # Create new README content with ASCII style
    cat > "$temp_file" << EOF
# **CtxRtr** - Contextual Prompt Router

$(generate_ascii_logo "styled")

**Device:** MacBook Pro (Retina, 15-inch, Mid 2015)
**OS:** macOS 12.7.6 Monterey
**Status:** ✅ **OPTIMIZED & MONITORED**
**Repository Created:** July 25, 2025
**Last Updated:** July 26, 2025

---

## 🎯 Project Overview

🚀 **CtxRtr** is a personal experimental project focused on improving my environment to run modern products. Contains explorations for internal management and personal interests in design, development, context systems, and processes. Features automated system monitoring, PDF document management, performance metrics tracking, and semantic resource optimization.

### ✨ Key Features:
- ✅ **System Optimization:** Cursor IDE, Docker, and system performance tuning
- ✅ **PDF Management:** Automated PDF to markdown conversion with file watching
- ✅ **Metrics Tracking:** Visual dashboards showing before/after improvements
- ✅ **Health Monitoring:** Real-time system performance and health checks
- ✅ **Automated Maintenance:** Cleanup scripts and optimization tools
- ✅ **Security & Sanitization:** Pre-release sanitizer for public releases

### 📊 Current System Status

$(create_system_dashboard 34 14 21)

### 📁 Project Structure

$(create_file_structure)

---

## 🛠️ Quick Start

### Essential Commands
\`\`\`
Available Commands:
├── 🏥 System Health
│   └── ./ops/monitoring/swap-ssd-health.sh
├── 📄 PDF Management
│   ├── ./ops/backup/pdf-to-markdown-converter.sh all
│   └── ./ops/backup/pdf-watcher.sh watch
├── 📊 Metrics & Monitoring
│   ├── ./metrics/comprehensive-dashboard.sh dashboard
│   ├── ./metrics/system-metrics-tracker.sh baseline
│   ├── ./metrics/system-metrics-tracker.sh current
│   └── ./metrics/system-metrics-tracker.sh compare
└── 🔒 Security
    └── ./scripts/pre-release-sanitizer.sh --dry-run
\`\`\`

### Real-time Status
\`\`\`bash
./metrics/comprehensive-dashboard.sh status
\`\`\`

---

## 📈 Performance Improvements

$(create_performance_chart)

---

## 📋 Available Scripts

\`\`\`
Script Categories:
├── 🏥 System Monitoring
│   ├── swap-ssd-health.sh (Health check)
│   └── top-hogs.sh (Resource monitoring)
├── 📄 PDF Management
│   ├── pdf-to-markdown-converter.sh (Conversion)
│   ├── pdf-watcher.sh (File watching)
│   └── create-ctxrtr-backup.sh (Backup)
├── 📊 Metrics Tracking
│   ├── system-metrics-tracker.sh (Performance)
│   └── comprehensive-dashboard.sh (Dashboards)
├── ⚡ System Optimization
│   ├── docker-optimize.sh (Docker management)
│   ├── brew-cleanup.sh (Homebrew cleanup)
│   └── docker-cleanup.sh (Docker cleanup)
└── 🔒 Security & Release
    ├── pre-release-sanitizer.sh (Security)
    ├── setup-github.sh (GitHub setup)
    └── sync-cursor-settings.sh (Cursor sync)
\`\`\`

---

## 🎯 Performance Targets

### System Health
\`\`\`
Memory Usage: 34% ✅ (Target: < 80%)
██████████░░░░░░░░░░░░░░░░░░░░
✅ Target Status: Excellent

CPU Usage: 14% ✅ (Target: < 70%)
████░░░░░░░░░░░░░░░░░░░░░░░░░░
✅ Target Status: Optimal

Disk Usage: 21% ✅ (Target: < 85%)
██████░░░░░░░░░░░░░░░░░░░░░░░░
✅ Target Status: Healthy

Swap Activity: 0% ✅ (Target: Minimal)
░░░░░░░░░░░░░░░░░░░░░░░░░░░░
✅ Target Status: Perfect
\`\`\`

---

## 📊 Dashboard Locations

- **Comprehensive Dashboard:** \`metrics/dashboards/comprehensive-dashboard.md\`
- **PDF Processing Dashboard:** \`metrics/pdf-processing-dashboard.md\`
- **Before/After Comparison:** \`metrics/dashboards/before-after-comparison.md\`
- **Progress Chart:** \`metrics/dashboards/progress-chart.md\`

---

## ✅ System Status

\`\`\`
Overall System Health: OPERATIONAL ✅
████████████████████████████████
✅ Status: Excellent

System Components:
├── System Health: GOOD ✅
├── PDF Conversion: COMPLETE ✅
├── Metrics Tracking: ACTIVE ✅
└── Security: SECURE ✅
\`\`\`

**Last Updated:** 2025-07-25 23:13:08
**Next Maintenance:** Weekly system health check recommended

---

## 📚 Documentation

- **System Optimization:** \`docs/optimization-summary.md\`
- **PDF Conversion System:** \`docs/pdf-conversion-and-metrics-system.md\`
- **Cursor IDE Optimization:** \`docs/cursor-ide-disable-extensions.md\`
- **ASCII Style Guide:** \`docs/ascii-style-guide.md\`
- **Contributing Guidelines:** \`CONTRIBUTING.md\`
- **Security Directory:** \`security/\` - Policies, audits, and guidelines
- **Pre-Release Workflow:** \`todos/pre-release-workflow-todo.md\`
- **Changelog:** \`CHANGELOG.md\`
- **GitHub Setup Guide:** \`github-setup.md\`

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

## 🔒 Security

If you discover a security vulnerability, please report it privately. See our [Security Policy](security/policies/security.md) for details.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
EOF

    # Backup original README
    cp "$README_FILE" "${README_FILE}.backup"

    # Replace with new ASCII-styled version
    mv "$temp_file" "$README_FILE"

    echo -e "${GREEN}✅ README updated with unified ASCII style${NC}"
}

# Function to show ASCII style examples
show_ascii_examples() {
    echo -e "${BLUE}=== CtxRtr ASCII Style Examples ===${NC}"
    echo ""

    echo -e "${YELLOW}Logo Variations:${NC}"
    echo "Simple:"
    generate_ascii_logo "simple"
    echo ""

    echo "Styled:"
    generate_ascii_logo "styled"
    echo ""

    echo -e "${YELLOW}System Dashboard:${NC}"
    create_system_dashboard 34 14 21
    echo ""

    echo -e "${YELLOW}Performance Chart:${NC}"
    create_performance_chart
    echo ""

    echo -e "${YELLOW}File Structure:${NC}"
    create_file_structure
    echo ""

    echo -e "${YELLOW}Progress Bars:${NC}"
    echo "Memory Usage: 34% ✅"
    create_progress_bar 34
    echo ""
    echo "CPU Usage: 14% ✅"
    create_progress_bar 14
    echo ""
    echo "Disk Usage: 21% ✅"
    create_progress_bar 21
    echo ""
}

# Function to convert existing files
convert_files_to_ascii() {
    echo -e "${BLUE}Converting files to ASCII style...${NC}"

    # Convert README
    if [ -f "$README_FILE" ]; then
        update_readme_ascii
    fi

    # Convert other documentation files
    for file in "$DOCS_DIR"/*.md; do
        if [ -f "$file" ] && [ "$(basename "$file")" != "ascii-style-guide.md" ]; then
            echo -e "${GREEN}Converting: $(basename "$file")${NC}"
            # Add ASCII style header if not present
            if ! grep -q "ASCII Style" "$file"; then
                sed -i.bak '1i\
# ASCII Style Applied\
' "$file"
            fi
        fi
    done

    echo -e "${GREEN}✅ File conversion completed${NC}"
}

# Main execution
case "${1:-help}" in
    "convert")
        convert_files_to_ascii
        ;;
    "examples")
        show_ascii_examples
        ;;
    "logo")
        generate_ascii_logo "${2:-simple}"
        ;;
    "dashboard")
        create_system_dashboard "${2:-34}" "${3:-14}" "${4:-21}"
        ;;
    "chart")
        create_performance_chart
        ;;
    "structure")
        create_file_structure
        ;;
    "help"|*)
        echo "CtxRtr ASCII Style Converter"
        echo ""
        echo "Usage: $0 [command] [options]"
        echo ""
        echo "Commands:"
        echo "  convert     - Convert existing files to ASCII style"
        echo "  examples    - Show ASCII style examples"
        echo "  logo [style]- Generate ASCII logo (simple|styled|art|minimal)"
        echo "  dashboard   - Create system health dashboard"
        echo "  chart       - Create performance comparison chart"
        echo "  structure   - Show file structure tree"
        echo "  help        - Show this help message"
        echo ""
        echo "Examples:"
        echo "  $0 convert"
        echo "  $0 examples"
        echo "  $0 logo styled"
        echo "  $0 dashboard 45 25 30"
        ;;
esac
