# WinClean - Windows System Cleanup Tool

A powerful Windows batch script designed to clean up temporary files, cache, and optimize system performance by removing unnecessary files that accumulate over time.

## 🌟 Features

- **Windows Temp Folder Cleanup**: Removes all temporary files from `C:\Windows\Temp`
- **Prefetch Cleanup**: Clears Windows prefetch files to free up space
- **User Temp Cleanup**: Removes temporary files from the current user's temp folder
- **DNS Cache Flush**: Flushes the DNS resolver cache for improved network performance
- **Windows Update Cache Cleanup**: Cleans up Windows Update download cache
- **Recycle Bin Cleanup**: Empties the Recycle Bin completely
- **Automatic Administrator Privileges**: Automatically requests admin rights when needed

## 📋 Prerequisites

- **Operating System**: Windows 7, 8, 10, 11, or Windows Server
- **Privileges**: Script requires Administrator privileges (automatically requested)
- **Batch File Support**: Windows Command Prompt or PowerShell

## 🚀 How to Run

### Method 1: Double-Click Execution
1. Download or clone the repository
2. Locate the `clear_cache.bat` file
3. Double-click the file to run
4. If prompted by UAC (User Account Control), click "Yes" to grant administrator privileges
5. Wait for the cleanup process to complete
6. Press any key to close the window when finished

### Method 2: Command Prompt Execution
1. Open Command Prompt
2. Navigate to the directory containing `clear_cache.bat`:
   ```cmd
   cd path\to\WinClean
   ```
3. Run the script:
   ```cmd
   clear_cache.bat
   ```
4. Grant administrator privileges when prompted

### Method 3: Run as Administrator
1. Right-click on `clear_cache.bat`
2. Select "Run as administrator"
3. Wait for the cleanup process to complete

## ⚠️ Important Warnings

- **Administrator Rights Required**: This script requires administrator privileges to access system folders
- **File Deletion**: This script permanently deletes temporary files. Make sure you don't have important data in temp folders
- **Active Applications**: Close any important applications before running to avoid potential data loss
- **System Stability**: While safe for most systems, always ensure you have important files backed up
- **Windows Update**: The script temporarily stops Windows Update service during cleanup

## 📝 What Gets Cleaned

| Location | Description |
|----------|-------------|
| `C:\Windows\Temp` | System-wide temporary files |
| `C:\Windows\Prefetch` | Application prefetch data |
| `%TEMP%` | Current user's temporary files |
| DNS Cache | Network DNS resolver cache |
| `C:\Windows\SoftwareDistribution\Download` | Windows Update cache |
| `C:\$Recycle.bin` | Recycle Bin contents |

## 🔧 Troubleshooting

### Script Won't Run
- Ensure you have administrator privileges
- Check if your antivirus is blocking the script
- Verify that batch file execution is not disabled by group policy

### "Access Denied" Errors
- Make sure you granted administrator privileges when prompted
- Some files may be in use by running applications - close them and try again

### Script Runs But Nothing Happens
- Check if the locations being cleaned actually contain files
- Verify that Windows Defender or antivirus isn't preventing file deletion

## 🤝 Contributing

Contributions are welcome! If you have suggestions for improvements or additional cleanup features, please feel free to:
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Owner Credits

- Owner: **Thamindu-Dev**
- GitHub: [@Thamindu-Dev](https://github.com/Thamindu-Dev)
- Repository: [WinClean](https://github.com/Thamindu-Dev/WinClean)

## ⭐ Acknowledgments

- Thanks to all contributors who help improve this tool
- Inspired by the need for a simple, effective Windows cleanup solution

## 📞 Support

If you encounter any issues or have questions:
- Open an issue on the [GitHub repository](https://github.com/Thamindu-Dev/WinClean/issues)
- Check the troubleshooting section above
- Review existing issues for similar problems

## 🔄 Version History

- **v1.0.0** - Initial release with core cleanup features

---

**Note**: This script is provided as-is. Always review scripts before running them with administrator privileges. Regular use can help maintain system performance, but always ensure you have backups of important data.
