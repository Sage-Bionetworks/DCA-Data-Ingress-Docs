---
layout: default
title: Contact Your DCC Liaison
parent: Step 1 - Upload Your Data
nav_order: 1
---

# Contact Your DCC Liaison

Before uploading any data to Synapse, the very first step is to contact your DCC liaison. If you're not sure who your DCC liaison is, you can use the DCC Liaison table (below) to find them.

![dcc-liaison-contacts](images/email.png){: .email-image}

When you reach out to your DCC liaison, let them know the following:

{% for requirement in site.custom.email_requirements %}
- {{ requirement }}
{%- endfor -%}
{%- if site.toggles.custom_cloud_storage == true -%}
- [Your desired cloud storage (AWS or GCS)](choose-your-cloud-storage-platform)
{% endif %}

Here's an email template that you can fill out and send:

> Hello DCC Liaison,

> {{ site.custom.email_template }}

{% if site.toggles.custom_cloud_storage == true %}
> We'd like to use `AWS/GCP` as our cloud storage option. 
{% endif %}

> My team members that will be assisting in this process will be:
> - **Team member #1:** `<full name>`, `<email>`, `<Synapse username>`
> - **Team member #2:** `<full name>`, `<email>`, `<Synapse username>`
> - **Team member #3:** `<full name>`, `<email>`, `<Synapse username>`

With the above information, the DCC will initialize your Synapse project and storage location. Once your Synapse project has been initialized, your DCC liaison will reach out to you with the location of your Synapse project and you can begin uploading your data.
