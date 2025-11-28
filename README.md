# AWS 3-Tier Web Application Project

## Overview
This project demonstrates a 3-tier web application hosted on AWS using:
- **Web Tier:** EC2 + ALB
- **App Tier:** EC2 instances in private subnets
- **Database Tier:** RDS (MariaDB)

1️⃣ Presentation Layer (Web Tier)
 
Components: Web Server (in an Auto Scaling Group)
Subnet Type: Public (Pub-1a, Pub-1b)
Purpose:
Handles all incoming HTTP/HTTPS traffic from users. The web servers are deployed in a public subnet and can scale automatically using Auto Scaling Group (ASG).
 
2️⃣ Application Layer (App Tier)
 
Components: Application Servers
Subnet Type: Private (Pri_App_1, Pri_App_2)
Purpose:
Processes business logic and communicates with both the web tier and the database tier.
Traffic from the web tier is distributed through an Application Load Balancer (ALB).
 
 
3️⃣ Database Layer (DB Tier)
 
Components: Database Instance (database-2)
Subnet Type: Private (Pri_DB_1)
Purpose:
Stores persistent application data. The database is deployed in a private subnet for enhanced security, accessible only from the app tier.
 
🌐 Networking Details
 
Layer Subnet Availability Zone Type Components
 
Web Tier | Pub-1a | US-East-1a | Public Web Server (ASG)
Web Tier | Pub-1b | US-East-1b | Public Standby/Scaling Web Server
App Tier | Pri_App_1 | US-East-1a | Private App Server (via ALB)
App Tier | Pri_App_2 | US-East-1b | Private App Server
DB Tier  | Pri_DB_1  | Multi-AZ | Private Database Instance
 
🔒 Security Overview
 
Public Subnets: Accessible via Internet Gateway (for web traffic only).
Private Subnets: No direct internet access; communication only allowed within VPC.
Security Groups control inbound and outbound traffic between layers.
ALB provides load balancing and acts as the single entry point.
 
⚙️ Key AWS Services Used

VPC
Subnets (Public & Private)
EC2 (Web & App Servers)
Auto Scaling Group (ASG)
Application Load Balancer (ALB)
RDS / Database
Security Groups
Availability Zones (High Availability)
 
🚀 Benefits
 
✅ Highly Available
✅ Secure (Private Database & App tiers)
✅ Scalable using ASG
✅ Load Balanced Architecture
✅ Modular 3-tier design

## Architecture
![3tier](https://github.com/user-attachments/assets/012fa599-8dd0-49f7-96ff-14059792b42d)

Output
ALB-Link https://github.com/ugesh03/AWS_3-Tier_Web_Application/blob/main/Screenshot/ALB-link.png
Web public Ip Screenshot/WEB-3tier.png

