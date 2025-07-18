FROM ubuntu
WORKDIR /home/services
COPY smile /home/services
RUN apt-get update
RUN apt-get install -y npm
# Expose the required port
EXPOSE 80

# Start the application
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "80"]

