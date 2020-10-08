---
layout: default
title: Uploading Data to Google Cloud Storage Using gsutil CLI
parent: Uploading Data
grand_parent: Step 1 - Upload Your Data to Synapse 
nav_order: 4
---

# Uploading Data to Google Cloud Storage Using gsutil CLI
The DCC will create buckets and allow centers access to use the `gsutil` CLI to upload directly to buckets upon request. This approach is especially useful if there is ~500GB of data or more and you would like the fastest upload speeds.
For large files, parallel composite uploads may be enabled for faster upload speeds. If this is done, users who download files uploaded as [composite objects](https://cloud.google.com/storage/docs/composite-objects) must have a compiled crcmod installed.

#### Requirements
- Send your [liaison](dcc-liaison) the email addresses of users who will require upload access to the bucket.
- The email addresses required for Google bucket access must be Gmail/G suite emails

## When Uploading Data:
- Top level folder names may NOT begin with a number
- Note: Only files uploaded to top level folders will automatically be synced to Synapse (i.e. files at the root level will not be synced)

![bucket_sync_diagram](https://user-images.githubusercontent.com/63608514/93384723-1433d200-f81a-11ea-9370-99866c5d00cb.jpeg)

### Example Commands: 

**Using gsutil cp**:

`gsutil cp <file> gs://MyBucket/MyFolder/`

**Using gsutil rsync**:

`gsutil rsync -r dir gs://MyBucket/MyFolder/dir`

Once your data is in the bucket, it will automatically be synced with your center's Synapse project within a few minutes or up to a day depending on the size of your data. Once it is present on Synapse, you can proceed to annotate your metadata, etc. 

**Note**: If you would like to make changes to your data, please do so directly from the Google Storage Bucket and not from the Synapse web or programmatic clients. Changes made to the bucket will automatically be updated on the Synapse project. 


[Next: Step 2- Request a Metadata Template](step-2){: .btn }