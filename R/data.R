#' Power Functional Network Cortical Parcellation
#'
#' Brain atlas for the Power cortical parcellation with 129 regions
#' based on functional network organization of the human brain.
#' Contains 2D polygon geometry for [ggseg::geom_brain()].
#'
#' @family ggseg_atlases
#'
#' @references Power JD, Cohen AL, Nelson SM, Wig GS, Barnes KA,
#'   Church JA, Vogel AC, Laumann TO, Miezin FM, Schlaggar BL,
#'   Petersen SE (2011). Functional Network Organization of the Human
#'   Brain. *Neuron*, 72(4):665-678.
#'   \doi{10.1016/j.neuron.2011.09.006}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @import ggseg.formats
#' @export
#' @examples
#' power()
power <- function() .power
