FROM python:2.7
MAINTAINER David Kruger <david@viavisolutions.com>

# Install dependencies so they get cached with the image
RUN pip install --no-cache-dir conan
RUN mkdir /var/lib/conan

# Run uwsgi listening on port 8080
EXPOSE 9300
ENV HOME /var/lib/conan
CMD ["/usr/local/bin/conan_server"]
