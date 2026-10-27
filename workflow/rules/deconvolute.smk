rule deconvolution:
    input:
        gene_counts="results/tables/tpm-matrix/{model}.tpm-matrix.sorted.tsv",
        ref="resources/celltype_references/{celltype_reference}.xCell2Ref.rda",
        transcript_ref="resources/transcripts_annotation.results.tsv",
    output:
        heatmap="results/plots/deconvolute/{celltype_reference}.{model}.heatmap.tiff",
        decon_scores="results/tables/deconvolute/{celltype_reference}.{model}.decon_scores.tsv",
    log:
        "logs/tables/deconvolute/{celltype_reference}.{model}.log",
    conda:
        "../envs/deconvolute.yaml"
    script:
        "../scripts/deconvolute.R"
