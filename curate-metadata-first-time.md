---
layout: default
title: Detailed Generating Metadata Template Steps
parent: Step 2 - Request a Metadata Template
nav_order: 1
---

# Generating a Template to Curate a Dataset for the First Time

#### Pre-requisites
- You are a [certified user on Synapse](https://docs.synapse.org/articles/accounts_certified_users_and_profile_validation.html#certified-users)
- You have [transferred your dataset to the DCC](uploading-data)


## Step-by-Step
    
_In this how-to, we'll be using an example `Assay: Bulk RNA-seq` dataset named `CohortN - DatasetX` located in a Synapse Project called `CenterA`._
    
1. Access the [Data Curator app](https://www.synapse.org/#!Wiki:syn20681266/ENTITY)
    - If you are prompted to login to Synapse, please use your Synapse account (or associated Google account).
  
2. In the app, go to the "**Select Your Dataset**" section in the left-hand menu. From that page, select your project from the dropdown. 
    - The project name corresponds to the bucket name (here `CenterA`).  

    [![Data Curator Select Project](images/screenshots/curator-select-none.png){: .screenshot}](images/screenshots/curator-select-none.png)
    
3. Next, select your dataset, which corresponds to the folder name in your bucket (here `CohortN - DatasetX`).

    [![Data Curator Select Folder](images/screenshots/curator-select-dataset.png){: .screenshot}](images/screenshots/curator-select-dataset.png)

4. Then, select the metadata template you would like to use (here `Assay: Bulk RNA-seq`). If you don't see the correct template for your dataset, you can select the "Minimal Metadata" template and [contact your DCC liaison](step-1).

    [![Data Curator Select Data Type](images/screenshots/curator-select-type-2.png){: .screenshot}](images/screenshots/curator-select-type-2.png)


5. Once you have selected your dataset and metadata template, navigate to the "*Get Metadata Template*" section in the left-hand menu. Select the "*Click to Generate Google Sheets Template*" button. 
    - This will generate a link to a Google spreadsheet containing an empty template for you to complete with metadata, for each of the files in your dataset. This can take awhile depending on how many files are in your folder, so please be patient!

    [![Data Curator Google Sheets Link Button](images/screenshots/curator-link-before.png){: .screenshot}](images/screenshots/curator-link-before.png)

    [![Data Curator Google Sheets Link Generation](images/screenshots/curator-link-during.png){: .screenshot}](images/screenshots/curator-link-during.png)
 
6. Click on the generated link to open the template on the web. 

    [![Data Curator Google Sheets Link Generated](images/screenshots/curator-link-after-1.png){: .screenshot}](images/screenshots/curator-link-after-1.png)

You can fill out the sheet on the web, using dropdowns with allowed values and other standard Google Sheet features.

[Next: Step 3 - Annotate and Submit Your Metadata](step-3){: .btn }