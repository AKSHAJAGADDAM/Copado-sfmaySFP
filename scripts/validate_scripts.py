import json
import sys

with open("reports/results.json", "r") as file:
    data = json.load(file)

violations = data.get("violations", [])

print(f"Total Violations: {len(violations)}")

for violation in violations:
    print(
        f"Rule: {violation.get('ruleName')} | "
        f"Severity: {violation.get('severity')}"
    )

# Fail pipeline if violations exist
if len(violations) > 0:
    print("Code Analysis FAILED")
    sys.exit(1)

print("Code Analysis PASSED")
sys.exit(0)