#  Load the Library

library(dplyr)
library(tidyverse)
library(Seurat)
library(SeuratObject)

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


