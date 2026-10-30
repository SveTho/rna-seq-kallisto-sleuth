rule deconvolution:
    input:
        gene_counts="results/tables/tpm-matrix/{model}.tpm-matrix.sorted.tsv",
        ref="resources/celltype_references/{celltype_reference}.xCell2Ref.rda",
    output:
        heatmap="results/plots/deconvolute/{celltype_reference}.{model}.heatmap.pdf",
        decon_scores="results/tables/deconvolute/{celltype_reference}.{model}.decon_scores.tsv",
    log:
        "logs/tables/deconvolute/{celltype_reference}.{model}.log",
    conda:
        "../envs/deconvolute.yaml"
    script:
        "../scripts/deconvolute.R"
