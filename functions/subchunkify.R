# http://michaeljw.com/blog/post/subchunkify/

# function to assign different sizes to figures generated from a loop in RMarkdown

# g: the plot object


subchunkify <- function(g, fig_height = 7, fig_width = 5) {
  
  g_deparsed <- paste0(deparse(
    function() {g}
  ), collapse = '')
  
  sub_chunk <- paste0("```{r sub_chunk_", floor(runif(1) * 10000), ", fig.height=", fig_height, ", fig.width=", fig_width, "}",
                      "\n(", 
                      g_deparsed
                      , ")()",
                      "\n`","``")
  
  cat(knitr::knit(text = knitr::knit_expand(text = sub_chunk), quiet = TRUE))
}