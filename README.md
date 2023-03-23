# DL4Survival
Repository for the overview paper "Deep Learning for Survival Analysis: A Survey"

## Overview of DL-based Survival Methods
```r
install.packages("reactable")
```

```r
library(reactable)

rows <- 100000
dates <- seq.Date(as.Date("2018-01-01"), as.Date("2018-12-01"), "day")
data <- data.frame(
  index = seq_len(rows),
  date = sample(dates, rows, replace = TRUE),
  city = sample(names(precip), rows, replace = TRUE),
  state = sample(rownames(USArrests), rows, replace = TRUE),
  temp = round(runif(rows, 0, 100), 1),
  stringsAsFactors = FALSE
)

reactable(
  data,
  filterable = TRUE,
  searchable = TRUE,
  minRows = 10,
  highlight = TRUE,
  columns = list(
    state = colDef(
      html = TRUE,
      cell = JS('function(cell) {
        return `<a href="https://wikipedia.org/wiki/${cell.value}">${cell.value}</a>`
      }')
    )
  ),
  details = colDef(
    html = TRUE,
    details = JS("function(rowInfo) {
      return `Details for row: ${rowInfo.index}` +
        `<pre>${JSON.stringify(rowInfo.values, null, 2)}</pre>`
    }")
  )
)
```