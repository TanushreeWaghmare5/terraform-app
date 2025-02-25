Below is a sample README.md file for your Terraform project that deploys a custom Node.js application using Docker. You can adjust it as needed:

---

```markdown
# Terraform Custom Node.js App

This project uses Terraform with the Docker provider to build and deploy a custom Node.js application. The Node.js app is designed to be attractive and responsive (using Bootstrap) and exposes a `/metrics` endpoint for Prometheus monitoring. Terraform is used to build the Docker image and run the container locally.

## Project Structure

```
terraform-app/
├── app/
│   ├── app.js              # Node.js application code
│   ├── package.json        # Application dependencies and scripts
│   ├── Dockerfile          # Dockerfile to build the application image
│   └── public/
│       └── index.html      # Attractive, responsive homepage (Bootstrap-based)
├── main.tf                 # Terraform configuration (provider, image, container)
├── variables.tf            # Input variables (e.g., host port)
├── outputs.tf              # Terraform outputs (container ID, public port)
└── README.md               # Project documentation (this file)
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Docker](https://www.docker.com/get-started) installed and running locally
- Basic familiarity with Terraform and Docker

## How to Use

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/terraform-app.git
cd terraform-app
```

### 2. Initialize Terraform

Initialize the Terraform working directory to download the required providers:

```bash
terraform init
```

### 3. Review the Execution Plan

Preview the changes Terraform will make:

```bash
terraform plan
```

### 4. Apply the Configuration

Build the Docker image and create the container by applying the configuration:

```bash
terraform apply
```

Type `yes` when prompted to confirm.

### 5. Verify the Deployment

- Check that the container is running by using:
  
  ```bash
  docker ps
  ```
  
- Open your browser and navigate to [http://localhost:3000](http://localhost:3000) (or the host port you configured) to see the attractive Node.js app.
- Visit [http://localhost:3000/metrics](http://localhost:3000/metrics) to view Prometheus metrics.

### 6. Clean Up

When you are finished with the deployment, you can remove all resources with:

```bash
terraform destroy
```

## Customization

- **Application Code:**  
  Modify `app/app.js` and `app/public/index.html` to update the functionality and design of your Node.js app.
  
- **Host Port:**  
  Change the default host port by editing the `app_port` variable in `variables.tf` or by using a `terraform.tfvars` file.

- **Docker Image Build:**  
  Update the Dockerfile in the `app/` directory to include additional dependencies or configuration as needed.

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgments

- Built using [Terraform](https://www.terraform.io/) and the [Docker provider](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs).
- Application design uses [Bootstrap](https://getbootstrap.com/).
```

---

This README provides an overview of your project, prerequisites, instructions on how to run and verify the deployment, and guidelines for customization. Adjust the URLs and details to match your repository and personal project details.
