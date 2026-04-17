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
  skip_existing = FALSE,
  cleanup = FALSE
) |>
  atlas_region_contextual("unknown|Unknown", "label")

power <- power |>
  atlas_region_rename(".", function(r) {
    sub("^[LR]H_region_", "", r)
  })

print(power)
plot(power)

.power <- power
usethis::use_data(.power, overwrite = TRUE, compress = "xz", internal = TRUE)
