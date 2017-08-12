# rpi-google-cloud-dns-dynamic

Adds a managed dns zone and A record containing your public ip addresses

## Usage

Create a service key from a service account or use the default for the project:
```
gcloud iam service-accounts keys create google-application-credentials.json --iam-account $(gcloud iam service-accounts list --filter=email~"developer.gserviceaccount.com" --format='value(email)')
```

```
docker run -it \
-e PROJECT_ID=kubernetes-rocks \
-e DNS_ZONE_NAME=kubernetes-rocks \
-e DNS_NAME=pi.kubernetes.rocks. \
-e GOOGLE_APPLICATION_CREDENTIALS=/google-application-credentials.json \
-v $(pwd)/google-application-credentials.json:/google-application-credentials.json \
jonaseck/rpi-google-cloud-dns-dynamic
```
