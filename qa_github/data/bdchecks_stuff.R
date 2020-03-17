
dc

data.checks@dc_body$validation_taxon_empty@name

data.checks@dc_body[1]@name

t <- unlist(data.checks@dc_body[1])


dc_names <- as.factor(names(data.checks@dc_body))

result <- bdchecks::perform_dc(gbif_10k_latest, wanted_dc = dc_names[47])
warnings()
summary_dc(result)
summary_dc(result, fancy = TRUE, filtering_dt = TRUE)

FALSEdc_df <- get(parse(text = paste0("data.checks@dc_body$", dc_names[5], "@name" )))

data.checks@dc_body$validation_taxon_empty@name
is(result)

install() # To have new check in `system.file("extdata/data_check.yaml")`
data.checks <- bdchecks:::datacheck_info_export() # export documentation and combines new check with old ones
use_data(data_taxonrank, data.checks, data_bats, overwrite = TRUE, internal = TRUE) # exports old (and new data checks)
document() # document new check to `Rd`
install() # install package with a new check

perform_test_dc()

data.checks@dc_body$dc_names[[1]]

dc_names$
for (slot in slotNames(data.checks@dc_body$validation_taxon_empty)) {
  cat(slot, ":\n")
  print(slot(data.checks@dc_body$validation_taxon_empty, slot))
}

getSlots(t)

test <- list(str(data.checks))
data.checks[1,]

unique(data.checks@dc_body)

bdchecks::data.checks@dc_body

remotes::install_github("moodymudskipper/funflow")
funflow::view_flow(bdchecks::perform_dc)
