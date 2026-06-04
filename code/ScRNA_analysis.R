# Install the Packages

install.packages("dplyr")
install.packages("tidyverse")
install.packages("Seurat")
install.packages("SeuratObject")


# Load the Library

library(dplyr)
library(tidyverse)
library(Seurat)
library(SeuratObject)


# Read barcodes, features(genes), and matrix file.

NML_1 <- Read10X(data.dir = "../ScRNA-seq_analysis_1/GSE132771_RAW/NML1")
NML_2 <- Read10X(data.dir = "../ScRNA-seq_analysis_1/GSE132771_RAW/NML2")
NML_3 <- Read10X(data.dir = "../ScRNA-seq_analysis_1/GSE132771_RAW/NML3")
NML_1

# Create seurat objects

NML_1 <- CreateSeuratObject(counts = NML_1, project = "NML_1", min.cells = 3, min.features = 200)
class(NML_1)
NML_2 <- CreateSeuratObject(counts = NML_2, project = "NML_2", min.cells = 3, min.features = 200)
class(NML_2)
NML_3 <- CreateSeuratObject(counts = NML_3, project = "NML_3", min.cells = 3, min.features = 200)
class(NML_3)
# View seurat object.

NML_1
colnames(NML_1[])
rownames(NML_1[])
view(NML_1)
head(NML_1)
view(NML_1@meta.data)

# Save seurat object

saveRDS(NML_1, file = "../ScRNA-seq_analysis_1/data/NML_1.RDS")
saveRDS(NML_2, file = "../ScRNA-seq_analysis_1/data/NML_2.RDS")
saveRDS(NML_3, file = "../ScRNA-seq_analysis_1/data/NML_3.RDS")

# Read seurat object

NML_1 <- readRDS("../ScRNA-seq_analysis_1/data/NML_1.RDS")
NML_2 <- readRDS("../ScRNA-seq_analysis_1/data/NML_2.RDS")
NML_3 <- readRDS("../ScRNA-seq_analysis_1/data/NML_3.RDS")


NML_1
NML_2
NML_3

# Merge seurat object



mergedNML <- merge(NML_1, y= c(NML_2,NML_3),
                  add.cell.ids = ls()[1:3],
                  Project = "mergedNML")

ls()

mergedNML

view(mergedNML@meta.data)

# save merged seurat objects

saveRDS(mergedNML, file = "../ScRNA-seq_analysis_1/data/mergedNML.RDS")




