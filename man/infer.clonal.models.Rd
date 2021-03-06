% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/clonevol.r
\name{infer.clonal.models}
\alias{infer.clonal.models}
\title{Infer clonal structures and evolution models for multiple samples}
\usage{
infer.clonal.models(c = NULL, variants = NULL,
  cluster.col.name = "cluster", founding.cluster = NULL,
  vaf.col.names = NULL, vaf.in.percent = TRUE, sample.names = NULL,
  model = "monoclonal", subclonal.test = "none", boot = NULL,
  num.boots = 1000, p.value.cutoff = 0.05, min.cluster.vaf = 0)
}
\arguments{
\item{c:}{clonality analysis data frame, consisting of N+1 columns. The first
column must be named 'cluster' and hold variant cluster number (ie. use number
to name cluster, starting from 1,2,3... 0 is reserved for normal cell clone).
The next N columns contain VAF estimated for the corresponding cluster
(values range from 0 to 0.5)}

\item{model:}{cancer evolution model to use, c('monoclonal', 'polyclonal').
monoclonal model assumes the orginal tumor (eg. primary tumor) arises from
a single normal cell; polyclonal model assumes the original tumor can arise
from multiple cells (ie. multiple founding clones). In the polyclonal model,
the total VAF of the separate founding clones must not exceed 0.5}

\item{subclonal.test.method:}{'bootstrap' = perform bootstrap subclonal test
'none' = straight comparison of already estimated VAF for each cluster
provided in c}
}
\description{
Infer clonal structures and evolution models for multi cancer
samples from a single patients (eg. primary tumors, metastatic tumors,
xenograft tumors, multi-region samples, etc.)
}

