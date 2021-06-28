# Udacity Project 1 - Deploy Static Website on AWS

Website S3 URL: http://gustavo-484236353667-bucket.s3-website-us-east-1.amazonaws.com
CloudFront URL: d2aw0nceugzfq.cloudfront.net

## Project Overview
The cloud is perfect for hosting static websites that only include HTML, CSS, and JavaScript files that require no server-side processing. The whole project has two major intentions to implement:

- Hosting a static website on S3 and
- Accessing the cached website pages using CloudFront content delivery network (CDN) service. Recall that CloudFront offers low latency and high transfer speeds during website rendering.


> _Note that Static website hosting essentially requires a public bucket, whereas the CloudFront can work with public and private buckets._

In this project, you will deploy a static website to AWS by performing the following steps:

1. You will create a public S3 bucket and upload the website files to your bucket.
2. You will configure the bucket for website hosting and secure it using IAM policies.
3. You will speed up content delivery using AWS’s content distribution network service, CloudFront.
4. You will access your website in a browser using the unique CloudFront endpoint.

### Prerequisites:
- AWS Account
- Student-ready starter code - Download and unzip this file.

### Topics Covered:
- S3 bucket creation
- S3 bucket configuration
- Website distribution via CloudFront
- Access website via web browser

### Dependencies
##### Cloud Services
- Amazon Web Services S3 - Resource hosting and deployments
- AWS CloudFront - CDN for SPA
- AWS EKS - Backend API
- AWS DynamoDB - Persistent Datastore
- AWS Cognito - User Authentication

##### Performance Tracking and DevOps Tools:
- AWS CloudWatch - Performance and Health checks
- Sentry - Bug Reporting
  - Alternates:
  - TBD
Google Analytics - Usage Reporting
  - Alternates:
  - Mixpanel
Travis (CI/CD)

##### Frameworks:
- Ionic (Javascript) (Frontend)
- Node.js (Javascript) (Backend)

<br><br><br>
# Project Submission
The cloud is perfect for hosting static websites that only include HTML, CSS, and JavaScript files that require no server-side processing. In this project, you will deploy a static website to AWS.

First, you will create an S3 bucket, configure the bucket for website hosting, and secure it using IAM policies.

Next, you will upload the website files to your bucket and speed up content delivery using AWS’s content distribution network service, CloudFront.

Lastly, you will access your website in a browser using the unique S3 endpoint.

You should take a screenshot the results of each of your steps and submit the screenshots in a zipped folder when you are done.

The zipped folder should contain a README.txt file which includes your website's URL and any other relevant info you'd like to send to the review team. You can see an example submission here

Your project should meet all of the specifications in the Project Rubric.