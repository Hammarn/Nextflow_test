#!/usr/bin/env nextflow
/*
vim: syntax=groovy
-*- mode: groovy;-*-
*/

params.genome = false
params.star_index = params.genome ? params.genomes[ params.genome ].star ?: false : false
params.fasta = params.genome ? params.genomes[ params.genome ].fasta ?: false : false
params.gtf = params.genome ? params.genomes[ params.genome ].gtf ?: false : false
params.bed12 = params.genome ? params.genomes[ params.genome ].bed12 ?: false : false

log.info "====="
log.info "Testing"
log.info "====="
log.info params.bed12
log.info params.gtf
log.info params.star_index
process toy{

    """
    echo ${params.bed12} ${params.star_index}
    """

}
