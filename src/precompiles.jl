using SnoopPrecompile

let
    gallery_path = normpath(joinpath(dirname(pathof(AlgebraOfGraphics)), "..", "docs", "gallery", "gallery"))
    @precompile_all_calls begin
        include(joinpath(gallery_path, "basic visualizations", "lines_and_markers.jl"))
        
        include(joinpath(gallery_path, "layout", "faceting.jl"))
        include(joinpath(gallery_path, "layout", "nested_layouts.jl"))

        include(joinpath(gallery_path, "data manipulations", "new_columns_on_the_fly.jl"))
        include(joinpath(gallery_path, "data manipulations", "pre_grouped_data.jl"))
        include(joinpath(gallery_path, "data manipulations", "wide_data.jl"))

        include(joinpath(gallery_path, "scales", "continuous_scales.jl"))
        include(joinpath(gallery_path, "scales", "custom_scales.jl"))
        include(joinpath(gallery_path, "scales", "legend_merging.jl"))
        include(joinpath(gallery_path, "scales", "multiple_color_scales.jl"))
        include(joinpath(gallery_path, "scales", "prescaled_data.jl"))
        # empty!(FONT_CACHE)
        # empty!(_default_font)
        # empty!(_alternative_fonts)
    end
    nothing
end