1. Access the [Data Curator]({{ site.aux_links["Data Curator"][0] }}){:target="_blank"}.
    - If you are prompted to login to Synapse, please use your Synapse account (or associated Google account).
  
2. Navigate to the "**Select your Dataset**" section in the left-hand menu of the Data Curator. From that page, select your Synapse project from the dropdown (here, `CenterA`). 
{%- if site.toggles.custom_cloud_storage == true -%}
    - The project name corresponds to the bucket name.
{% endif %}    

    [![Data Curator Select Project](images/screenshots/curator-select-none.png){:.screenshot}](images/screenshots/curator-select-none.png)
    
3. Select your dataset, which corresponds to the folder name in your bucket (here, `CohortN - DatasetX`).

    [![Data Curator Select Folder](images/screenshots/curator-select-dataset.png){:.screenshot}](images/screenshots/curator-select-dataset.png)

4. Select the metadata template you would like to use (here, `Assay: Bulk RNA-seq`). If you don't see the correct template for your dataset, you can select the `Minimal Metadata` template and [contact your DCC liaison](step-1).

    [![Data Curator Select Data Type](images/screenshots/curator-select-type-2.png){:.screenshot}](images/screenshots/curator-select-type-2.png)

5. Navigate to the "**Get Metadata Template**" section in the left-hand menu, and select the "**Click to Generate Google Sheets Template**" button. 
    - This can take awhile depending on how many files are in your folder, so please be patient!

    [![Data Curator Google Sheets Link Button](images/screenshots/curator-link-before.png){:.screenshot}](images/screenshots/curator-link-before.png)

    <!-- [![Data Curator Google Sheets Link Generation](images/screenshots/curator-link-during.png){:.screenshot}](images/screenshots/curator-link-during.png) -->
