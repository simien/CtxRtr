# **CtxRtr** ASCII Style Guide

A unified monochromatic ASCII art system for CtxRtr documentation and outputs.

## 🎨 Design Philosophy

CtxRtr uses a **monochromatic ASCII-first** approach that prioritizes:
- **Consistency** across all documentation and outputs
- **Readability** in any terminal or text editor
- **Universality** - works everywhere without special fonts
- **Performance** - lightweight and fast rendering
- **Accessibility** - clear and unambiguous symbols

## 📊 Core ASCII Elements

### Status Indicators
```
✅  PASS/SUCCESS    ⚠️  WARNING    ❌  FAIL/ERROR    🔄  IN PROGRESS
🟢  GOOD           🟡  WARNING     🔴  CRITICAL      ⚪  NEUTRAL
```

### Progress Bars
```
██████████████████████████████  (100% - Filled)
██████████░░░░░░░░░░░░░░░░░░░░  (33% - Partial)
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  (0% - Empty)
```

### System Health
```
┌─────────────────────────────────────┐
│  SYSTEM HEALTH: EXCELLENT ✅        │
│  Memory: ████████░░░░░░░░░░░░░░░░  │
│  CPU:    ████░░░░░░░░░░░░░░░░░░░░  │
│  Disk:   ██████░░░░░░░░░░░░░░░░░░  │
└─────────────────────────────────────┘
```

### File Structure Trees
```
CtxRtr/
├── 📁 docs/                    # Documentation
│   ├── 📄 README.md           # Main docs
│   └── 📊 metrics/            # Performance data
├── 🛠️  ops/                   # Operations
│   ├── 🔧 scripts/            # Automation
│   └── 📈 monitoring/         # System health
└── 📋 todos/                  # Task management
```

## 🎯 Icon Set

### System Components
```
🖥️  SYSTEM      💾 MEMORY      🔥 CPU         💿 DISK
📊 METRICS      📈 DASHBOARD    📄 DOCUMENT    🔧 TOOL
🛡️  SECURITY    🔒 LOCK        ⚡ PERFORMANCE  🎯 TARGET
```

### File Types
```
📁 DIRECTORY    📄 MARKDOWN     📊 JSON         ⚙️  CONFIG
🔧 SCRIPT       📋 LOG          📈 METRIC       🎨 TEMPLATE
```

### Actions & States
```
▶️  START        ⏹️  STOP         🔄 RESTART     📝 EDIT
📤 EXPORT       📥 IMPORT       🔍 SEARCH       🎯 TARGET
✅ COMPLETE     ⚠️  WARNING      ❌ ERROR       🔄 PROCESSING
```

### Development Tools
```
💻 CURSOR       🐳 DOCKER       🍺 HOMEBREW    📊 STATS
🔧 SCRIPT       ⚙️  CONFIG       📈 METRICS     🛠️  TOOLS
```

## 📊 Chart Styles

### Bar Charts
```
Memory Usage: 34% ✅
██████████░░░░░░░░░░░░░░░░░░░░
Target: < 80% | Current: 34%

CPU Usage: 14% ✅
████░░░░░░░░░░░░░░░░░░░░░░░░░░
Target: < 70% | Current: 14%
```

### Progress Indicators
```
PDF Conversion: 100% ✅
██████████████████████████████
Status: Complete | Files: 3/3

System Optimization: 85% 🔄
██████████████████████░░░░░░░░
Status: In Progress | Remaining: 3 tasks
```

### Status Tables
```
┌─────────────────────────────────────┐
│  COMPONENT    │ STATUS │ PROGRESS  │
├─────────────────────────────────────┤
│  System       │ ✅     │ 100%      │
│  PDF Convert  │ ✅     │ 100%      │
│  Monitoring   │ ✅     │ 100%      │
│  Security     │ 🔄     │ 85%       │
└─────────────────────────────────────┘
```

