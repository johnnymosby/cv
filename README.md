# cv
## Disclaimer
This stage of the project serves as homework for IDS 721, a course at Duke University called "Data Analysis at Scale in Cloud". So, the current state is somewhat a midpoint between the requirements of the course and the version I foresee (e.g. +nginx, better design, contact form).

## Description
The project is a personal website built with React, Babel, and Webpack. The Webpack file is uploaded to Amazon S3 by GitHub Actions, effectively updating the website's content on push.

## Process (high level)
Initialise React app (I used this [blog post](https://www.robinwieruch.de/javascript-project-setup-tutorial/)).
Add Dockerfile, which builds the Webpack javascript file, which is then copied to its directory by the host. This way, you can reliably automate the building process with the help of GitHub Actions.
Set up an S3 bucket (the assumption is that you already have a domain to connect the bucket to).
Create a user for GitHub Actions with permission to change the file in the S3 bucket. The access keys are to be provided in GitHub secrets.
Create the GitHub workflow, which uploads the file to the S3 bucket.
