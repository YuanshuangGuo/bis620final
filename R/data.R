#' adae
#'
#' @format ## `adae`
#' A data frame with 3211 rows and 7 columns:
#' "SUBJID"  "AEPT"    "AESOC"   "AESTDYI" "AEENDYI" "AESEVCD" "AECONT"
#' \describe{
#'   \item{SUBJID}{subject ID}
#'   \item{AEPT}{AEPT}
#'   \item{AESEVCD}{severity code}
#' }
"adae"

#' adlb
#'
#' @format ## `adlb`
#' A data frame with 125123 rows and 7 columns:
#' "SUBJID"   "LBTEST"   "LBBASE"   "LBSTRESN" "LBSTUNIT" "VISITDY"  "VISIT"
#' \describe{
#'   \item{SUBJID}{subject ID}
#'   \item{VISITDY}{visit day}
#' }
"adlb"

#' adls
#'
#' A dataset containing information related to visit and lesion.
#'
#' @format ## `adls`
#' A data frame with 29118 rows and 11 columns:
#' "SUBJID"   "VISITDY"  "VISIT"    "LSCAT"    "LSNEW"    "LSSLD"    "LSLD"
#' "LSSITE"   "LSNEWANY" "LSREADER" "LSTYPE"
#' \describe{
#'   \item{SUBJID}{subject ID}
#' }
"adls"

#' adpm
#'
#' A dataset containing information related to visit day and weight.
#'
#' @format ## `adpm`
#' A data frame with 14924 rows and 4 columns:
#' "SUBJID"  "VISIT"   "VISITDY" "WEIGHT"
#' \describe{
#'   \item{SUBJID}{subject ID}
#' }
"adpm"

#' adrsp
#'
#' A dataset containing information related to visit.
#'
#' @format ## `adrsp`
#' A data frame with 10856 rows and 9 columns:
#' "SUBJID"   "RSRESP"   "VISITDY"  "VISIT"    "RSCONFYN"
#' "RSTRESP"  "RSNTRESP" "RSNEW"    "RSREADER"
#' \describe{
#'   \item{SUBJID}{subject ID}
#' }
"adrsp"

#' adsl
#'
#' A dataset containing information related to death and treatment/control.
#'
#' @format ## `adsl`
#' A data frame with 935 rows and 19 columns:
#' "SUBJID"   "TRT"      "ATRT"     "PRSURG"   "DTHDY"    "DTH"
#' "PFSDYCR"  "PFSCR"    "LIVERMET"  "DIAGMONS" "AGE"      "SEX"
#' "B_WEIGHT" "B_HEIGHT" "RACE"     "B_ECOG"   "HISSUBTY" "B_METANM" "DIAGTYPE"
#' \describe{
#'   \item{SUBJID}{subject ID}
#' }
"adsl"

#' biomark
#'
#' A dataset containing information related to biomarker.
#'
#' @format ## `biomark`
#' A data frame with 935 rows and 19 columns:
#' "SUBJID"   "BMMTNM1"  "BMMTR1"   "BMMTNM2"  "BMMTR2"   "BMMTNM3"  "BMMTR3"
#' "BMMTNM4"  "BMMTR4"  "BMMTNM5"  "BMMTR5"   "BMMTNM6"  "BMMTR6"   "BMMTNM7"
#' "BMMTR7"   "BMMTNM15" "BMMTR15"  "BMMTNM16"  "BMMTR16"
#' \describe{
#'   \item{SUBJID}{subject ID}
#' }
"biomark"

#' demo
#'
#' @format ## `demo`
#' A data frame with 935 rows and 19 columns:
#' "SUBJID"       "TRT"          "ATRT"         "PRSURG"       "DTHDY"        "DTH"
#' "PFSDYCR"      "PFSCR"        "LIVERMET"     "DIAGMONS"     "AGE"          "SEX"
#' "B_WEIGHT"     "B_HEIGHT"     "RACE"         "B_ECOG"       "HISSUBTY"     "B_METANM"
#' "DIAGTYPE"     "BMMTNM1"      "BMMTR1"       "BMMTNM2"      "BMMTR2"       "BMMTNM3"
#' "BMMTR3"       "BMMTNM4"      "BMMTR4"       "BMMTNM5"      "BMMTR5"       "BMMTNM6"
#' "BMMTR6"       "BMMTNM7"      "BMMTR7"       "BMMTNM15"     "BMMTR15"      "BMMTNM16"
#' "BMMTR16"      "marker"       "marker_treat"
#' \describe{
#'   \item{SUBJID}{subject ID}
#' }
"demo"


