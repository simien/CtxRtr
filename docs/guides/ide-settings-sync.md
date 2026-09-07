# Cursor IDE and VS Code Settings Sync Guide

This guide explains how to apply the project's VS Code settings to Cursor IDE for optimal performance and consistency.

## ■ **Current Situation**

### **VS Code vs Cursor IDE**
- **VS Code settings** (`.vscode/settings.json`) are **VS Code specific**
- **Cursor IDE** is built on VS Code but has its own settings system
- **Different settings locations** and some different capabilities

## ◆ **Solutions**

### **Option 1: Automated Sync (Recommended)**

Use the provided sync script to automatically merge settings:

```bash
# Run the sync script
./scripts/sync-cursor-settings.sh
```

This script will:
- ✓ **Backup** your current Cursor settings
- ✓ **Merge** project VS Code settings with Cursor settings
- ✓ **Preserve** your existing Cursor preferences
- ✓ **Apply** project-specific optimizations

### **Option 2: Manual Application**

1. **Open Cursor IDE Settings:**
   - Press `Cmd + ,` or go to Cursor → Preferences → Settings

2. **Copy Settings:**
   - Open `config/cursor-settings.json` in this project
   - Copy the contents to Cursor's settings.json

3. **Apply Changes:**
   - Restart Cursor IDE to apply all changes

### **Option 3: Workspace-Specific Settings**

1. **Create workspace settings:**
   ```bash
   mkdir -p .cursor
   cp config/cursor-settings.json .cursor/settings.json
   ```

2. **Cursor will automatically apply** these settings when you open the project

## ☐ **Settings Comparison**

### **Current Cursor Settings (Optimized)**
```json
{
  "workbench.colorTheme": "Default Dark Modern",
  "files.watcherExclude": {
    "**/node_modules/*": true,
    "**/build/*": true,
    "**/.git/objects/**": true,
    "**/.dropbox/**": true,
    "**/logs/**": true,
    "**/metrics/data/**": true
  },
  "typescript.tsserver.maxTsServerMemory": 2048,
  "files.maxMemoryForLargeFilesMB": 64,
  "editor.largeFileOptimizations": true
}
```

### **Project VS Code Settings (Enhanced)**
```json
{
  "files.exclude": {
    "**/.git": true,
    "**/.DS_Store": true,
    "**/node_modules": true,
    "**/logs": true,
    "**/metrics/data": true
  },
  "editor.formatOnSave": true,
  "editor.insertSpaces": true,
  "editor.tabSize": 2,
  "files.associations": {
    "*.sh": "shellscript",
    "*.md": "markdown"
  }
}
```

## ▶ **Performance Benefits**

### **Applied Optimizations**
- ✓ **File watcher exclusions** - Reduces CPU usage
- ✓ **TypeScript server memory** - Increased to 2048MB
- ✓ **Large file optimizations** - Better handling of large files
- ✓ **Search exclusions** - Faster search performance
- ✓ **Format on save** - Consistent code formatting
- ✓ **File associations** - Better syntax highlighting

### **Project-Specific Benefits**
- ✓ **Logs directory excluded** - Prevents watching log files
- ✓ **Metrics data excluded** - Reduces file system load
- ✓ **Shell script support** - Better .sh file handling
- ✓ **Markdown support** - Enhanced .md file experience

## ■ **Troubleshooting**

### **If Settings Don't Apply**
1. **Restart Cursor IDE** completely
2. **Check file permissions** on settings files
3. **Verify JSON syntax** in settings files
4. **Clear Cursor cache** if needed

### **If Performance Issues**
1. **Reduce TypeScript memory** if you have less RAM
2. **Exclude more directories** from file watching
3. **Disable unused extensions**
4. **Monitor system resources**

### **Restore from Backup**
```bash
# Find backup files
ls -la ~/Library/Application\ Support/Cursor/User/settings.json.backup.*

# Restore specific backup
cp ~/Library/Application\ Support/Cursor/User/settings.json.backup.YYYYMMDD_HHMMSS ~/Library/Application\ Support/Cursor/User/settings.json
```

## ■ **Verification**

After applying settings, verify they're working:

1. **Check file watcher exclusions:**
   - Open a log file in `logs/` - should not trigger file watching

2. **Test large file handling:**
   - Open a large markdown file - should load quickly

3. **Verify format on save:**
   - Edit a .sh or .md file and save - should auto-format

4. **Check syntax highlighting:**
   - Open .sh files - should have proper shell syntax highlighting

## ◆ **Best Practices**

### **For This Project**
- ✓ **Use the sync script** for consistent settings
- ✓ **Keep backups** of Cursor settings
- ✓ **Test after changes** to ensure functionality
- ✓ **Monitor performance** and adjust as needed

### **For Other Projects**
- ✓ **Create project-specific** .vscode settings
- ✓ **Use workspace settings** when possible
- ✓ **Document settings** changes
- ✓ **Test compatibility** with team members

---

**Result:** Cursor IDE will now have the same optimized settings as VS Code, providing consistent performance and developer experience across both editors.
