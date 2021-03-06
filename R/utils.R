check_factor <- function(f) {
  if (is.character(f)) {
    f <- factor(f)
  } else if (is.factor(f)) {
    f
  } else {
    stop("`f` must be a factor (or character vector).", call. = FALSE)
  }
}

check_factor_list <- function(fs) {
  if (!is.list(fs)) {
    stop("`fs` must be a list", call. = FALSE)
  }

  is_factor <- vapply(fs, is.factor, logical(1))
  if (any(!is_factor)) {
    stop("All elements of `fs` must be factors", call. = FALSE)
  }

  fs
}

`%||%` <- function(a, b) {
  if (is.null(a)) b else a
}
