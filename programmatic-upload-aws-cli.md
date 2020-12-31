---
layout: default
title: Uploading Data Using the AWS CLI  
parent: Uploading Data
grand_parent: Step 1 - Upload Your Data 
nav_order: 1
nav_exclude: ! site.toggles.custom_cloud_storage
---

# Uploading Data Using the AWS CLI (recommended for large data)

The DCC will create buckets for centers to use the AWS CLI to upload directly to buckets Below are requirements and necessary instructions such as object permissions and other flags for files to be automatically synced onto Synapse.

#### Requirements (before transferring data):

- Send your [liaison](dcc-liaison) the [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns) of the users who will require upload access to the buckets. ARNs look like this: `arn:aws:iam::123456789012:user/JohnDoe` (for additional information see: [IAM ARNs docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns))

**(IMPORTANT)** When uploading data:
- When moving files to the bucket, allow the bucket owner full control of the object by including the `--acl bucket-owner-full control` flag (see [examples](#examples) below)
- If your file is **>25GB**, we **require** a base64-encoded md5 as a metadata tag `content-md5` (see [examples](#examples) below)
     - The base64-encoded md5 of a file can be obtained using the command 
`openssl md5 -binary PATH/TO/FILE | base64`
     - Providing an md5 for files <25GB is also encouraged. This will decrease the time needed to sync the file to Synapse
- Top level folder names may NOT begin with a number
Note: Only files uploaded to [top level folders](organize-your-data-upload) will automatically be synced to Synapse (i.e. files at the root level will not be synced)

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

**Shell script using aws s3 cp command**:
The example shell script below copies all files in a local directory to a specified folder in an S3 bucket with the required flags. It can be modified for more complex folder structures.
```bash
#!/bin/bash
FILES='path/to/dir/*'
DESTINATION='MyAWSBucket/MyFolder'
for file in $FILES
do
     FILENAME=$(basename $file)
     BASE64=$(openssl md5 -binary $file | base64)
     aws s3 cp $file s3://$DESTINATION/$FILENAME --acl bucket-owner-full-control --metadata content-md5=$BASE64
done
```

Once your data is in the bucket, it will automatically be synced with your center’s Synapse project. This process can take anywhere from a few minutes to up to a day depending on the size of your data. Once it is present on Synapse, you can proceed to annotate your metadata.

**Note**: If you would like to make changes to your data, please do so directly from the S3 bucket and not from the Synapse web or programmatic clients. Changes made to the bucket will automatically be updated on the Synapse project. 
