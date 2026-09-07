#!/bin/bash

# ASCII Style Preview for CtxRtr
# Prints examples of the unified monochromatic ASCII style (logos,
# dashboards, charts) to stdout. Does not modify any files.

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Unicode Symbol Definitions (see docs/standards/unified-style-system.md)
ICON_system="■"
ICON_memory="■"
ICON_cpu="■"
ICON_disk="■"
ICON_metrics="■"
ICON_dashboard="↗"
ICON_document="■"
ICON_tool="■"
ICON_security="■"
ICON_lock="■"
ICON_performance="■"
ICON_target="◆"

# Status indicators
STATUS_success="✓"
STATUS_warning="▲"
STATUS_error="✗"
STATUS_progress="↻"
STATUS_good="✓"
STATUS_critical="✗"
STATUS_neutral="−"

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

# Function to generate ASCII logo
generate_ascii_logo() {
    local style="$1"

    case "$style" in
        "styled")
            cat << EOF
┌─────────────────────────────────────┐
│  CtxRtr - Contextual Prompt Router  │
│  Local-First Agentic Tooling        │
└─────────────────────────────────────┘
EOF
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

    local memory_status="$STATUS_success"
    local cpu_status="$STATUS_success"
    local disk_status="$STATUS_success"

    [ $memory_usage -ge 80 ] && memory_status="$STATUS_warning"
    [ $cpu_usage -ge 70 ] && cpu_status="$STATUS_warning"
    [ $disk_usage -ge 85 ] && disk_status="$STATUS_warning"

    cat << EOF
┌─────────────────────────────────────┐
│  CtxRtr System Health             │
├─────────────────────────────────────┤
│  ${ICON_system}  System:    $STATUS_success OPERATIONAL     │
│  ${ICON_memory} Memory:    $memory_status $memory_usage% (Target: <80%)│
│  ${ICON_cpu} CPU:       $cpu_status $cpu_usage% (Target: <70%)│
│  ${ICON_disk} Disk:      $disk_status $disk_usage% (Target: <85%)│
│  ${ICON_metrics} Metrics:   $STATUS_success ACTIVE            │
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
│  Metric    │ Before │ After │ Delta │
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
├── ${ICON_document} docs/                    # Documentation
├── ${ICON_tool}  ops/                    # Operations
│   ├── ${ICON_tool} backup/              # Backup and PDF conversion scripts
│   ├── ${ICON_tool} cleanup/             # Cleanup scripts
│   ├── ${ICON_tool} docker/              # Docker optimization
│   └── ${ICON_dashboard} monitoring/          # System monitoring
├── ${ICON_metrics} metrics/                # Performance tracking
│   └── ${ICON_dashboard} dashboards/          # Visual dashboards
├── ${ICON_lock} security/               # Security policies
└── ${ICON_tool} scripts/                # Utility scripts
EOF
}

# Function to show ASCII style examples
show_ascii_examples() {
    echo -e "${BLUE}=== CtxRtr ASCII Style Examples ===${NC}"
    echo ""

    echo -e "${YELLOW}Logo Variations:${NC}"
    echo "Minimal:"
    generate_ascii_logo "minimal"
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
    echo "Memory Usage: 34% $STATUS_success"
    create_progress_bar 34
    echo ""
    echo "CPU Usage: 14% $STATUS_success"
    create_progress_bar 14
    echo ""
    echo "Disk Usage: 21% $STATUS_success"
    create_progress_bar 21
    echo ""
}

# Main execution
case "${1:-help}" in
    "examples")
        show_ascii_examples
        ;;
    "logo")
        generate_ascii_logo "${2:-minimal}"
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
        echo "CtxRtr ASCII Style Preview"
        echo ""
        echo "Usage: $0 [command] [options]"
        echo ""
        echo "Commands:"
        echo "  examples    - Show ASCII style examples"
        echo "  logo [style]- Generate ASCII logo (styled|minimal)"
        echo "  dashboard   - Create system health dashboard"
        echo "  chart       - Create performance comparison chart"
        echo "  structure   - Show file structure tree"
        echo "  help        - Show this help message"
        echo ""
        echo "Examples:"
        echo "  $0 examples"
        echo "  $0 logo styled"
        echo "  $0 dashboard 45 25 30"
        ;;
esac
