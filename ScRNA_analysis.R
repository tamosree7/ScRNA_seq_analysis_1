# Install the Packages

install.packages("dplyr")
install.packages("tidyverse")
install.packages("Seurat")
install.packages("SeuratObject")


# Load the Library

library(dplyr)
library(tidyverse)
library(Seurat)

# Read barcodes, features(genes), and matrix file.

NML_1 <- Read10X(data.dir = "../ScRNA-seq_analysis_1/GSE132771_RAW/NML1")
NML_2 <- Read10X(data.dir = "../ScRNA-seq_analysis_1/GSE132771_RAW/NML2")
NML_3 <- Read10X(data.dir = "../ScRNA-seq_analysis_1/GSE132771_RAW/NML3")

