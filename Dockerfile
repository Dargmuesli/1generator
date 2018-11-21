# Base image
FROM httpd:alpine

# Delete default page
RUN rm /usr/local/apache2/htdocs/index.html

# Create Apache directory and copy the files
COPY ./dist/ /usr/local/apache2/htdocs/
