# Custom GitHub Action (JavaScript)

## 📌 Overview

This project is a custom GitHub Action built using JavaScript.

It extends workflow functionality by introducing reusable automation, allowing custom logic to be integrated directly into CI/CD pipelines.

---

## 🎯 Why I Built This

I built this project to understand how GitHub Actions work beyond writing YAML workflows.

It demonstrates:
- How actions are structured  
- How reusable automation is created  
- How workflows can be extended with custom logic  

---

## ⚙️ How It Works

- The action logic is defined in `index.js`  
- Dependencies are bundled into the `dist/` folder using `@vercel/ncc`  
- The `action.yaml` file defines inputs, outputs, and execution  
- The action is executed within GitHub Actions workflows  

---

## 🚀 Usage Example

```yaml
jobs:
  example:
    runs-on: ubuntu-latest
    steps:
      - name: Run custom action
        uses: shuaybali-commits/coderco-custom-action@main
