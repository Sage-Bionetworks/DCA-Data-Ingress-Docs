---
layout: default
title: Uploading Data Using AWS CLI for Large Data
parent: Uploading Data
grand_parent: Step 1 - Upload Your Data to Synapse 
nav_order: 3
---

# Programmatic Upload (AWS CLI) for large data

The DCC will create buckets and allow centers access to use the AWS CLI to upload directly to buckets upon request. This approach is especially useful if there is ~500GB of data or more and you would like the fastest upload speeds. Object permissions and other flags are necessary to allow the files to be automatically synced onto Synapse.

#### Requirements (before transferring data):

- Send your [liaison](dcc-liaison) the [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns) of the users who will require upload access to the buckets. ARNs look like this: `arn:aws:iam::123456789012:user/JohnDoe` (for additional information see: [IAM ARNs docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns))

**(IMPORTANT)** When uploading data:
- When moving files to the bucket, allow the bucket owner full control of the object by including the `--acl bucket-owner-full control` flag (see [examples](#examples) below)
- If your file is **>25GB**, we **require** a base64-encoded md5 as a metadata tag `content-md5` (see [examples](#examples) below)
     - The base64-encoded md5 of a file can be obtained using the command 
`openssl md5 -binary PATH/TO/FILE | base64`
     - Providing an md5 for files <25GB is also encouraged. This will decrease the time needed to sync the file to Synapse
- Top-level folder names may NOT begin with a number
- Note: Only files uploaded to root (top level) folders will automatically be synced to Synapse (i.e. files at the root level will not be synced)

![bucket_sync_diagram](https://user-images.githubusercontent.com/63608514/93384855-375e8180-f81a-11ea-91d7-400bb7ffa8a8.jpeg)


### Examples:

**Using aws s3 cp**: 
``` bash
aws s3 cp \
<filepath> \
s3://<bucket>/<folder>/<filename> \
--acl bucket-owner-full-control \ 
--metadata content-md5=<md5>
```

**Using aws s3api put-object**: (_Note: `put-object` does not use multipart upload. Expect slower upload speeds if used_)
```bash
aws s3api put-object \ 
--bucket <bucket> \
--key <folder>/<filename> \
--body <filepath> \
--acl bucket-owner-full-control 
```

Once your data is in the bucket, it will be automatically synced with your center's Synapse project. This process can take anywhere from a few minutes to up to a day depending on the size of your data. Once it is present on Synapse, you can proceed to annotate your metadata, etc. 

**Note**: If you would like to make changes to your data, please do so directly from the S3 bucket and not from the Synapse web or programmatic clients. Changes made to the bucket will automatically be updated on the Synapse project. 

[Next: Step 2- Request a Metadata Template](step-2){: .btn }
