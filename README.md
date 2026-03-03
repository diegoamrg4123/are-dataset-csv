# ARE Dataset — An R Eval (CSV)

CSV export of the [`are`](https://tidyverse.github.io/vitals/reference/are.html) dataset from the [vitals](https://github.com/tidyverse/vitals) R package, originally created by [Simon P. Couch](https://simoncouch.com) at Posit.

The `are` dataset contains **29 challenging R coding problems** designed to benchmark LLMs on R code generation tasks. This repository makes it available in CSV format for use with Python, Julia, and other languages — without requiring R or the vitals package.

---

## Files

| File | Description |
|------|-------------|
| `are_dataset.csv` | The dataset in CSV format (`;` separator, UTF-8) |
| `export_are.R` | R script used to generate the CSV from the vitals package |

---

## Dataset columns

| Column | Type | Description |
|--------|------|-------------|
| `id` | string | Unique identifier for the problem |
| `input` | string | The R coding question |
| `target` | string | The expected solution / grading rubric |
| `domain` | string | Technical domain (e.g. Data Analysis, Programming) |
| `task` | string | Task type (e.g. Debugging, New code) |
| `source` | string | URL or origin of the problem |
| `knowledge` | string | Required R knowledge (comma-separated) |

---

## Usage

### Direct download

```python
import pandas as pd

url = "https://raw.githubusercontent.com/diegoamrg4123/are-dataset-csv/main/are_dataset.csv"
df = pd.read_csv(url, sep=";", encoding="utf-8")
df.head()
```

### R (original)
```r
# Install the vitals package directly instead
install.packages("pak")
pak::pak("tidyverse/vitals")
library(vitals)
are
```

---

## Origin & License

This dataset is derived from the [vitals](https://github.com/tidyverse/vitals) R package and is redistributed under the original **MIT License** — see [LICENSE](LICENSE).

Original dataset © 2025 vitals authors.
