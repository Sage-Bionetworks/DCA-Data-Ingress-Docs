---
layout: default
title: Uploading Data
parent: Step 1 - Upload Your Data to Synapse 
nav_order: 2
has_children: true
---

# Uploading Data

Centers may use a hierarchical file structure within their cloud storage location. However, each root (top-level) folder and all of its subfolders **must** contain data of the same type (see details below). This will help separate datasets and make annotating metadata with the data curator app easier for users. 

## Top Level Folder Names
Top level folders correspond to the assay and level metadata you will be submitting. For example we have scRNAseq levels 1, 2, 3, 4 and in each RFC there is a corresponding attribute table that is converted into a schema and google spreadsheet for the Data Curator App. This means that there would be top level folders `single_cell_RNAseq_level_1`, `single_cell_RNAseq_level_1`, `single_cell_RNAseq_level_3`, and `single_cell_RNAseq_level_4`

```
 .
├── clinical_tier_1_diagnosis
├── clinical_tier_1_demographics
├── biospecimen_tier_1
│   ├── file1.txt
│   └── file2.txt
└── single_cell_RNAseq_level_1
    ├── fileA.fq
    └── fileB.fq

```
Your files should be reasonably descriptive in stating the assay type and level and in consistently prefixed with the assay type because they will appear on the Data Curator App in alphanumeric order. e.g. please preface all your clinical folders `clinical_tier_[n]_` so they will show up together instead of `diagnosis_clinical_[n]` and `demographics_clinical_[n]`

## Example Folder Hierarchy (optional)

Subfolders **must** be of the same data type and level as the root folder they are contained in. For example you can _not_ put a biospecimen Tier 1 and clinical demographics Tier 1 subfolder within the same folder. 
```
.
├── clinical_tier_1_diagnosis
├── clinical_tier_1_demographics
├── biospecimen_tier_1
│   ├── experiment_1
│   └── experiment_2
└── single_cell_level_1
    ├── batch_1
    └── batch_2
```

## Data Transfer Methods
To upload data to your DCC-designated storage location, please use the Synapse platform or `aws`/`gsutil` command-line tools.

Depending on dataset size and other preferences, you may utilize web-based or programmatic data upload interfaces. Some of the more typical options are described in the following sections, along with links to relevant documentation for more detail and the typical usecase for each. 



[Go to Web Upload Instructions](web-upload){: .btn }

[Go to Programmatic Upload Instructions (Python)](programmatic-upload){: .btn }

