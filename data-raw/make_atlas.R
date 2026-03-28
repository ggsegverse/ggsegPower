library(ggseg.extra)
library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")

annot_files <- file.path(
  here::here("data-raw", "fsaverage5"),
  c("lh.power.annot", "rh.power.annot")
)

power <- create_cortical_from_annotation(
  input_annot = annot_files,
  atlas_name = "power",
  output_dir = "data-raw",
  skip_existing = TRUE,
  cleanup = FALSE
) |>
  atlas_region_contextual("unknown|Unknown", "label")

print(power)
plot(power)

.power <- power
usethis::use_data(.power, overwrite = TRUE, compress = "xz", internal = TRUE)
