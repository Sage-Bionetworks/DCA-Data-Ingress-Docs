---
layout: default
title: Uploading Data Using the Programmatic Interface (Python)
parent: Uploading Data
grand_parent: Step 1 - Upload Your Data to Synapse 
nav_order: 3
---

# Programmatic Upload (AWS CLI) for large data

The DCC will create buckets and allow centers access to use the AWS CLI to upload directly to buckets upon request. This would be especially useful if there is ~500GB or data or more and you want the fastest upload speeds. Object permissions and other flags are necessary to allow the files to be automatically synced onto Synapse.

#### Requirements:

- Send your [liaison](dcc-liaison) the IAM ARNs of the users who will require upload access to the buckets. ARNs look like this: `arn:aws:iam::123456789012:user/JohnDoe` (for additional information see: [IAM ARNs docs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns))
- When moving files to the bucket allow these two accounts full control: `id=d9df08ac799f2859d42a588b415111314cf66d0ffd072195f33b921db966b440,id=eab4436941f355ce866fcf7944db42020c385ad1f19df8a95704dc4d7552fa06` to grant the Sage bucket account and Synapse account access to objects. (see [examples](#examples) below)
- If your file is >25GB, we require a base64-encoded md5 as a metadata tag. (see [examples](#examples) below)
- Synapse project/folder you want associated with this data


### Examples:

**Using aws s3 cp**: 
``` bash
aws s3 cp --metadata content-md5=<md5> <file> s3://<bucket/<folder>/<file> --grants full=id=d9df08ac799f2859d42a588b415111314cf66d0ffd072195f33b921db966b440,id=eab4436941f355ce866fcf7944db42020c385ad1f19df8a95704dc4d7552fa06
```

**Using aws s3api put-object**: 
```bash
aws s3api put-object --bucket <bucket> --key <file> --body <file> --metadata content-md5=<md5> --grants full=id=d9df08ac799f2859d42a588b415111314cf66d0ffd072195f33b921db966b440,id=eab4436941f355ce866fcf7944db42020c385ad1f19df8a95704dc4d7552fa06
```

Once your data is in the bucket it will be automatically synced with your Synapse folder you have specified with the DCC within a few hours or days depending on the size of your data. Once it is present on Synapse, you can proceed to annotate your metadata etc. You can also upload to that folder using the `synapseclient` and it will put the files on the S3 bucket as well.