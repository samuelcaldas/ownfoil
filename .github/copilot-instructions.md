# Ownfoil Project - Coding Standards

## Project Overview
Ownfoil is a Python Flask web application for managing Nintendo Switch game libraries and creating self-hosted Tinfoil shops. The application provides multi-user authentication, library management, and content identification features.

## Core Principles
- **Clean Code:** Write readable, maintainable Python code following PEP 8 standards
- **Architecture:** Follow Flask best practices, modular design with blueprints, separation of concerns
- **Quality:** Comprehensive error handling, logging, input validation, and secure authentication

## Tech Stack
- **Backend:** Python 3.11+, Flask, SQLAlchemy, Flask-Login
- **Frontend:** HTML5, Bootstrap 5.3.1, jQuery 3.6+, Font Awesome, Bootstrap Icons
- **Database:** SQLite (default), configurable
- **Deployment:** Docker, multi-platform support
- **File Processing:** Watchdog for file monitoring, custom NSP/XCI handlers

## Implementation Rules

### Python Backend
- Follow PEP 8 style guidelines
- Use Flask blueprints for modular organization
- Implement proper error handling with try/except blocks
- Use logging instead of print statements
- Validate user inputs and sanitize data
- Use SQLAlchemy models and relationships properly
- Implement proper authentication and authorization decorators

### Frontend
- **Libraries:** Use only approved libraries:
  - Bootstrap 5.3.1 (CDN)
  - jQuery 3.6+ (CDN)
  - Font Awesome (CDN)
  - Bootstrap Icons (CDN)
- **File Organization:** Separate HTML templates, CSS, and JS into distinct files
- **Templates:** Use Jinja2 templating with proper escaping
- **Error Handling:** Implement proper form validation and user feedback

### Database
- Use SQLAlchemy ORM with proper model definitions
- Implement database migrations when schema changes
- Use proper foreign key relationships
- Handle database errors gracefully

### Security
- Never commit secrets or API keys
- Use secure password hashing (Werkzeug)
- Implement proper session management
- Validate and sanitize all user inputs
- Use HTTPS in production

## File Format
- Use file block syntax when proposing files:
```python name=filename.py
# File contents here
```

## Project Structure
```
app/
├── app.py              # Main Flask application
├── auth.py             # Authentication blueprint
├── constants.py        # Application constants
├── db.py              # Database models
├── settings.py        # Configuration management
├── shop.py            # Tinfoil shop functionality  
├── library.py         # Library management
├── static/            # CSS, JS, images
├── templates/         # Jinja2 HTML templates
└── data/              # Application data
```

## Development Guidelines

### Flask Application
- Use application factory pattern
- Organize routes in blueprints
- Use proper error handlers
- Implement logging throughout the application
- Use configuration files (YAML) for settings

### Database Models
- Define clear SQLAlchemy models in db.py
- Use proper relationships and constraints
- Implement model methods for business logic
- Handle database sessions properly

### Authentication
- Use Flask-Login for session management
- Implement role-based access control
- Secure API endpoints with decorators
- Support both web and API authentication

### File Processing
- Use watchdog for monitoring file changes
- Implement proper file type validation
- Handle large file operations asynchronously
- Support NSP, NSZ, XCI, XCZ file formats

## CDN Links (Current Versions)
- **Bootstrap:** 
  ```
  https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css
  https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js
  https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css
  ```
- **jQuery:**
  ```
  https://code.jquery.com/jquery-3.6.0.min.js
  ```
- **Font Awesome:**
  ```
  https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css
  ```

## Environment Setup
- Python 3.11+ required
- Install dependencies via `pip install -r requirements.txt`
- Use Docker for consistent development environment
- Configure environment variables for development vs production

## Testing
- Write unit tests for critical business logic
- Test authentication and authorization flows
- Validate file processing functionality
- Test database operations and migrations

## Languages & Priorities
- **Primary:** Python (Flask backend), JavaScript (frontend), HTML/CSS
- **Containerization:** Docker, Bash scripts
- **Configuration:** YAML, Environment variables
- **Documentation:** English (primary), Portuguese (secondary)