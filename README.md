# Simbioin

**A containerized platform for reproducible bioinformatics analysis**

Simbioin is a web-based platform that bundles standard bioinformatics tools
into reproducible, Docker-based pipelines. It enables researchers and students
to perform local sequencing data analysis without complex software installation.

---

## Simbioin-WGS Pipeline Overview

Simbioin-WGS implements a standardized whole-genome sequencing analysis pipeline
that transforms raw sequencing reads into population-level genetic insights
using widely adopted and reproducible bioinformatics tools.

### Quality Control (fastp)

Quality control is a critical first step to assess sequencing performance and
remove technical artifacts. Simbioin uses **fastp** to evaluate read quality,
duplication levels, and base composition before downstream analysis.

### Read Mapping (bowtie2)

High-quality reads are aligned to a reference genome using **bowtie2**.
Accurate read mapping ensures reliable variant detection and downstream
genotype inference.

### Variant Calling (samtools & bcftools)

Aligned reads are processed to identify single nucleotide polymorphisms and
small variants. This step converts read-level information into variant-level
data represented in VCF format.

### Variant Filtering

Raw variants are filtered using quality and depth thresholds to reduce false
positives. This step ensures that only reliable variants are carried forward
for population-level analysis.

### Population Genetics Analysis (PLINK)

Filtered variants are analyzed using **PLINK** to derive population-level
genetic insights, including allele frequencies, heterozygosity, and
genotype-based statistics.

---

## Technology and Design

Simbioin is designed as a modular and reproducible bioinformatics platform,
combining a web-based interface with containerized execution to enable local
analysis without complex software installation.

### System Architecture Overview

#### Frontend  
**User Interface**

A web-based interface that allows users to configure analyses, monitor
execution, and explore results interactively.

**Technology:** React

#### Backend  
**API & Orchestration**

Handles job submission, pipeline orchestration, and communication between the
user interface and analysis containers.

**Technology:** FastAPI + Uvicorn

#### Execution Layer  
**Analysis Environment**

Bioinformatics tools are executed inside Docker containers, ensuring consistent
environments across different machines.

**Technology:** Docker

---

### Design Principles

**Containerized and Reproducible**  
All bioinformatics tools and their dependencies are bundled into Docker
containers, ensuring reproducible results across operating systems and
hardware environments.

**Local-first Execution**  
Simbioin runs entirely on local machines, allowing users to retain full
control over their data without relying on cloud infrastructure.

**Modular and Extensible**  
The platform is designed to support multiple analysis modules, such as
whole-genome sequencing and metagenomics, with minimal changes to the core
infrastructure.

**Designed for Low-resource Settings**  
By leveraging lightweight tools and containerization, Simbioin is suitable
for laboratories and educational environments with limited computational
resources.

---

## Installation and Usage

Simbioin is designed to run entirely on local machines using Docker, allowing
users to perform bioinformatics analyses without manual installation of
individual software dependencies.

### System Requirements

Simbioin can be executed on standard desktop or laptop computers.
The minimum recommended system requirements are:

- Operating system: Linux, macOS, or Windows  
- Docker installed  
- Minimum 8 GB RAM  
  (suitable for small datasets; reference genome indexing and whole-genome
  analyses on larger datasets may require higher memory capacity)
- Sufficient disk space for sequencing data

### Install Docker

Docker is required to run Simbioin in a reproducible and platform-independent
environment. Users should install Docker according to their operating system
using the official Docker documentation:

- Windows: https://docs.docker.com/desktop/install/windows-install/  
- macOS: https://docs.docker.com/desktop/install/mac-install/  
- Linux: https://docs.docker.com/engine/install/  

After installation, Docker allows Simbioin to execute all bundled
bioinformatics tools without additional software configuration.


### Download Simbioin

Simbioin is distributed as modular analysis packages, each targeting a specific
type of sequencing analysis. The currently available package is
**Simbioin-WGS**, which can be accessed via the following GitHub repository:

https://github.com/haryonobud/simbioin-wgs

Users can download Simbioin using one of the following methods:

- **Direct download**  
  Open the GitHub repository, click the **Code** button, and select
  **Download ZIP**. Extract the archive to a local directory.

- **Command-line download**  
  Clone the repository using Git:
  ```bash
  git clone https://github.com/haryonobud/simbioin-wgs.git

### Run and Stop Simbioin

Before starting Simbioin, ensure that Docker Desktop is running on your
system. This applies to Windows, Linux, and macOS environments.

Windows
Navigate to the Simbioin directory and double-click start.bat.
A command prompt window will open and display execution instructions.

Linux / macOS
Open a terminal, navigate to the Simbioin directory, and run:

./start.sh


If execution fails, ensure the script is executable:

chmod +x start.sh

During the first execution, the startup process may take longer as Docker
images are downloaded automatically. Once the services are running, open a
web browser and access:

"http://localhost:8000"


The application is running correctly when the interface displays a
Docker connected status indicator at the bottom of the page.

To stop Simbioin, click the Shutdown button within the web interface.
Alternatively, users may stop the services by executing stop.bat (Windows)
or stop.sh (Linux/macOS).

Detailed usage instructions and advanced configuration options will be
provided in the documentation:

https://simbioin.com/docs/usage

---

Feedback and Collaboration

Simbioin is an evolving research-oriented platform. Feedback, suggestions, and
collaborative opportunities from researchers, educators, and developers are
highly welcome.

If you are interested in contributing ideas, collaborating on research, or
discussing potential applications, please feel free to get in touch via
email:

📧 hary@simbioin.com