## 🎨 CtxRtr Logo Variations

### Simple Logo
```
CtxRtr
```

### Styled Logo
```
┌─────────────────────────────────────┐
│  CtxRtr - Contextual Prompt Router  │
│  Local-First Agentic Tooling        │
└─────────────────────────────────────┘
```

### ASCII Art Logo
```
CtxRtr
```

### Minimal Logo
```
CtxRtr
Contextual Prompt Router
```

## 📋 Usage Guidelines

### 1. Status Reporting
Always use consistent status indicators:
- ✅ for success/completion
- ⚠️ for warnings/attention needed
- ❌ for errors/failures
- 🔄 for in-progress operations

### 2. Progress Visualization
Use progress bars for:
- System resource usage
- Task completion percentages
- File conversion progress
- Optimization status

### 3. File Structure
Use tree-style ASCII for:
- Directory structures
- Component hierarchies
- System architecture
- File organization

### 4. Data Visualization
Use ASCII charts for:
- Performance metrics
- Resource usage
- Comparison data
- Trend analysis

## 🔧 Implementation

### Shell Script Integration
```bash
# Status indicators
echo "✅ System health check completed"
echo "⚠️  Memory usage above threshold"
echo "❌ PDF conversion failed"

# Progress bars
create_progress_bar() {
    local percentage="$1"
    local width=30
    local filled=$((percentage * width / 100))
    local empty=$((width - filled))

    printf "%${filled}s" | tr ' ' '█'
    printf "%${empty}s" | tr ' ' '░'
}
```

### Markdown Integration
```markdown
### System Status
```
Memory Usage: 34% ✅
██████████░░░░░░░░░░░░░░░░░░░░
```

### Dashboard Integration
```bash
# Generate ASCII dashboard
cat << EOF
┌─────────────────────────────────────┐
│  CtxRtr System Dashboard        │
├─────────────────────────────────────┤
│  Memory: ████████░░░░░░░░░░░░░░░░  │
│  CPU:    ████░░░░░░░░░░░░░░░░░░░░  │
│  Disk:   ██████░░░░░░░░░░░░░░░░░░  │
└─────────────────────────────────────┘
EOF
```

## 🎯 Best Practices

### 1. Consistency
- Use the same symbols across all documentation
- Maintain consistent spacing and alignment
- Follow established patterns for similar data types

### 2. Readability
- Keep ASCII art simple and clear
- Use appropriate spacing for visual separation
- Ensure symbols are unambiguous

### 3. Performance
- Prefer simple ASCII over complex art
- Use efficient rendering methods
- Cache frequently used patterns

### 4. Accessibility
- Provide text alternatives for ASCII art
- Use clear, descriptive symbols
- Maintain high contrast for visibility

## 📊 Examples

### System Health Dashboard
```
┌─────────────────────────────────────┐
│  CtxRtr System Health           │
├─────────────────────────────────────┤
│  🖥️  System:    ✅ OPERATIONAL     │
│  💾 Memory:    🟢 34% (Target: <80%)│
│  🔥 CPU:       🟢 14% (Target: <70%)│
│  💿 Disk:      🟢 21% (Target: <85%)│
│  📊 Metrics:   ✅ ACTIVE            │
│  📄 PDF Conv:  ✅ COMPLETE          │
└─────────────────────────────────────┘
```

### Performance Chart
```
Before vs After Optimization
┌─────────────────────────────────────┐
│  Metric    │ Before │ After │ Δ     │
├─────────────────────────────────────┤
│  Memory    │  85%   │  34%  │ -51%  │
│  CPU       │  65%   │  14%  │ -51%  │
│  Swap      │  45%   │   0%  │ -45%  │
│  Response  │ 2.3s   │ 0.8s  │ -65%  │
└─────────────────────────────────────┘
```

### File Structure
```
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
```

This ASCII style guide ensures consistent, professional, and universally compatible visual elements throughout the CtxRtr project.
