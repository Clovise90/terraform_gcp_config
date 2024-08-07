#Initialize the gcloud CLI by running:

gcloud init

#Follow the prompts to configure your project and set up authentication

/*Configuring Terraform in GCP Environment 
To enable terraform in GCP environments
Step1: Need acc and enable APIs
	- GCP Account 
	- Connect to the project 
	- check on quick access to connect to APIs and services
	- Enable Cloud DNS API 
	- Enable  Compute Engine API
	- Enable IAM API
Step2: Create sa and key
	- Create a service account for terraform for authentication (from IAM TAP)
	- Role(basic - owner)
	- After the sa acc is created click on keys and create new key(json) and save locally 
Step3: Install Terraform
	- Go to HCP and follow the process of the used os to download (386) 
	- Extract the extension
	- Cut it from download and go to c drive and past
	- Click on the address bar and copy the path 
	- Go to environment variable and click on edit
	- Click on environment variables
	- Select the path and click edit 
	- Make a new entry for the new path
	- Add the path and add a back slash and click on ok
	- Now terraform is installed 
Step4: How to check if installed
	- Either used PowerShell or cmd too to check 
	- Open windows PowerShell and type terraform --version
	- If show the version, means terraform is installed 
	- Now its ready to be used to configure gcp cloud resources 
Step5: Setup project 
	- Go to the console and create a project if one does not exist 
	*/
#Check the version of gcloud to ensure it’s installed correctly

gcloud version

#list your projects

gcloud projects list

/*#GCP configured file
Created a default .boto configuration file at [/home/cloviselehdogha/.boto]. See this file and
[https://cloud.google.com/storage/docs/gsutil/commands/config] for more
information about configuring Google Cloud Storage.
Your Google Cloud SDK is configured and ready to use!
*/
#Configure the gcloud CLI to use your project
##downloading Terraform for Windows in GCP Cloud:

wget "https://releases.hashicorp.com/terraform/1.9.3/terraform_1.9.3_windows_amd64.zip"

##Run for Linux in GCP 
wget https://releases.hashicorp.com/terraform/1.9.3/terraform_1.9.3_linux_amd64.zip


 /*make sure the
Compute Engine API is enabled for your project on the
https://console.developers.google.com/apis page
*/
#Enable the required APIs:

gcloud services enable compute.googleapis.com

#Create a Terraform Configuration File in Cloud Shell, create a new directory for your Terraform configuration:

mkdir terraform-config
cd terraform-config

#Create a new file named main.tf:

nano main.tf

#Add your Terraform configuration to this file. For example, to create a simple Google Cloud Storage bucket:

provider "google" {
  project = "cannahcloudsolutions"
  region  = "us-central1"
}

resource "google_storage_bucket" "example_bucket" {
  name     = "clovise-bucket24"
  location = "US"
}

#Initialize Terraform:

terraform init

# Apply configuration to create 

terraform apply

#Navigate to Your Terraform Configuration Directory to distory eg

cd terraform-config

#Run the Destroy Command to distory all resources at the directory eg:

terraform destroy

#destroy specific resources eg

terraform destroy -target=google_storage_bucket.example_bucket
















