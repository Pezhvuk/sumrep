
## Usage
### Data structures
Most functions to retrieve and compare distributions between repertoires expect `data.table` objects as input.
For example, the `data` folder contains an annotations dataset (obtained via `getPartisAnnotations("data/test_data.fa") %$% annotations %>% fwrite("data/test_annotations.csv")`.
We can read this in as a `data.table` as follows:
```
dat <- data.table::fread("data/test_annotations.csv")
```
The specific column names and definitions are laid out in the [extended documention](extended_documentation.md).

There are many other helper functions which take other types of data structures as input.
These are of course available to the user but are not as polished or standardized.
For example, the `getDistanceMatrix` function returns the pairwise distance matrix of a `list` or `vector` of input sequences.
This object may be of auxiliary interest to the user but is not directly useful for plotting or comparison functions within the package.


### Retrieving distributions
Functions for retrieving distributions are generally of the form `getXDistribution`.
For example, the pairwise distance distribution of `dat` can be obtained via
```
pairwise_distances <- getPairwiseDistanceDistribution(dat)
```
This returns a vector of pairwise distances rather than a matrix, which is more practical for plotting and comparison.
This function will by default compute this distribution on the `sequence` column.
To specify a different, column, say the `junction` column, if present, you would instead want:
```
junction_pairwise_distances <- getPairwiseDistanceDistribution(dat, column="junction")
```
Column defaults are chosen to agree with the [AIRR standard](http://docs.airr-community.org/en/latest/datarep/rearrangements.html#fields), but can be manually set via the `column` argument to many of these functions.
A complete table of available summary functions can be found in the [extended documentation](extended_documentation.md).

### Comparing distributions
Functions to compare distributions of two annotations datasets, say `dat_a` and `dat_b`, are in general of the form `compareXDistributions`, and expect two `data.tables` as input.
For example, to compare the pairwise distance distributions of `dat_a` and `dat_b`, we would have
```
divergence <- comparePairwiseDistanceDistributions(dat_a, dat_b)
```
In this case, the output is the scalar JS-divergence between the pairwise distance distributions of the two distributions.

### Running a full comparison
The function `compareRepertoires` performs the full suite of summary comparisons between two repertoires.
The main inputs of this function, `repertoire_1` and `repertoire_2` are `list`s, rather than `data.table`s.
These lists should include an `annotations` field corresponding to the annotations `data.table` objects discussed above, and optionally a `mutation_rates` field, which is described below.
For example, the following would do the trick:
```
repertoire_a <- list(annotations=dat_a)
repertoire_b <- list(annotations=dat_b)
compareRepertoires(repertoire_a, repertoire_b)
```
This would perform every comparison sans `comparePerGeneMutationRates` and `comparePerGenePerPositionMutationRates`.
Note that by default `getPartisAnnotations` and `getIgBlastAnnotations` return lists of this sort, although only `getPartisAnnotations` includes the `mutation_rates` object.

The `mutation_rates` object should be equivalent to a data structure returned by `getMutationInfo`, which is called within `getPartisAnnotations`.
This structure includes a field for each gene name (e.g. `` `IGHD2-21\*01` ``), which then includes subfields `overall_mut_rate` and `mut_rate_by_position`.

### Examples
The `Examples` folder includes two scripts that demonstrate basic `sumrep` usage.

* `ExampleComparisonUsingPartis.R` shows how to obtain `partis` annotations and parameters from `sumrep`; how to simulate from these parameters using `partis` from `sumrep`; and how to compare these observed and simulated annotations datasets with the `compareRepertoires` function.

* `ExampleComparisonWithoutPartis.R` loads pre-computed annotations, so that `partis` need not be installed, and shows how to compare these observed and simulated annotations datasets with the `compareRepertoires` function.

