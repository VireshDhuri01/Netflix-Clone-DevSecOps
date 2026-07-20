# 🎬 Netflix Clone - DevSecOps Project
Developed and deployed a Netflix Clone application on AWS EKS using a complete DevOps CI/CD pipeline. The application fetches real-time movie data from the TMDB API and is containerized using Docker. Jenkins automates the build and deployment workflow by cloning the source code, performing code and security scans, building the Docker image, and pushing it to Docker Hub. The application is deployed on an Amazon EKS cluster with managed node groups, while Argo CD implements GitOps for continuous synchronization between the GitHub repository and the Kubernetes cluster. Helm is used to simplify Kubernetes application deployment and management, providing a scalable and automated cloud-native deployment solution.

---

# 📌 Project Architecture

```
GitHub
   │
   ▼
Jenkins Pipeline
   │
   ├── Git Clone
   ├── SonarQube Scan
   ├── Trivy File Scan
   ├── Docker Build
   ├── Trivy Image Scan
   ├── Push Image to Docker Hub

     
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
Live Movie Data (TMDB API)

Monitoring:
Prometheus + Grafana
```

---

# 🚀 Technologies Used

- Git & GitHub
- Jenkins
- Docker
- Docker Hub
- AWS EC2
- Amazon EKS
- Kubernetes
- Helm
- Argo CD
- SonarQube
- Trivy
- Prometheus
- Grafana
- TMDB API https://www.themoviedb.org/

---

# 📖 Project Flow

1. Clone project on EC2
2. Setup all Needful Installations
3. Build Jenkins Pipeline
4. Create EKS Cluster & Node Group
5. Deploy Application to Kubernetes
6. Configure Argo CD & Enable GitOps Deployment
7. Setup Prometheus & Grafana
8. Monitor Application

---

# ⚙️ Basic Installations

## Jenkins

## Docker

### Add Docker & Jenkins User

```bash
sudo usermod -aG docker ubuntu
sudo usermod -aG docker jenkins

sudo systemctl restart docker
sudo systemctl restart jenkins
```

---

## AWS CLI

## Kubectl

## Helm

## Trivy

# 🔐 Security Groups

Allow:

- 22 (SSH)
- 80 (HTTP)
- 8080 (Jenkins)
- 9000 (SonarQube)
- 3000 (Grafana)
- 9090 (Prometheus)
- 443 (EKS API)
- NodePort Range (30007) - Check service.yml

---

# 🚀 Phase 1 - Jenkins Configuration

## Install Plugins

- Docker plugins
- Pipeline stageview
- SonarQube
- Nodejs
- prometheus
- Eclipse Termium Installer

---


## Configure Credentials

Add

- Docker Hub Username/Password
- SonarQube Token

---

## Configure Tools

- Docker
- SonarQube Scanner
- jdk - 21.0.8
- nodejs - 16.2.0

---

## Configure SonarQube

Generate Token

```
Administration
→ Security
→ Users
→ Generate Token
```

Store token inside Jenkins Credentials.

---

# 🚀 Phase 2 - Docker & Sonar

Run SonarQube

```bash

```
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
---

Create TMDB Account

https://www.themoviedb.org/

Generate API Key.

---

Build Docker Image

```bash
docker build --build-arg TMDB_V3_API_KEY=<your-api-key> -t netflix .
```

Run Container and Check

```bash
docker run -d --name netflix -p 8081:80 netflix
```

Verify application.

---

# 🚀 Phase 3 - Jenkins Pipeline

Pipeline stages

- Git Checkout
- SonarQube Scan
- Quality Gate
- Trivy File Scan
- Docker Build
- Docker Image Scan
- Docker Hub Login
- Push Docker Image

---

# 🚀 Phase 4 - Monitoring

Install

- Prometheus
- Grafana

Verify metrics.

```bash
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'node_exporter'
    static_configs:
      - targets: ['localhost:9100']

  - job_name: 'jenkins'
    metrics_path: '/prometheus'
    static_configs:
      - targets: ['<your-jenkins-ip>:<your-jenkins-port>']
```

---

# 🚀 Phase 5 - Amazon EKS

Create

- Cluster
- Node Group

Attach same Security Group used by EC2.

Update kubeconfig

```bash
aws configure

aws sts get-caller-identity

aws eks update-kubeconfig --region us-east-1 --name <cluster-name>

kubectl config current-context
```

Verify

```bash
kubectl get nodes
```

Allow Port

```
443
```

in Cluster Security Group.

---

# 🚀 Phase 6 - Argo CD

Install Argo CD

Connect GitHub Repository.

Create Application.

Sync.

---

# 📊 Prometheus Node Exporter

Add Repository

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

Create Namespace

```bash
kubectl create namespace prometheus-node-exporter
```

Install

```bash
helm install prometheus-node-exporter prometheus-community/prometheus-node-exporter --namespace prometheus-node-exporter
```

Allow Port

```
30007
```

in Cluster Security Group.

---

# 📈 Monitoring Stack

- Prometheus
- Grafana
- Node Exporter

---

# ✅ Features

- CI/CD Pipeline
- DevSecOps
- Dockerized Application
- Kubernetes Deployment
- GitOps using Argo CD
- Monitoring with Prometheus & Grafana
- SonarQube Code Analysis
- Trivy Security Scanning
- Live TMDB API Integration

---

# 👨‍💻 Author

**Viresh Dhuri**
