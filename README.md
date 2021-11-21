# Swift Vapor App Engine

This is a template to get vapor working on Google App Engine. 

Really all that's special is that it has a Dockerfile (included with vapor by default) and I added the app.yaml file with settings compatible with Vapor. 

The other hitch was that I had to extend the deployment timeout with the following command as the compilation otherwise takes longer than the App Engine allows.
`gcloud config set app/cloud_build_timeout 1800`

To deploy, with the google cloud SDK installed, configured, and your project/app selected, run `gcloud app deploy`
