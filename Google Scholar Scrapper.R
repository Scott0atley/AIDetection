

library(rvest)
library(xml2)
library(selectr)
library(stringr)
library(jsonlite)

### Citing the source I got original scraping code from: https://stackoverflow.com/questions/58191002/is-it-possible-to-scrape-all-google-scholar-results-on-a-particular-topic-and-is

url_name <- 'https://scholar.google.com/scholar?start=0&q=%22As+an+AI+language+model%22+-ChatGPT&hl=en&as_sdt=0,5&as_ylo=2022&as_yhi=2024'
wp <- xml2::read_html(url_name)
# Extract raw data
titles <- rvest::html_text(rvest::html_nodes(wp, '.gs_rt'))
authors_years <- rvest::html_text(rvest::html_nodes(wp, '.gs_a'))
# Process data
authors <- gsub('^(.*?)\\W+-\\W+.*', '\\1', authors_years, perl = TRUE)
years <- gsub('^.*(\\d{4}).*', '\\1', authors_years, perl = TRUE)
# Make data frame
df <- data.frame(titles = titles, authors = authors, years = years, stringsAsFactors = FALSE)

# Print or further process final_df as needed
print(df)

url_name <- 'https://scholar.google.com/scholar?start=10&q=%22As+an+AI+language+model%22+-ChatGPT&hl=en&as_sdt=0,5&as_ylo=2022&as_yhi=2024'
wp <- xml2::read_html(url_name)
# Extract raw data
titles <- rvest::html_text(rvest::html_nodes(wp, '.gs_rt'))
authors_years <- rvest::html_text(rvest::html_nodes(wp, '.gs_a'))
# Process data
authors <- gsub('^(.*?)\\W+-\\W+.*', '\\1', authors_years, perl = TRUE)
years <- gsub('^.*(\\d{4}).*', '\\1', authors_years, perl = TRUE)
# Make data frame
df2 <- data.frame(titles = titles, authors = authors, years = years, stringsAsFactors = FALSE)

# Print or further process final_df as needed
print(df2)

url_name <- 'https://scholar.google.com/scholar?start=20&q=%22As+an+AI+language+model%22+-ChatGPT&hl=en&as_sdt=0,5&as_ylo=2022&as_yhi=2024'
wp <- xml2::read_html(url_name)
# Extract raw data
titles <- rvest::html_text(rvest::html_nodes(wp, '.gs_rt'))
authors_years <- rvest::html_text(rvest::html_nodes(wp, '.gs_a'))
# Process data
authors <- gsub('^(.*?)\\W+-\\W+.*', '\\1', authors_years, perl = TRUE)
years <- gsub('^.*(\\d{4}).*', '\\1', authors_years, perl = TRUE)
# Make data frame
df3 <- data.frame(titles = titles, authors = authors, years = years, stringsAsFactors = FALSE)

url_name <- 'https://scholar.google.com/scholar?start=30&q=%22As+an+AI+language+model%22+-ChatGPT&hl=en&as_sdt=0,5&as_ylo=2022&as_yhi=2024'
wp <- xml2::read_html(url_name)
# Extract raw data
titles <- rvest::html_text(rvest::html_nodes(wp, '.gs_rt'))
authors_years <- rvest::html_text(rvest::html_nodes(wp, '.gs_a'))
# Process data
authors <- gsub('^(.*?)\\W+-\\W+.*', '\\1', authors_years, perl = TRUE)
years <- gsub('^.*(\\d{4}).*', '\\1', authors_years, perl = TRUE)
# Make data frame
df4 <- data.frame(titles = titles, authors = authors, years = years, stringsAsFactors = FALSE)

url_name <- 'https://scholar.google.com/scholar?start=40&q=%22As+an+AI+language+model%22+-ChatGPT&hl=en&as_sdt=0,5&as_ylo=2022&as_yhi=2024'
wp <- xml2::read_html(url_name)
# Extract raw data
titles <- rvest::html_text(rvest::html_nodes(wp, '.gs_rt'))
authors_years <- rvest::html_text(rvest::html_nodes(wp, '.gs_a'))
# Process data
authors <- gsub('^(.*?)\\W+-\\W+.*', '\\1', authors_years, perl = TRUE)
years <- gsub('^.*(\\d{4}).*', '\\1', authors_years, perl = TRUE)
# Make data frame
df5 <- data.frame(titles = titles, authors = authors, years = years, stringsAsFactors = FALSE)

url_name <- 'https://scholar.google.com/scholar?start=50&q=%22As+an+AI+language+model%22+-ChatGPT&hl=en&as_sdt=0,5&as_ylo=2022&as_yhi=2024'
wp <- xml2::read_html(url_name)
# Extract raw data
titles <- rvest::html_text(rvest::html_nodes(wp, '.gs_rt'))
authors_years <- rvest::html_text(rvest::html_nodes(wp, '.gs_a'))
# Process data
authors <- gsub('^(.*?)\\W+-\\W+.*', '\\1', authors_years, perl = TRUE)
years <- gsub('^.*(\\d{4}).*', '\\1', authors_years, perl = TRUE)
# Make data frame
df6 <- data.frame(titles = titles, authors = authors, years = years, stringsAsFactors = FALSE)

url_name <- 'https://scholar.google.com/scholar?start=60&q=%22As+an+AI+language+model%22+-ChatGPT&hl=en&as_sdt=0,5&as_ylo=2022&as_yhi=2024'
wp <- xml2::read_html(url_name)
# Extract raw data
titles <- rvest::html_text(rvest::html_nodes(wp, '.gs_rt'))
authors_years <- rvest::html_text(rvest::html_nodes(wp, '.gs_a'))
# Process data
authors <- gsub('^(.*?)\\W+-\\W+.*', '\\1', authors_years, perl = TRUE)
years <- gsub('^.*(\\d{4}).*', '\\1', authors_years, perl = TRUE)
# Make data frame
df7 <- data.frame(titles = titles, authors = authors, years = years, stringsAsFactors = FALSE)

dfs <- list(df, df2, df3, df4, df5, df6, df7)

merged_df <- do.call(rbind, dfs)

manual_values <- c(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1)

merged_df$manual <- manual_values

write.csv(merged_df, "merged_dataframe.csv", row.names = FALSE)

