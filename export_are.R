library(vitals)
library(readr)
library(dplyr)

are %>%
  mutate(
    # Converte coluna list para character separado por vírgula
    knowledge = sapply(knowledge, paste, collapse = ", "),
    # Garante que todas as colunas character estão em UTF-8
    across(where(is.character), ~ iconv(., to = "UTF-8", sub = "byte"))
  ) %>%
  write_csv2(                                    # write_csv2 usa ; como separador por padrão
    "C:/Users/digeo/Downloads/are_dataset.csv",
    na = "",                                     # NA vira célula vazia em vez de "NA"
    quote = "all"                                # coloca aspas em todos os campos de texto
  )

message("✅  Arquivo salvo em C:/Users/digeo/Downloads/are_dataset.csv")