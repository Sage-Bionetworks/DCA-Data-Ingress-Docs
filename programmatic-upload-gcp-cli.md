---
layout: default
title: Uploading Data Using the gsutil CLI to Google Cloud Storage 
parent: Uploading Data
grand_parent: Step 1 - Upload Your Data 
nav_order: 2
---

# Uploading Data to Google Cloud Storage Using gsutil CLI (recommended for large data) 
Upon request, the DCC will create Google Storage buckets for centers to upload directly to buckets using the `gsutil` CLI.

#### Requirements
- Send your [liaison](dcc-liaison) the email addresses of users who will require upload access to the bucket.
- The email addresses required for Google bucket access must be Gmail/G suite emails

**(IMPORTANT)** When uploading data:
- Top level folder names may NOT begin with a number
- Note: Only files uploaded to [top level folders](organize-your-data-upload) will automatically be synced to Synapse (i.e. files at the root level will not be synced)

![bucket_sync_diagram](https://user-images.githubusercontent.com/63608514/93384723-1433d200-f81a-11ea-9370-99866c5d00cb.jpeg)

### Example Commands: 

**Using gsutil cp**:

`gsutil cp <file> gs://MyBucket/MyFolder/`

**Using gsutil rsync**:

`gsutil rsync -r dir gs://MyBucket/MyFolder/dir`

For large files, parallel composite uploads may be enabled for faster upload speeds. Please note that if this is done, you must provide a base-64 encoded MD5 as a metadata tag `content-md5` for each file upon upload (see example below). In addition, users who download files uploaded as [composite objects](https://cloud.google.com/storage/docs/composite-objects) must have a compiled crcmod installed.

`gsutil -h x-goog-meta-content-md5:<md5> cp <file> gs://<MyBucket>/<MyFolder>/`

Once your data is in the bucket, it will automatically be synced with your center’s Synapse project. This process can take anywhere from a few minutes to up to a day depending on the size of your data. Once it is present on Synapse, you can proceed to annotate your metadata.

**Note**: If you would like to make changes to your data, please do so directly from the Google Storage Bucket and not from the Synapse web or programmatic clients. Changes made to the bucket will automatically be updated on the Synapse project. 
