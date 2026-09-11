# @CAPITALIZED_NAME@ Connector (Maven Multi-Module)

This project uses the **maven-multi-module** branching model: a single repository with one parent POM and child modules sharing the same versioning and release lifecycle.

## Project Structure

```
@NAME@/
├── @NAME@-connectivity-model/   # Connectivity model (CCM)
│   └── src/
│       ├── main/dw/
│       └── test/dw/
├── @NAME@-flow-connector-model/ # Flow connector model
│   └── src/
│       ├── main/dw/
│       └── test/dw/
├── @NAME@-anypoint-connector-model/ # Anypoint connector model
│   └── src/
│       ├── main/dw/
│       └── test/dw/
├── pom.xml                      # Root aggregator POM
├── kilonova.yaml
├── sonar-project.properties
└── README.md
```

## Getting Started

### Prerequisites

- Java 17+
- Maven 3.9+
- DataWeave CLI (for local testing)

### Building

```bash
mvn clean install
```

### Running Tests

```bash
mvn test
```

## Module Lifecycle

### Versioning

All modules share the same version defined in the root `pom.xml`. A release bumps the version for the entire project.

### CI/CD

CI/CD configuration (`kilonova.yaml`, `Jenkinsfile`) lives at the repository root and applies to all modules in a single pipeline run.

### Adding a New Module

When a new module is generated, it is automatically registered in the root `pom.xml` as a child module and in `sonar-project.properties` for code quality analysis.

## Repository Setup

- Create a repo using the prodEng bot command `/prodeng create-repo`:
    - Organization: mulesoft
    - Team: team-ms-interpreted-connectivity
    - Jenkins Job: Not Needed
    - Unified Pipeline Onboarding: Yes
    - Strategy: mvn-lib
    - Product Name: interpreted-connectivity
    - Component Name: your SaaS name (e.g. jira)
    - Asset type: None
    - Template: None

- Onboard to kilonova:

```yaml
product: interpreted-connectivity
component: your-component
version: "0.1"
profile: interpretedConnectivity

builder:
  name: java-maven-lib
  version: 11

componentType: library

notifications:
  slackChannel: your-channel-bot
```

## Create Secrets and Consume Secrets

### Step 1 — Register the Secret

Use the secrets pipeline for your product to register a new secret:

- **ACTION**: `WRITE`
- **SECRET_NAME**: use lowercase with dashes, e.g. `interpreted-connectivity-@NAME@-username`
- **SECRET_VALUE**: your secret value
- **SECRET_DESC**: a description for the secret
- **IS_PRODUCTION**: check this if the secret should be available on all branches (not just `main`/`master`)

The build includes an interactive approval step that requires a **different user** than the one who started it.

### Step 2 — Configure Pipeline Access

Create a PR in the pipeline customizations repository to expose each secret as an input:

```yaml
- name: run-tests-test
  arguments:
    inputs:
      - name: interpreted-connectivity-@NAME@-username
        type: token
        id: interpreted-connectivity-@NAME@-username
      - name: interpreted-connectivity-@NAME@-password
        type: token
        id: interpreted-connectivity-@NAME@-password
      - name: interpreted-connectivity-@NAME@-base-uri
        type: token
        id: interpreted-connectivity-@NAME@-base-uri
```

Once approved and merged, secrets become available within a few minutes.

### Step 3 — Use Secrets in Code

Secrets are exposed as environment variables with names transformed to upper-case snake-case. For example, `interpreted-connectivity-jira-username` becomes `INTERPRETED_CONNECTIVITY_JIRA_USERNAME`:

```dw
baseUri: dw::System::envVars().INTERPRETED_CONNECTIVITY_JIRA_BASE_URI default "http://localhost:8081"

username: dw::System::envVars().INTERPRETED_CONNECTIVITY_JIRA_USERNAME default "user"

password: dw::System::envVars().INTERPRETED_CONNECTIVITY_JIRA_PASSWORD default "token"
```
