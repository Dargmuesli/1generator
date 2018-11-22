# Base image
FROM httpd:alpine

# Delete default page
RUN rm -rf /usr/local/apache2/htdocs/*

RUN sed -i \
    -e 's/DirectoryIndex index\.html/DirectoryIndex index.htm/' \
    ./conf/httpd.conf

# Create Apache directory and copy the files
COPY ./dist/ /usr/local/apache2/htdocs/
