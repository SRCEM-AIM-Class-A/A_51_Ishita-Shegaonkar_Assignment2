# **StudentProject**  
A multi-app Django project with static views/templates, containerized using Docker, and automated deployment via Jenkins.

## **Project Overview**  
This project contains multiple Django apps with static views/templates. It is designed for containerized deployment using **Docker**, with a **CI/CD pipeline** set up using **Jenkins**.

## **Technologies Used**  
- **Django** (Backend framework)  
- **Docker** (Containerization)  
- **Jenkins** (CI/CD automation)  

## **Setup & Running the Project**  

### **1. Clone the Repository**  
```sh
git clone https://github.com/SRCEM-AIM-Class-A/A_51_Ishita-Shegaonkar_Assignment2.git
cd StudentProject
```

### **2. Run the Project Using Docker**  
#### **Option 1: Build and Run Locally**  
Ensure **Docker** is installed and running. Then, execute:  
```sh
docker build -t studentproject .
docker run -p 8000:8000 studentproject
```
Visit **http://localhost:8000** in your browser.

#### **Option 2: Pull from Docker Hub**  
You can directly pull the pre-built image from Docker Hub and run it:  
```sh
docker pull ishita1455/studentproject:latest
docker run -p 8000:8000 ishita1455/studentproject
```
📌 **Docker Hub Image:** [ishita1455/studentproject](https://hub.docker.com/r/ishita1455/studentproject)

### **3. Automate with Jenkins**  
- Install **Jenkins** and the **Docker Pipeline** plugin.  
- Set up a **Pipeline Job** in Jenkins.  
- Add the **Jenkinsfile** from this repo.  
- Trigger the **Build Pipeline** to automate deployment.

### **Conclusion**
This project demonstrates how to build and deploy a multi-app Django project using Docker and Jenkins for seamless automation. By containerizing the application and setting up a CI/CD pipeline, we ensure a reliable, scalable, and efficient deployment process.
