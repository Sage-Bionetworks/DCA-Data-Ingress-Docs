---
layout: default
title: Uploading Data Using the Programmatic Interface (Python)
parent: Uploading Data
grand_parent: Step 1 - Upload Your Data to Synapse
nav_order: 2
---


Synapse data upload via a programmatic client
This option would typically be most suitable for upload of files residing on a cloud or your local machine; and in case of uploading large-number and/or large-size files.

You can modify the Python code vignette below for your particular dataset upload. For equivalent functionality in R or CLI, please refer to the Synapse documentation [here](https://docs.synapse.org/articles/getting_started_clients.html). 

To get started, first install the Synapse Python client:

```
pip install synapseclient
```

- To upload a dataset from a local folder to a Synapse storage location, you can modify the script below

```python
# the python Synapse client module
import synapseclient

# Synapse will organize your data files in a folder within project
# these are the corresponding Synapse modules
from synapseclient import Project, Folder, File

# Log in to synapse
syn = synapseclient.Synapse()

syn.login('my_username', 'my_password')

# Name and create the folder that will store your dataset; 
# you can use a name representative for your particular dataset, e.g. hta-x-dataset
# for the parent parameter, please enter the synapse project ID provided by your DCC liaison
data_folder = Folder('hta-x-dataset', parent='syn123')

# create the folder on Synapse
data_folder = syn.store(data_folder)

# point to files you'd like to upload in your dataset; note that the description field is optional
# the code below would upload two files to your folder, feel free to create a loop for more files
test_entity = File('/path/to/data/file1.txt', description='file 1', parent=data_folder)
test_entity = syn.store(test_entity)

test_entity = File('/path/to/data/file1.txt', description='file 2', parent=data_folder)
test_entity = syn.store(test_entity)
```