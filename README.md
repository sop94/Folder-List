## 📁 Export Folder List to UTF-8 `.txt` File with Thai Language Support

This guide shows you how to export the names of folders (directories) in the current location to a `.txt` file encoded in **UTF-8**, with full support for **Thai characters**. This is useful if you're working with folder names in Thai or other non-English languages.

### ✅ Why Not Use `dir`?

The classic Windows command:

```bat
dir /b /ad > folder_list.txt
```

works, but **does not support UTF-8 encoding** by default, which causes Thai folder names to appear as `???`.

---

### 🛠 Solution: Use PowerShell with UTF-8 Encoding

Here’s a working `.bat` script that:

* Lists all folders in the current directory
* Saves the list to `folder_list.txt`
* Encodes the file in UTF-8, so Thai characters display correctly

### 📄 Batch Script

```bat
@echo off
setlocal

set "output_file=folder_list.txt"

REM Use PowerShell to output folder names in UTF-8 (with Thai support)
powershell -NoProfile -Command ^
    "chcp 65001 >$null; Get-ChildItem -Path . -Directory -Name | Out-File -FilePath '%output_file%' -Encoding UTF8"

echo ✅ Folder list saved to %output_file% with UTF-8 encoding
endlocal
pause
```

---

### 🧪 Tested With:

* Windows 10 / 11 (Command Prompt)
* Folder names in Thai and English
* Output encoding verified as UTF-8 (with BOM)

---

### 📌 Notes:

* `chcp 65001` sets the console code page to UTF-8 temporarily.
* `Get-ChildItem -Directory -Name` retrieves only folder names.
* `Out-File -Encoding UTF8` ensures proper encoding for multilingual output.

---

### 📷 Example Output in `folder_list.txt`:

```
เพลง
เอกสาร
โครงการเรียนรู้
TestFolder
```

---

### 🙋‍♀️ Need More?

Feel free to open an issue or request a feature if you need a version that includes subfolders, file sizes, or exports to CSV.

---
