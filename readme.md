# aws ec2 instance setup with cicd using github actions

### Create an Ubuntu Amazon EC2 instance (t2.micro) with an Elastic IP. You can do this by going to the EC2 dashboard in the AWS Management Console, clicking on "Launch Instance," selecting the Ubuntu image, and choosing the t2.micro instance type. Once the instance is launched, you can associate an Elastic IP to it by clicking on "Actions" and selecting "Associate IP address."

### Set up appropriate GitHub Action permissions, users, and roles. This would typically involve creating a new GitHub repository for your website, setting up the necessary permissions and access levels for the repository, and configuring the appropriate roles for users who will be working on the website.

### Secure the server using EC2 security groups. This can be done by creating a new security group in the EC2 dashboard, and configuring the inbound and outbound rules to only allow traffic from certain IPs and ports.

### Install Ruby 2.0, Ruby Gem, Jekyll, etc. on the server. You can do this by logging in to the Ubuntu instance via SSH and running commands such as "sudo apt-get update," "sudo apt-get install ruby," "sudo gem install jekyll," etc.

### Clone the Bootstrap Git repository using SSH endpoint (git@github.com:twbs/bootstrap.git). This can be done by logging in to the instance via SSH and running the command "git clone git@github.com:twbs/bootstrap.git" in the desired directory.

### Add the build step to execute the shell command Jekyll build in the root directory. This can be done by creating a new workflow in GitHub Actions, and adding a step that runs the command "jekyll build" in the root directory of the repository.

### The build step will create a new folder _gh_pages. This folder will contain the generated static website files.

### Drop a version.txt file in the _gh_pages which includes the GitHub Action job name and build number. This can be done by adding a step in the GitHub Actions workflow that creates the file and writes the job name and build number to it.

### Add a Post-build action to publish artifacts to an S3 Bucket using the S3 Plugin. This can be done by creating a new S3 bucket in the AWS Management Console, and configuring the appropriate settings for static website hosting. Then in the Github Actions workflow, you can use the S3 plugin to upload the content of the _gh_pages folder to your S3 bucket.

### Create an appropriate bucket policy. This can be done by going to the S3 bucket in the AWS Management Console, and creating a new bucket policy that allows public read access to the files in the bucket.

### Publish artifacts to the S3 Bucket should copy the content of the _gh_pages to your S3 bucket. This is done in the Github Actions workflow with the S3 plugin

### Run the build job and you should see a Bootstrap static website on your S3 bucket URL. Once the build job is complete, you can go to the URL of your S3 bucket to view the website.