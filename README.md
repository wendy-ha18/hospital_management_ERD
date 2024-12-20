# ERD for Hospital Management System

## Overview
In Healthcare System, the patient data acquired from diverse sources can be categorised as:
- Structured data such as patient's Electronic Health Records (EHR).
- Unstructured data such as biomedical images (including computed tomography (CT) imaging, magnetic resonance imaging (MRI), X-ray, molecular imaging, ultrasound, photo-acoustic imaging, functional MRI (fMRI), positron emission tomography (PET), electroencephalography (EEG), and mammograms)
- Semistructured data such as XML and JSON documents. 
These data will be stored in the target databases' raw data stores.
<br/><br/>

## Challenge in data standardisation
Current standards and technology are unable to meet the needs of the integrative applications of Big Data in healthcare (Mancini, 2014b; D.C. Mohr et al., 2013). This is because of two distinct issues. First, the data lack common standards and a consistent structure for describing them. Second, integrating diverse format of structured, semi-structured, and unstructured data is challenging. On the other hand, each database employs unique software and data formats making data comparison, analysis and sharing more challenging (Chawla & Davis, 2013).

In this document, the ERD below is developed as an alternative method for storing healthcare data in the form of a relational database that is compatible with Azure SQL Database.

## Entity Relational Diagram for Hospital Management System
- RDMS: MySQL Workbench
<br/><br/>
![hospital_management_erd](https://user-images.githubusercontent.com/90888090/187009977-2492a748-91b2-43e7-a7da-3d0dbf8a3f5e.png)
