library(quarto)
library(knitr)

# To add a chapter to the book, or shuffle the order of chapters, first render the single chapter, then render the entire book (after updating the .yml file)

# Render all
# Need to delete caches and files for the following qmd files before rendering
#  - CollateData
#  - TemporalResolution
#  - PASTA
quarto::quarto_render(output_format = "html")

# Render single chapter only
quarto::quarto_render("index.qmd", 
                      cache_refresh = TRUE, 
                      output_format = "html")

quarto::quarto_render("GatherFlowClimateData.qmd", 
                      cache_refresh = TRUE, # default is FALSE
                      output_format = "html")

quarto::quarto_render("SpaceTimeVar.qmd", 
                      #cache_refresh = TRUE, # default is FALSE
                      output_format = "html")

quarto::quarto_render("VarByClimate.qmd", 
                      #cache_refresh = TRUE, # default is FALSE
                      output_format = "html")

quarto::quarto_render("ReferenceLowFlow.qmd", 
                      cache_refresh = TRUE, # default is FALSE
                      output_format = "html")

quarto::quarto_render("ModeledQ_StreamStats.qmd", 
                      #cache_refresh = TRUE, # default is FALSE
                      output_format = "html")



