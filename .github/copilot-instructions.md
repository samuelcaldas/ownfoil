# Coding Standards

## Core Principles
- **Clean Code:** 
- **Architecture:** Follow TDD, clean code principles, Apply object calisthenics, SOLID, Clean Architecture, DDD, and design patterns
- **Quality:** Error handling, edge cases, docstrings, production code

## Implementation Rules
- Include namespaces when needed
- **Libraries:** No third-party libraries except:
  - Standard/native libraries
  - Bootstrap (CDN)
  - jQuery (CDN)
  - Ajax
- **File Organization:** Separate HTML/CSS/JS/Other into distinct files
- **Error Handling:** Implement try/catch where appropriate

## File Format
- Whenever proposing a file use the file block syntax.
- Files must be represented as code blocks with their `name` in the header. Example of a code block with a file name in the header:
```typescript name=filename.ts
contents of file
```
- For C/C++, provide header (.h) and source (.cpp).

## Design Process
1. System design (PlantUML diagram)
2. Implementation (code)

## CDN Links
- **Bootstrap:** 
  ```
  https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css
  https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js
  https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css
  ```
- **jQuery:**
  ```
  https://code.jquery.com/jquery-3.7.1.js
  https://code.jquery.com/ui/1.13.3/jquery-ui.js
  https://code.jquery.com/ui/1.13.3/themes/base/jquery-ui.css
  ```

# Languages
- **Code:** C, C++, C#, Python, JavaScript, HTML, CSS, PowerShell, Bash
- **Language by priority:** English, PTBR