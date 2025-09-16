# This file stores the markdown content for the project's README.
# You can use this string in other parts of your project, for example,
# to display it in a help window or to generate a README.md file.

readme_markdown = """
# Advanced List Comparison Tool

This is a desktop application built with Python and Tkinter that provides a user-friendly interface for comparing two lists of text. It's designed to help you quickly identify differences and similarities between lists, making it useful for data cleaning, validation, and analysis.



## Features

* **Dual List Input:** Paste or type your lists into two separate text boxes (List A and List B).
* **Comprehensive Comparison:** The tool displays three result sets:
    * Items found **only in List A**.
    * Items found **only in List B**.
    * Items found **in both lists**.
* **Case-Insensitive Option:** A simple checkbox allows you to ignore case differences during the comparison.
* **CSV Export:** Export both input lists and all three result lists into a single, well-organized CSV file.
* **Session Persistence:** The application automatically saves the contents of all text boxes and your configuration when you close it, so you can pick up where you left off.
* **Line Numbers:** Both input and output boxes feature line numbers for easier tracking and reference.

## How to Use

### Running the script directly

1.  Make sure you have Python 3 installed.
2.  Run the script from your terminal:
    ```bash
    python list_comparator.py
    ```

### Creating an Executable (`.exe`) with `build.bat`

The `build.bat` file is a convenient script for Windows users to package the application into a single standalone executable file (`.exe`).

**Instructions:**

1.  **Prerequisites:** Ensure you have Python installed and that it has been added to your system's PATH environment variable.
2.  **Placement:** Place the `build.bat` file in the same directory as the `list_comparator.py` script.
3.  **Execution:** Simply double-click the `build.bat` file to run it.
4.  **Process:** A command prompt window will appear. The script will first check if the `pyinstaller` package is installed and, if not, it will attempt to install it for you. It will then proceed to build the executable.
5.  **Find the Executable:** Once the script is finished, you will find a new folder named `dist` in the directory. Your application, `ListComparator.exe`, will be inside this `dist` folder. You can then run this file on any Windows computer without needing to install Python.
"""

if __name__ == '__main__':
    # You can, for example, write this content to a README.md file
    try:
        with open('README.md', 'w') as f:
            f.write(readme_markdown)
        print("Successfully created README.md")
    except IOError as e:
        print(f"Error writing to file: {e}")
```
