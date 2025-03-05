# Deploy S3WWW

This repository contains Helm charts and Terraform configurations to deploy the **s3www** application alongside **MinIO** as a dependency. It follows best practices for **reusability, scalability, and consistency** across different environments.

---

## 🚀 Helm Chart

- This **umbrella Helm chart** deploys the **s3www** application along with **MinIO**.
- An **init container** is included to copy necessary files into the MinIO bucket before the main application starts.
- Several configuration values can be parameterized for flexibility.

---

## 🏗️ Terraform

- A **common Terraform module** is used for both **development** and **production** environments.

- To deploy, navigate to the appropriate environment and run:

  ```sh
  terraform init
  terraform plan
  ```

  Example:

  ```sh
  cd terraform/environment/dev
  terraform init
  terraform plan
  ```

- **Passwords are auto-generated** and **not stored** anywhere. You can retrieve credentials using:

  ```sh
  terraform output -raw <user/password>
  ```

- **State files are environment-specific**, ensuring separation between `dev` and `prod` like Terraform workspaces.

---

## 🌟 Features

- **Auto-scaling support** via feature flag:
  
  ```yaml
    autoscaling: true
  ```
  
- **Optional Prometheus monitoring**:
  
  ```yaml
    serviceMonitor: true
  ```
  
- **Reusability & Consistency**:
  - The Helm chart and Terraform modules are designed for **reuse across environments**.
  - Ensures **consisten settings and configurations** in **dev and prod**.
  - Promotes **scalability** and **ease of maintenance**.

---
