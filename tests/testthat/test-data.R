describe("power atlas", {
  it("is a ggseg_atlas", {
    expect_s3_class(power(), "ggseg_atlas")
    expect_s3_class(power(), "cortical_atlas")
  })

  it("is valid", {
    expect_true(ggseg.formats::is_ggseg_atlas(power()))
  })

  it("renders with ggseg", {
    vdiffr::expect_doppelganger(
      "power-2d",
      ggseg::brain_test_plot(power())
    )
  })

  it("renders with ggseg3d", {
    skip_if_not_installed("ggseg.meshes")
    p <- ggseg3d::ggseg3d(atlas = power())
    expect_s3_class(p, c("plotly", "htmlwidget"))
  })
})
