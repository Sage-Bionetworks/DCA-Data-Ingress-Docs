---
layout: default
title: Detailed Generating Metadata Template Steps
parent: Step 2 - Request a Metadata Template
nav_order: 1
---

# Generating a Template to Curate a Dataset for the First Time

#### Pre-requisites
# - You are a [certified user on Synapse](https://help.synapse.org/docs/Synapse-User-Account-Types.2007072795.html)
- You are a [certified user on Synapse](https://help.synapse.org/docs/Synapse-User-Account-Types.2007072795.html)
- You have [transferred your dataset to the DCC](uploading-data)


## Step-by-Step
    
_In this how-to, we'll be using an example `scRNAseq` dataset named `scRNASeq Ischaemic Sensitivity of Human Tissue` located in a Synapse Project called `HTAN HCA immune cells census`._
    
1. Access the [Data Curator app](https://www.synapse.org/#!Wiki:syn20681266/ENTITY)
    - If you are prompted to login to Synapse, please use your Synapse account (or associated Google account).
  
2. In the app, go to the "**Select Your Dataset**" section in the left-hand menu. From that page, select your project from the dropdown. 
    - The project name corresponds to the bucket name (here `HTAN HCA immune cells census`).  

    ![dcc-onboarding-flow-project-selection](https://user-images.githubusercontent.com/12868382/86056211-f40e2700-ba11-11ea-8d31-cbd7fc60e95c.png)
    
3. Next, select your dataset, which corresponds to the folder name in your bucket (here `scRNASeq Ischaemic Sensitivity of Human Tissue`).

    ![dcc-onboarding-flow-select-folder](https://user-images.githubusercontent.com/12868382/86056396-3b94b300-ba12-11ea-89e9-1f6bfc9f50cd.png)

4. Then, select the metadata template you would like to use (here `scRNA-seq Level 1`). If you don't see the correct template for your dataset, you can select the "Minimal Metadata" template and [contact your DCC liaison](step-1).

    ![dcc-onboarding-flow-select-dataset](https://user-images.githubusercontent.com/12868382/86056447-523b0a00-ba12-11ea-8a97-3311dccaedb1.png)


5. Once you have selected your dataset and metadata template, navigate to the "*Get Metadata Template*" section in the left-hand menu. Select the "*Click to Generate Google Sheets Template*" button. 
    - This will generate a link to a Google spreadsheet containing an empty template for you to complete with metadata, for each of the files in your dataset. This can take awhile depending on how many files are in your folder, so please be patient!

    ![dcc-onboarding-flow-generate-template](https://user-images.githubusercontent.com/12868382/86057211-9aa6f780-ba13-11ea-9430-35a7f1e4c3e2.png)

 
6. Click on the generated link to open the template on the web. 

    ![dcc-onboarding-flow-link-to-template](https://user-images.githubusercontent.com/12868382/86057431-04bf9c80-ba14-11ea-936a-3203ab5bb893.png)

 

You can fill out the sheet on the web, using dropdowns with allowed values and other standard Google Sheet features.

[Next: Step 3 - Annotate and Submit Your Metadata](step-3){: .btn }