FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install -y httpd && \
    yum install -y wget

# Change directory
WORKDIR /var/www/html

# Download webfiles
RUN wget -O index.html https://raw.githubusercontent.com/chandanprajapati1/IBM/main/index.html

# Expose port 80 on the container
EXPOSE 80


# Default command to run when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]
