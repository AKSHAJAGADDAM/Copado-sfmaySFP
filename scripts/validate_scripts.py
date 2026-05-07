import json
import sys

print("Reading Code Analyzer Results...")

try:

    with open("reports/results.json", "r") as file:
        data = json.load(file)

except Exception as e:

    print(f"Error reading JSON report: {e}")
    sys.exit(1)


# ----------------------------------------
# v5 Structure
# ----------------------------------------

violations = data.get("violations", [])

print(f"\nTotal Violations: {len(violations)}\n")


for violation in violations:

    rule = violation.get("rule")
    severity = violation.get("severity")
    message = violation.get("message")

    print(
        f"Rule: {rule} | "
        f"Severity: {severity} | "
        f"Message: {message}"
    )


# ----------------------------------------
# FAIL PIPELINE
# ----------------------------------------

if len(violations) > 0:

    print("\nCode Analysis FAILED")
    sys.exit(1)

print("\nCode Analysis PASSED")
sys.exit(0)