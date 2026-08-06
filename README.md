# 🎬 Netflix Clone - DevSecOps Project

A cloud-native **Netflix Clone** deployed on **Amazon EKS** using a complete **DevSecOps CI/CD pipeline**. The application fetches live movie data from the **TMDB API** and is automatically deployed to Kubernetes using **Argo CD (GitOps)**. The project also integrates **SonarQube** and **Trivy** for security scanning, **Prometheus** & **Grafana** for monitoring, and **email notifications** for pipeline status.

---

### 📌 Project Architecture

> **Add your architecture image here**

```markdown
![Architecture](images/architecture.png)
```

---

### 🚀 Project Workflow

```text
GitHub
   │
   ▼
Jenkins Pipeline
   │
   ├── Git Clone
   ├── SonarQube Analysis
   ├── Quality Gate
   ├── Trivy File System Scan
   ├── Docker Build
   ├── Trivy Image Scan
   ├── Push Image to AWS ECR
   ├── Update Kubernetes Manifest
   ├── Push Manifest to GitHub
   └── Email Notification
            │
            ▼
         Argo CD
            │
            ▼
      Amazon EKS Cluster
            │
            ▼
       Netflix Clone
            │
            ▼
      Live Movie Data
         (TMDB API)

Monitoring

Prometheus → Grafana
```

---

### 🛠️ Tech Stack

**GitHub, Jenkins, SonarQube, Trivy, Docker, AWS ECR, EC2, EKS, Helm, Argo CD, Prometheus and Grafana**

# ⚙️ Prerequisites

- AWS Account
- Ubuntu EC2 Instance
- Docker
- Jenkins
- AWS CLI
- kubectl
- Helm
- SonarQube
- Trivy
- Docker Hub Account
- TMDB API Key
- GitHub Account

---

# 🚀 Phase 1 - Jenkins Setup

- Install Jenkins
- Install required plugins
- Configure Jenkins Tools
- Configure Credentials
- Configure SonarQube
- Configure Docker
- Configure SMTP Email

### Required Credentials

- GitHub Token
- Docker Hub Credentials
- SonarQube Token
- AWS Access Key
- AWS Secret Key
- SMTP App Password

---

# 🚀 Phase 2 - SonarQube & Docker

Run SonarQube

```bash
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
```

Create a TMDB account and generate an API key.

Build Docker Image

```bash
docker build --build-arg TMDB_V3_API_KEY=<API_KEY> -t netflix .
```

Run the Application

```bash
docker run -d --name netflix -p 8081:80 netflix
```

---

# 🚀 Phase 3 - Jenkins Pipeline

Pipeline Stages

- Git Clone
- Install Dependencies
- SonarQube Scan
- Quality Gate
- Trivy File Scan
- Docker Build
- Trivy Image Scan
- Docker Hub Login
- Push Image
- Update Kubernetes Manifest
- Push Manifest to GitHub
- Email Notification

---

# 🚀 Phase 4 - Monitoring

Install

- Prometheus
- Grafana
- Node Exporter

Monitor

- Node Metrics
- CPU Usage
- Memory Usage
- Disk Usage
- Pod Metrics

---

# 🚀 Phase 5 - Amazon EKS

- Create Cluster
- Create Node Group
- Update kubeconfig
- Verify Worker Nodes
- Deploy Application

---

# 🚀 Phase 6 - Argo CD

- Install Argo CD
- Expose Argo CD Server
- Connect GitHub Repository
- Create Application
- Sync Application
- Verify Deployment

---

# 📊 Monitoring Stack

- Prometheus
- Grafana
- Node Exporter

Monitor

- Kubernetes Cluster
- EC2 Metrics
- Application Pods
- Resource Utilization

---

# 📸 Project Screenshots

## Architecture

> Add image

---

## Jenkins Pipeline

> Add image

---

## SonarQube Dashboard

> Add image

---

## Trivy Scan

> Add image

---

## Docker Hub Repository

> Add image

---

## Argo CD

> Add image

---

## Kubernetes Pods

```bash
kubectl get pods
```

> Add screenshot

---

## Kubernetes Nodes

```bash
kubectl get nodes
```

> Add screenshot

---

## Prometheus

> Add screenshot

---

## Grafana Dashboard

> Add screenshot

---

## Netflix Clone

> Add screenshot

---

# 📈 CI/CD Pipeline Summary

```
Developer
    │
    ▼
GitHub
    │
    ▼
Jenkins
    │
    ├── SonarQube Scan
    ├── Trivy Scan
    ├── Docker Build
    ├── Push Docker Image
    ├── Update Manifest
    ├── Push Manifest
    └── Email Notification
            │
            ▼
         Argo CD
            │
            ▼
      Amazon EKS
            │
            ▼
      Netflix Clone
```

---

# 📚 What I Learned

- CI/CD Pipeline Design
- Docker Image Management
- Amazon EKS Deployment
- Kubernetes Workloads
- Helm Package Management
- GitOps using Argo CD
- DevSecOps using SonarQube & Trivy
- Infrastructure Monitoring
- Jenkins Pipeline Automation
- SMTP Email Integration

---

# 👨‍💻 Author

**Viresh Dhuri**

- GitHub: https://github.com/VireshDhuri01
- LinkedIn: *Add your LinkedIn profile*

---

⭐ If you found this project useful, don't forget to star the repository.
