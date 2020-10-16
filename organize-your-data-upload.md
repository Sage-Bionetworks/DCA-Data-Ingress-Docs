---
layout: default
title: Organize Your Data Upload
parent: Step 1 - Upload Your Data 
nav_order: 3
---

# Organize Your Data Upload

Centers may use a hierarchical file structure within their cloud storage location. However, each top-level folder (also referred to as the root folder) and all of its subfolders **must** contain data of the same type (see details below). This will make annotating metadata with the data curator app easier for users since one metadata template will be submitted for each folder.

 ## Top Level Folder Names

Top level folders correspond to the assay and level metadata you will be submitting. For example, we have `scRNAseq levels 1`, `2`, `3`, `4` and in each RFC the corresponding attribute table is converted into a schema and generates a  google spreadsheet for the Data Curator App. See below for examples. 

The DCC will create empty, common top-level folders for you to get started. 

### Hierarchical example

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

Your files should be reasonably descriptive in stating the assay type and level and be consistently prefixed with the assay type.

### Flattened example

```
 .
├── biospecimen_tier_1_experiment_1
├── biospecimen_tier_1_experiment_2
├── single_cell_level_1_batch_1
└── single_cell_level_1_batch_2
```

Note that this could create many top level folders, please see the [section below](#example-folder-hierarchy-optional) about subfolders.

In the [hierarchical case](#hierarchical-example), you would fill in one manifest including all files in experiment/batches; in the flattened case, you would fill in one manifest for each top level folder.

## Example Folder Hierarchy (optional)
Subfolders must be of the same data type and level as the root folder they are contained in. For example you can not put a `biospecimen Tier 1` and `clinical demographics Tier 1` subfolder within the same folder.

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