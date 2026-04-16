# CI/CD Basics

## Overview
CI/CD (Continuous Integration / Continuous Deployment) is the practice of automating the building, testing, and deployment of applications.

---

## CI vs CD

- **Continuous Integration (CI)** → automatically build and test code changes  
- **Continuous Deployment (CD)** → automatically deploy changes to environments  

---

## CI/CD Pipeline

- Commit change  
- Trigger build  
- Build application  
- Build outcome  
- Run tests  
- Test outcome  
- Deliver to staging  
- Deploy to production  

---

## Benefits

- Faster delivery  
- Improved quality  
- Reduced risk  
- Better collaboration  
- Automation  
- Consistency  
- Continuous feedback  

---

## CI/CD Tools

- GitLab CI  
- CircleCI  
- Jenkins  
- GitHub Actions  
- Travis CI  
- Cloud providers (AWS / GCP / Azure)  

(Primary tool used: GitHub Actions)

---

## YAML Syntax

Used to define workflows.

### Key Concepts

- Key-value pairs  
- Nested elements  
- Lists  

---

## Workflow Structure

- Workflow → overall automation  
- Jobs → groups of steps  
- Steps → individual tasks  

Example flow:

- Trigger (e.g. push)  
- Set environment  
- Install dependencies  
- Run tests  

---

## Advanced Features

- **Conditions** → run jobs based on logic  
- **Expressions** → dynamic values  
- **Matrix builds** → test multiple environments  
- **Parallel testing** → run jobs simultaneously  

---

## Secrets

- Store sensitive data (API keys, credentials)  
- Access securely in workflows  
- Never hardcode secrets  

---

## Custom Actions

- Reusable workflow components  

### Types

- JavaScript actions  
- Docker actions  
- Composite actions  

---

## Creating and Using Actions

- Create action (define logic)  
- Package it (e.g. using build tools)  
- Call it in workflows  

### Benefits

- Reusability  
- Consistency  
- Efficiency  

---

## Automated Testing & Linting

- Ensures code quality before deployment  

### Benefits

- Catch errors early  
- Maintain code standards  
- Improve reliability  

### Tools

- Unit testing frameworks  
- Linters  

---

## Security Best Practices

- Use secrets for sensitive data  
- Limit permissions  
- Avoid hardcoding credentials  
- Validate inputs  

---

## Debugging Workflow Failures

### Common Issues

- Failed tests  
- Dependency issues  
- Permission issues  
- Configuration errors  

### Solutions

- Review logs  
- Rerun jobs  
- Update dependencies  
- Check configurations  

---

## Deployment Environments

### Types

- Development  
- Staging  
- Production  

---

## Deployment Strategies

- Manual deployment  
- Automated deployment  

---

## Deployment Platforms

- AWS  
- GCP  
- Azure  

---

## Manual Triggers (GitHub Actions)

### Key Features

- Trigger workflows manually  
- Pass custom inputs  

### Use Cases

- Testing pipelines  
- Controlled deployments  
- Debugging workflows  
