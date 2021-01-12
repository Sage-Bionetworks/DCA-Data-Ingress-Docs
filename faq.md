---
layout: default
title: Frequently Asked Questions (FAQ)
nav_order: 5
---

## General

Q: What do we need to do to copy data to the DCC?

A: Contact your center liaison so we understand your specific needs, upload your release-ready data with a descriptive top-level folder name, and iteratively annotate and validate your data as new metadata standards are released by the working groups with the [Data Curator App](https://www.synapse.org/#!Wiki:syn20681266/ENTITY) or the API. Details on how to upload your data can be found in the [Step 1 - Upload Your Data](step-1) section of these docs. You must be a [certified user on Synapse](https://docs.synapse.org/articles/accounts_certified_users_and_profile_validation.html#certified-users) to be able to upload and annotate your data.     

<br/>

Q: Can we use a programmatic client?

A: Yes, please refer to the programmatic articles under the [Uploading Data](uploading-data) section in these docs.

<br/>

Q: Where will the data be stored and how will the DCC maintain security?

A: Follow the data storage protocols on the [Choose Your Cloud Storage Platform](choose-your-cloud-storage-platform) article, where we have options for storage on Synapse and other cloud services.  All data will be encrypted at rest and in transit. Strict access control mechanisms will be maintained by the DCC.

<br/>

Q: How can I manage permissions on uploaded data? (For example, permissions within HTAN before it is public.)

A: Each project will have a corresponding Synapse project that is private until otherwise specified. Projects, folders, and files can all have permissions set at different levels: none, can view, can download, and can edit — additional information can be found on each of these access types in the [Conditions for Use](https://docs.synapse.org/articles/access_controls.html) doc. [Synapse Teams](https://docs.synapse.org/articles/teams.html) will also be created for each center with the center liaison and assorted DCC members as the team manager(s). 

<br/>

Q: How do I become a Synapse certified user?

A: Guidance on becoming a certified user can be found [here](https://docs.synapse.org/articles/accounts_certified_users_and_profile_validation.html). **All data submitters must become certified users in order to upload data to Synapse.**

<br/>

Q: How can I flag specific datasets for public release?

A: Within the dataset folder on Synapse, click Folder Tools -> Folder Sharing -> Make Public. This will make all subfolders and files within the folder publicly available. This feature is also available on individual files up to entire projects. Another option is to create a ‘public release’ fileview that shows all files in a tabular, queryable way rather than in folders.

<br/>

Q: Who do I contact for support?

A: Reach out to your [center liaison](dcc-liaison). 

<br/>

Q: What is considered metadata?

A: Metadata describes data that will have to be submitted with the data to be validated. For example, tumor type, tumor location, etc. 

<br/>

Q: Is there a dictionary for the metadata where I can explore?

A:  You can reference the [HTAN Schema v12 Google Sheet](https://docs.google.com/spreadsheets/d/1tBK7lBcWU3FvdB2awtHLWbRuK6od3k4h60grDzydX8k/edit?usp=sharing) to explore the current metadata.

<br/>

Q:  Who is creating the data models?

A: A metadata model is currently being built as a collaborative effort involving members of the various [HTAN Working Groups](https://www.synapse.org/#!Synapse:syn17022193/wiki/585904) and will continue to evolve.  Existing standards will be leveraged where suitable, e.g. HCA schemas for scRNA, GDC schema for clinical data. Extensions will be made to existing standards to fulfill HTAN specific needs.

<br/>

Q: How often will data models be released?

A: Approximately once or twice a year, concurrent with the needs of data releases. 

<br/>

Q: How will spatial information be stored?

A: Working groups are currently working on trying to define standards, please contact [HTAN Working Groups](https://www.synapse.org/#!Synapse:syn17022193/wiki/585904) if you have any comments or concerns. 

<br/>

Q: Can we have an intermediate data storage bucket? 

A: Please contact your [DCC liaison](dcc-liaison) for consideration on a case by case basis. 

<br/>

Q: How can we use docker images/workflows/reproducible research practices? 

A: You can use Synapse's internal docker registry, or you can link to a docker registry of your preference. Additionally, we will provide tools for linking your workflow to data you have access to on Synapse.

<br/>

## Data Uploader

Q: How do I upload a \<dataset type> dataset?

A: Please follow the steps for for data upload: [Step 1 - Upload Your Data](step-1). Please note that you must be a [certified user on Synapse](https://docs.synapse.org/articles/accounts_certified_users_and_profile_validation.html#certified-users) otherwise you will not be able to submit your data nor metadata.

<br/>

Q: What format does my data need to be in for submission? E.g do I need to organize my \<dataset type> dataset in a specific file/folder hierarchy?

A: The topmost level folder needs to be descriptive because it will be used in the Data Ingress Service. Your data can be in any format or hierarchy under that folder. For additional details and examples, please see the [Organize Your Data Upload article](organize-your-data-upload).

<br/>

Q: What annotations/metadata should we include for a specific data type?

A: When you specify the dataset type (e.g. scRNASeq) to the programmatic client or the web based application, you will be provided with a spreadsheet and/or a web interface to fill in the required metadata/annotations. We are currently coordinating with the [HTAN Working Groups](https://www.synapse.org/#!Synapse:syn17022193/wiki/585904), as we prepare the relevant data models. 

<br/>

Q:  How can I update datasets and related metadata?

A:  You can use the programmatic or web interface to add files to a dataset, change metadata associated with files in a dataset, and mark files as obsolete. See the “Update existing metadata” section of the Data Ingress SOP. 

<br/>

Q: How can I give metadata  update access to someone else in my institute?

A: Contact your team manager to add users to your center’s Synapse Team.  

<br/>

Q: We have terabytes of imaging data. How long of an upload time should we expect? 

A: This depends on your internet bandwidth, where your data is located, your internet network, and more. If you are experiencing slow uploads or data bottlenecks, your DCC liaison is available to help optimize your specific use case.

<br/>

Q: How should I keep track of my tissue samples and associated data? Is there an identifier schema I need to follow?

A: Please follow the sample identifier standard operating procedure: [HTAN Identifiers SOP](https://bit.ly/htan_ids) and the [RFC HTAN Identifiers](https://docs.google.com/document/d/1K6jjWQdvtGRKUMmjC7jvt69hd3CbnSyryVWpNJVndDA/edit?pli=1#). 

Each HTAN entity will be uniquely identified by an HTAN identifier.

HTAN will support two formats for biological identifiers: one for research participants, and the other for biospecimens and data-files (both of which are considered derived entities).

Identifier formats are defined (using [Backus-Naur form](https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form)) as:

```
<participant_id>	::= <htan_center_id>_integer
<htan_center_id>	::= (see Table 1 in the HTAN Identifiers SOP)

<biospecimen_id>	::= <participant_id>_integer
<datafile_id>		::= <participant_id>_integer
```
for example:

```
Participant ID:  	HTA1_12
Biospecimen ID:  	HTA1_12_1
Data File ID: 		HTA1_12_3
```

By using the above schema, each atlas will be **responsible for creating and controlling identifiers within their namespace** (defined by each unique HTAN center ID prefix), and there will be **no central DCC-managed identifier-generation service**.


Note that identifiers must be unique, and must follow the specification described above.  No metadata should be “encoded” into the identifier -- any information that is important should be captured explicitly in the metadata submitted with each biospecimen and datafile.  If one or more necessary metadata fields were not identified in the original RFC process, they should be added in a subsequent iteration. 

In order to ensure uniqueness of HTAN identifiers within a multi-center collaboration, one viable approach is for each center to be assigned a “block” of identifiers -- for example, center #7 could be assigned all identifiers between `HTA13_2_7000` and `HTA13_2_7999`.  If that center requires additional identifiers, another block could be allocated, eg: `HTA13_2_17000` through `HTA13_2_17999`.

<br/>

Q: I noticed that the current metadata annotation does not include `X`. How can I request `X` to be included?

A: The [HTAN Working Groups](https://www.synapse.org/#!Synapse:syn17022193/wiki/585904) are the venue for discussing and defining metadata standards.  If you do not already have permissions in the spaces where members of the DCC and other working groups are active, there is also a [slack channel for HTAN](https://htanworkspace.slack.com/)  that you may request access to.  Feel free to contact your DCC liaison via email to request the addition of individual data elements or to set up a teleconference. 

<br/>

Q: Is there an API for submitting metadata?
A: Data submitters can use a python package to submit data via API. Documentation will be made available here in the near future. A web service API is also in development and more details will be available soon. 

<br/>

Q: Will the DCC rename files for each data release?

A: File display names will be renamed to maintain consistency within the data portal. These display names will appear in Synapse and the data portal, and will be reflected in downloaded files. The original filename will be preserved in your project’s cloud bucket. 

<br/>

Q: Should large imaging files be compressed?

A: Yes, please compress larger files. The DCC accepts most file compression types, though lossless compression formats such as LZW are preferred.

<br/>

## Data User

Q: When can we expect a public release of data?

A:  Late fall/early winter 2020, depending on data availability.
