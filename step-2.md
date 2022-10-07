---
layout: default
title: Step 2 - Request a Metadata Template
nav_order: 3
has_children: true
---

# Step 2 - Request a Metadata Template Overview

At present, the DCC supports a web-based metadata upload via the [Data Curator web app](https://www.synapse.org/#!Wiki:syn20681266/ENTITY) in Synapse. You can generate a metadata template using the app -- note that the template will change depending on your data type. 

## Generate a template for an existing manifest

1. Navigate to the Data Ingress App and log in to Synapse if prompted.
2. Go to "Select Your Dataset" in the sidebar navigation of the app. 
3. Select your Project (if you have more than one) from the dropdown.
4. Select your Folder from the dropdown. Dataset folders you have access to will be loaded automatically. 
5. Select the template for your dataset. All RFC-defined data types are available.
6. Navigate to the "*Get Metadata Template*" section in the left-hand menu. Select the "*Click to Generate Google Sheets Template*" button. 
7. Click on the generated link to open the template on the web. 

## Generate an empty template
1. create an empty dataset folder in your Synapse Project
2. Navigate to the Data Ingress App and log in to Synapse if prompted.
3. Go to "Select Your Dataset" in the sidebar navigation of the app. 
4. Select your Project (if you have more than one) from the dropdown.
5. Select your Folder from the dropdown. Make sure that you select the empty dataset folder that you created. 
6. Select the template for your dataset. All RFC-defined data types are available.
7. Navigate to the "*Get Metadata Template*" section in the left-hand menu. Select the "*Click to Generate Google Sheets Template*" button. 
8. Click on the generated link to open the template on the web. 

![data-curator-request-metadata-template](https://user-images.githubusercontent.com/12868382/85980436-3fcfba80-b997-11ea-9bfe-470886e5de84.png)

For a detailed step-by-step on how to generate your metadata for the first time or for how to update existing metadata, please refer to the following pages:

[Go to Detailed Generating Metadata Template Steps](curate-metadata-first-time){: .btn }

[Go to Updating Existing Metadata Steps](update-existing-metadata){: .btn }

We are working on providing: 
   
   1. A Python package for programmatic metadata upload and management; 
   and 
   2. An API for programmatic metadata upload and management. 
   
   These will be available in the next release of the DCC data pipeline. Please check with your [DCC liaison](dcc-liaison) on details.

