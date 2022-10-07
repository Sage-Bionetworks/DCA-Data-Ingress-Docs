---
layout: default
title: Update Existing Metadata
parent: Step 2 - Request a Metadata Template
nav_order: 2
---

# Update Existing Metadata

#### Pre-requisites
- You are a [certified user on Synapse](https://docs.synapse.org/articles/accounts_certified_users_and_profile_validation.html#certified-users)
- You have [transferred your dataset to the DCC](uploading-data)

## Step-by-Step

Now you'd like to update your metadata in order to:
   
   * correct mistake(s) 
   * provide further/change metadata to comply with a new iteration of the DCC data model affecting your datasets' metadata
   * provide metadata for files that have been added to your dataset


_In this how-to, we'll be using an example `clinical` dataset named `Clinical Family History` located in a Synapse Project called `HTAN HCA immune cells census`. This is a dataset that's been annotated previously._

<b> Before you start: </b>
   * Please make sure that you get your existing metadata first and update it with any additional changes.
   * You can reuse existing templates as long as your dataset hasn't changed (i.e. files haven't been deleted or added). You could validate and submit without regenerating your templates every time. 
   * If files were deleted, please ensure that the templates don't contain the records associated with these files.

<b> To update your metadata: </b>

1. Access the [Data Curator app](https://www.synapse.org/#!Wiki:syn20681266/ENTITY)
    - If you are prompted to login to Synapse, please use your Synapse account (or associated Google account).
    
  
2. In the app, go to the "**Select Your Dataset**" section in the left-hand menu. From that page, select your project from the dropdown. 
    - The project name corresponds to the bucket name (here `HTAN HCA immune cells census`).  

   ![htan-app-update-existing-metadata-clinical](https://user-images.githubusercontent.com/12868382/86082412-87644e00-ba4c-11ea-873c-758b0956e337.png)
    
3. Next, select your dataset, which corresponds to the folder name in your bucket (here `Clinical_FamilyHistory`).

   ![htan-app-update-existing-metadata-clinical](https://user-images.githubusercontent.com/12868382/86082412-87644e00-ba4c-11ea-873c-758b0956e337.png)

4. Then, select the metadata template you would like to use (here `Clinical Tier 1 - FamilyHistory`). If you don't see the correct template for your dataset, you can select the "Minimal Metadata" template and [contact your DCC liaison](step-1).

   ![htan-app-update-metadata-clinical-dataset-selection](https://user-images.githubusercontent.com/12868382/86082551-e75af480-ba4c-11ea-811d-b4a9b7827156.png)

5. Once you have selected your dataset and metadata template, navigate to the "*Get Metadata Template*" section in the left-hand menu. Select the "*Click to Generate Google Sheets Template*" button. 
    - This will generate a link to a Google spreadsheet containing an empty template for you to complete with metadata, for each of the files in your dataset. This can take awhile depending on how many files are in your folder, so please be patient!

   ![htan-app-generate-link-clinical](https://user-images.githubusercontent.com/12868382/86082710-44ef4100-ba4d-11ea-8559-50b4e5327360.png)


6. Clicking on the generated template link will open up the template in Google Sheets.

   ![htan-app-generated-link-clinical](https://user-images.githubusercontent.com/12868382/86082720-4ae52200-ba4d-11ea-8990-96d9413c10e4.png)


7. All previously validated metadata is available.
      ![htan-app-previous-metadata](https://user-images.githubusercontent.com/12868382/86082779-76680c80-ba4d-11ea-9b49-2cb309bfc07a.png)

8. Add a new row (in this case, a participant), but it can be other new information. 
   ![clinical-metadata-htan-app-add-new-row](https://user-images.githubusercontent.com/12868382/86083506-4faad580-ba4f-11ea-8ce5-cd06866d53c9.png)

    - _**Note**: you can also save the spreadsheet as a CSV file and use a method of your choice to fill it out. The metadata CSV will be validated by the Data Curator app before submission regardless of the method used to fill out the template._

9. Once you've filled in the template, you can save your spreadsheet as a CSV (File -> Download -> Comma-separated Values...)
   ![clinical-metadata-htan-app-download](https://user-images.githubusercontent.com/12868382/86083592-94367100-ba4f-11ea-9f08-c99014465729.png)

10. Next, go gack to the [Data Curator App](https://www.synapse.org/#!Wiki:syn20681266/ENTITY) and navigate to the "Submit & Validate Metadata" step in the left-hand sidebar. Click on the "Browse" button to upload your saved CSV. 
   ![clinical-metadata-htan-app-upload](https://user-images.githubusercontent.com/12868382/86083464-2db15300-ba4f-11ea-8be2-e5ef62d478cc.png)

11. Check the preview of your file to make sure everything looks correct. 
   ![clinical-metadata-htan-app-preview](https://user-images.githubusercontent.com/12868382/86083455-2ab66280-ba4f-11ea-9fd1-669dcda0c5ac.png)

12. Validate your CSV by clicking the "**Validate Metadata**" button. 
   ![clinical-metadata-htan-app-validate](https://user-images.githubusercontent.com/12868382/86083465-2db15300-ba4f-11ea-9ff2-c1e41b9c2b69.png)

13. Once validated, you can submit.
   ![clinical-metadata-htan-app-validated](https://user-images.githubusercontent.com/12868382/86083466-2e49e980-ba4f-11ea-85ff-518a2b3174c5.png)


14. Click on the "**Submit to Synapse**" button.
   ![clinical-metadata-htan-app-submit-to-synapse](https://user-images.githubusercontent.com/12868382/86083457-2b4ef900-ba4f-11ea-99b6-e1dcdf47d9ef.png)


15. Success! 
   
      ![clinical-metadata-htan-app-success](https://user-images.githubusercontent.com/12868382/86083460-2be78f80-ba4f-11ea-8795-38094b2365e4.png)


16. Check your metadata on Synapse. A link to where your metadata file lives is generated by the Data Curator App upon successful submission of your metadata. 

17. See your metadata in a table. You can also see your metadata in a table by navigating to the `Tables` tab of your project. There would be a table with your dataset name which you can query and view.
   ![clinical-metadata-htan-app-table](https://user-images.githubusercontent.com/12868382/86083461-2c802600-ba4f-11ea-9a24-7ee5703a5bf7.png)



**Please contact your [DCC liaison](dcc-liaison) if you cannot resolve a metadata error or have questions regarding metadata updates and submission.**

