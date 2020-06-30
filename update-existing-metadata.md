---
layout: default
title: Update Existing Metadata
parent: Step 2 - Request a Metadata Template
nav_order: 2
---

## Update Existing Metadata

Use the <a href = "https://www.synapse.org/#!Wiki:syn20681266/ENTITY">Data Curator app</a> to update existing metadata
    
You have already transfered your dataset to the DCC, and have provided metadata successfully - congratulations! 
     
Now you'd like to update your metadata in order to :
   
   * correct mistake(s) 
   * provide further/change metadata to comply with a new iteration of the DCC data model affecting your datasets' metadata
   * provide metadata for files that have been added to your dataset
       
Access the <a href = "https://www.synapse.org/#!Wiki:syn20681266/ENTITY">Data Curator app</a>
  
If you are prompted to login to Synapse, please use your Synapse account (or associated Google account).

In the app, from the first tab, select your project (e.g. hta-x, corresponds to your bucket name if you have uploaded your dataset directly to a AWS or GC bucket); your dataset (e.g. hta-x-dataset, corresponds to a folder name in your bucket); and the metadata template you would like to use (e.g. scRNASeq if providing metadata for a scRNASeq dataset); if you don't see the correct template for your dataset, you can select the "Minimal Metadata" template and <i>contact your DCC liaison</i>.

![DataCurator project selection](https://github.com/Sage-Bionetworks/HTAN-data-pipeline/blob/dev/doc/img/data_curator_project_selection.png)  
  

Once you have selected your dataset and metadata template, navigate to the second tab "Get Metadata Template" and under "Have Previously Submitted Metadata?" click on 'Link to Google Sheets'. This will generate a link to a Google spreadsheet containing the metadata available for each of the files in your dataset.

![dataCurator MetadataTab](https://user-images.githubusercontent.com/15043209/66961248-10546a00-f023-11e9-8cc0-fd5e4f07dd08.png)
 
 ![Data Curator metadata update google sheets link](https://github.com/Sage-Bionetworks/HTAN-data-pipeline/blob/dev/doc/img/data_curator_metadata_update.png)

You can fill out the sheet on the web, using dropdowns with allowed values and other standard Google Sheet features.
 
![gtemplate Filled](https://user-images.githubusercontent.com/15043209/66962305-86f26700-f025-11e9-92dc-254a75ef41f9.png)

Note that you can also save the spreadsheet as a CSV file and use a method of your choice to fill it out. The metadata CSV will be validated by the Data Curator app before submission in any case.
  

Once updated, you can save your spreadsheet as a CSV (File -> Download -> Comma-separated Value...)
    
![gtemplate dlCSV](https://user-images.githubusercontent.com/15043209/66962318-8fe33880-f025-11e9-8426-4ce26de5a2c9.png)


Next: navigate to the third tab "Submit & Validate Metadata"

![dataCurator SubmitTab](https://user-images.githubusercontent.com/15043209/66962329-95d91980-f025-11e9-9fe4-7c44b0d13d42.png)


Upload your saved CSV.

![dataCurator UploadCSV](https://user-images.githubusercontent.com/15043209/66962344-9e315480-f025-11e9-9547-9d5ca3d713ca.png)


 * If upload was successful, you will see your  metadata entries in the Metadata Preview 

![dataCurator MetadataPreview](https://user-images.githubusercontent.com/15043209/66962357-a5586280-f025-11e9-8eb8-7acfc48a54ef.png)

Click "Validate Metadata"
   
 * If your metadata is valid, you will see a corresponding message and a "Submit" button will become available.
 
![dataCurator ValidateSuccess](https://user-images.githubusercontent.com/15043209/66962370-aab5ad00-f025-11e9-890b-8a2b3209c202.png)

* Clicking the "Submit" button confirms that this dataset has been curated according to the latest DCC  data model. You will receive a link to your metadata in the Synapse system.

![dataCurator SubmitSuccess](https://user-images.githubusercontent.com/15043209/66962379-b1442480-f025-11e9-9407-34dc6e33952d.png)


If your metadata has been validated and submitted successfully, your metadata will appear in the "Files and Metadata" Table in your Synapse Project.

![Filewview NewAnno](https://user-images.githubusercontent.com/15043209/66963842-98d60900-f029-11e9-83d9-cb81d0842624.png)



If you receive an error upon pressing the "Validate Metadata" button, the metadata template-cells causing the error will be highlighted, along with a corresponding list of error details
  
![dataCurator ValidateError](https://user-images.githubusercontent.com/15043209/66964059-4ea15780-f02a-11e9-96ad-cf7e236f0012.png)

* You can edit your file in a Google spreadsheet (click the link following the errors) and re-download it as a CSV or edit your CSV locally, as shown here on Excel.

![excel TemplateFixed](https://user-images.githubusercontent.com/15043209/66964181-bbb4ed00-f02a-11e9-95ef-2b8e8c3053fe.png)

* Upload your file and see your metadata updates reflected

![dataCurator UploadFixedFile](https://user-images.githubusercontent.com/15043209/66964212-d38c7100-f02a-11e9-9ce4-68bbac611bfc.png)

* Press the "Validate Metadata" button again

![dataCurator ValidateFixedFile](https://user-images.githubusercontent.com/15043209/66964227-e010c980-f02a-11e9-99f1-b7f06c42c3e5.png)

* If all errors have been resolved, you can submit your validated metadata

![dataCurator SubmitFixedFile](https://user-images.githubusercontent.com/15043209/66964257-f1f26c80-f02a-11e9-90d7-18f9459dab85.png)

* Please contact your DCC liaison if you cannot resolve a metadata error; or have questions regarding metadata updates and submission.

