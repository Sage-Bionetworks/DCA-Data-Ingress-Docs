---
layout: default
title: Uploading Data
parent: Step 1 - Upload Your Data 
nav_order: 4
has_children: true
---

# Uploading Data

## Uploading Large Data

The DCC will create buckets in AWS or Google Cloud Storage for you once you have let your DCC liaison know which storage platform you would like to use. The DCC will allow centers to upload directly to these buckets. This approach is especially useful if there is 500GB+ of data and you would like the fastest upload speeds. Object permissions and other flags are necessary to allow the files to be automatically synced onto Synapse. For additional information, please read the Intro to Cloud Buckets article and reach out to your DCC liaison. 

## [Choosing a Cloud Platform](choose-your-cloud-storage-platform)

We suggest AWS S3 but also support GCS buckets as well, however there may be possible processing delays from moving internal data from the GCS bucket to the virtual machines on AWS. 

## Data Transfer Methods

If you are uploading 500GB or more, the DCC recommends using the AWS or gsutil command-line tools. If you prefer to use Synapse (either web-based or programmatic data upload interfaces), please contact your liaison. 

Some of the more typical options are described in the following sections. Each option is  linked to relevant documentation for additional details and has representative use cases.

## [Programmatic Upload to AWS S3 Using AWS CLI](programmatic-upload-aws-cli)

Upon request, the DCC will create AWS S3 buckets for centers to upload directly to buckets using the AWS CLI.

#### REQUIREMENTS (BEFORE TRANSFERRING DATA):

- Send your liaison the [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns) of the users who will require upload access to the buckets. ARNs look like this: `arn:aws:iam::123456789012:user/JohnDoe` (for additional information see: [IAM ARNs docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns))


### Choosing AWS S3 Bucket Storage:

- if your center's data is already stored on premises/local machines, select AWS as your storage option
- if your center's data is already stored on AWS, select AWS as your storage option and also provide your AWS storage region


## [Programmatic Upload to GCS Using gsutil CLI](programmatic-upload-gcp-cli)

Upon request, the DCC will create Google Storage buckets for centers upload directly to buckets using the gsutil CLI.

#### REQUIREMENTS

- Send your liaison the Google mail addresses of users who will require upload access to the bucket.

Choosing Google Cloud Storage:
- if your center's data is already stored on Google Cloud, select Google Cloud as your storage option
 
