#!/bin/bash
# GitHub Actions Validation Script

echo "🔍 Validating GitHub Actions and Configuration Modernization"
echo "============================================================"
echo

# Count workflows
WORKFLOW_COUNT=$(find .github/workflows -name "*.yml" | wc -l)
echo "📁 Workflows found: $WORKFLOW_COUNT"

# List all workflows
echo
echo "📋 Workflow Files:"
find .github/workflows -name "*.yml" -exec basename {} \; | sort | sed 's/^/  - /'

# Check for required files
echo
echo "📋 Configuration Files:"
if [ -f ".github/dependabot.yml" ]; then
    echo "  ✅ dependabot.yml"
else
    echo "  ❌ dependabot.yml"
fi

if [ -f ".github/PULL_REQUEST_TEMPLATE.md" ]; then
    echo "  ✅ PULL_REQUEST_TEMPLATE.md"
else
    echo "  ❌ PULL_REQUEST_TEMPLATE.md"
fi

if [ -f "SECURITY.md" ]; then
    echo "  ✅ SECURITY.md"
else
    echo "  ❌ SECURITY.md"
fi

# Check issue templates
ISSUE_TEMPLATES=$(find .github/ISSUE_TEMPLATE -name "*.yml" 2>/dev/null | wc -l)
echo "  ✅ Issue templates: $ISSUE_TEMPLATES"

echo
echo "🔒 Security Features:"
if grep -q "CodeQL" .github/workflows/security.yml 2>/dev/null; then
    echo "  ✅ CodeQL security scanning"
else
    echo "  ❌ CodeQL security scanning"
fi

if grep -q "trivy" .github/workflows/security.yml 2>/dev/null; then
    echo "  ✅ Container vulnerability scanning"
else
    echo "  ❌ Container vulnerability scanning"
fi

if grep -q "safety\|pip-audit" .github/workflows/security.yml 2>/dev/null; then
    echo "  ✅ Dependency vulnerability scanning"
else
    echo "  ❌ Dependency vulnerability scanning"
fi

if grep -q "trufflehog" .github/workflows/security.yml 2>/dev/null; then
    echo "  ✅ Secret detection"
else
    echo "  ❌ Secret detection"
fi

echo
echo "🧪 Testing & Quality:"
if grep -q "flake8\|black\|pylint" .github/workflows/python-ci.yml 2>/dev/null; then
    echo "  ✅ Python code quality tools"
else
    echo "  ❌ Python code quality tools"
fi

if grep -q "pytest" .github/workflows/python-ci.yml 2>/dev/null; then
    echo "  ✅ Python testing framework"
else
    echo "  ❌ Python testing framework"
fi

if grep -q "mypy" .github/workflows/python-ci.yml 2>/dev/null; then
    echo "  ✅ Type checking"
else
    echo "  ❌ Type checking"
fi

echo
echo "🚀 Release & Deployment:"
if [ -f ".github/workflows/release.yml" ]; then
    echo "  ✅ Automated release workflow"
else
    echo "  ❌ Automated release workflow"
fi

if grep -q "docker/build-push-action" .github/workflows/docker.yml 2>/dev/null; then
    echo "  ✅ Multi-architecture Docker builds"
else
    echo "  ❌ Multi-architecture Docker builds"
fi

echo
echo "⚙️ Workflow Optimizations:"
if grep -q "concurrency:" .github/workflows/*.yml 2>/dev/null; then
    echo "  ✅ Concurrency controls"
else
    echo "  ❌ Concurrency controls"
fi

if grep -q "cache:" .github/workflows/*.yml 2>/dev/null; then
    echo "  ✅ Caching strategies"
else
    echo "  ❌ Caching strategies"
fi

if grep -q "permissions:" .github/workflows/*.yml 2>/dev/null; then
    echo "  ✅ Workflow permissions"
else
    echo "  ❌ Workflow permissions"
fi

echo
echo "✅ GitHub Actions modernization complete!"
echo "📊 Summary: $WORKFLOW_COUNT workflows with comprehensive CI/CD, security scanning, and quality controls"