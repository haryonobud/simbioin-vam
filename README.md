Simbioin

Simbioin is a locally deployed, web-based bioinformatics tool that runs entirely on the user’s own computer resources.
It is developed to make routine genomic analyses easier to run, without requiring users to directly interact with complex scripts or multi-layered software installations.

Although Simbioin uses a web-based interface, it does not require an internet connection and does not rely on external cloud services. All data and analyses remain within the local environment.

Purpose

Simbioin was developed as a personal effort to simplify and organize bioinformatics analysis workflows that are frequently used in day-to-day research.

In practice, genomic analyses are often performed using a combination of command-line tools, scripts, and software dependencies that can become difficult to manage over time. This can make analyses harder to repeat or reuse across different projects.

Simbioin is developed gradually, following practical needs that arise during research, with a primary focus on usability rather than feature completeness or performance optimization.

Overview

From a technical perspective, Simbioin:

Is deployed locally (self-hosted)

Uses FastAPI as the backend

Uses React as the frontend

Bundles commonly used bioinformatics tools, including:

PLINK

bcftools

vcftools

Simbioin does not replace these tools. Instead, it provides a simpler web-based interface to help run them in a more accessible way.

Available Features

At its current stage, Simbioin provides the following features:

Project-based organization of analyses

Upload and management of VCF files

Variant quality control (QC)

Variant filtering using common parameters

Conversion and analysis using PLINK

Population structure analysis (PCA)

Basic visualization of analysis results

Logging of analysis processes

These features reflect a basic analysis workflow commonly used in population genomics.

Installation

Simbioin is designed to be deployed using Docker in order to simplify installation and ensure a consistent environment.

A detailed installation guide, including system requirements and step-by-step instructions, is provided in the documentation.

Usage Guide

To help users get started, Simbioin includes demo data that can be used to explore the basic workflow.

A typical usage flow includes:

Uploading VCF files or using demo data

Running variant quality control (QC)

Applying variant filtering

Running analyses using PLINK

Performing PCA

Reviewing and interpreting the results

A detailed user manual with screenshots is provided separately.

Notes

Simbioin is still under active development and does not aim to cover all possible bioinformatics analysis needs.

Development is carried out incrementally, with a focus on stability and clarity of the existing features.

References

Simbioin builds upon widely used tools and libraries within the bioinformatics community, including:

PLINK

bcftools

vcftools

FastAPI

React

Additional scientific and technical references may be added as the project evolves.

Closing Remarks

Simbioin is developed as a practical tool to support everyday genomic analysis tasks.
If it proves useful to others with similar needs, that would be a welcome outcome.