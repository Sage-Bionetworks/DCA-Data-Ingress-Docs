---
layout: default
title: Choose Your Cloud Storage Platform
parent: Step 1 - Upload Your Data 
nav_order: 2
---

# Choose Your Cloud Storage Platform

The DCC supports Amazon Web Service (AWS) S3 buckets as well as Google Cloud Storage (GCS) buckets. **We suggest using AWS S3 buckets** as there may be possible processing delays from moving internal data from the GCS bucket to the virtual machines on AWS. Your center may decide where to store datasets depending on existing contracts, dataset location, or other preferences. The DCC will pay for data ingress and data hosting costs.

If you do not already have an account, [please register for a Synapse account](https://www.synapse.org/#!RegisterAccount:0) using your institutional email address.  

[Create a Synapse Account](https://www.synapse.org/#!RegisterAccount:0){: .btn .btn-purple }

Once you create your Synapse account, please make sure to [certify it](https://help.synapse.org/docs/Synapse-User-Account-Types.2007072795.html), in order to have upload access to Synapse. The certification process is short and ensures you are informed about basic Synapse data-use requirements.

Next, please provide your Synapse username and indicate your cloud platform preference to your [DCC liaison](dcc-liaison). You can indicate a cloud platform of your choice, however the DCC recommends the following options:

- if your center's data is already stored on premises/local machines, select AWS as your storage option
- if your center's data is already stored on AWS, select AWS as your storage option and also provide your AWS storage region
- if your center's data is already stored on Google Cloud, select Google Cloud as your storage option

**Once you determine your dataset storage platform and provide Synapse username(s), your DCC liaison will boot-up the required cloud infrastructure and authorize you to transfer data into a private storage location.**
